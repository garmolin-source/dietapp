'use client'

import { useState, useRef, useCallback, useEffect } from 'react'

export type VoiceState = 'idle' | 'listening' | 'processing' | 'done' | 'error'

interface UseVoiceInputOptions {
  lang?: string
  onFinalTranscript?: (transcript: string) => void
}

export function useVoiceInput({
  lang = 'he-IL',
  onFinalTranscript,
}: UseVoiceInputOptions = {}) {
  const [state, setState] = useState<VoiceState>('idle')
  const [transcript, setTranscript] = useState('')
  const [interimTranscript, setInterimTranscript] = useState('')
  const [error, setError] = useState<string | null>(null)
  const recognitionRef = useRef<any>(null)
  const finalTranscriptRef = useRef('')
  const stoppedByUserRef = useRef(false)

  const supported = typeof window !== 'undefined' &&
    ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window)

  const stop = useCallback(() => {
    stoppedByUserRef.current = true
    if (recognitionRef.current) {
      recognitionRef.current.stop()
    }
  }, [])

  const start = useCallback(() => {
    if (!supported) {
      setError('הדפדפן שלך לא תומך בזיהוי קול. נסה Chrome.')
      setState('error')
      return
    }

    finalTranscriptRef.current = ''
    stoppedByUserRef.current = false
    setTranscript('')
    setInterimTranscript('')
    setError(null)
    setState('listening')

    const SpeechRecognition = (window as any).SpeechRecognition ||
      (window as any).webkitSpeechRecognition
    const recognition = new SpeechRecognition()
    recognitionRef.current = recognition

    recognition.lang = lang
    recognition.interimResults = true
    recognition.maxAlternatives = 1
    recognition.continuous = true  // keep listening through pauses

    recognition.onresult = (event: any) => {
      let interim = ''
      for (let i = event.resultIndex; i < event.results.length; i++) {
        const result = event.results[i]
        if (result.isFinal) {
          finalTranscriptRef.current += result[0].transcript + ' '
          setTranscript(finalTranscriptRef.current.trim())
          setInterimTranscript('')
        } else {
          interim += result[0].transcript
        }
      }
      setInterimTranscript(interim)
    }

    recognition.onend = () => {
      setInterimTranscript('')
      // Only fire callback when user explicitly stopped
      if (stoppedByUserRef.current) {
        const final = finalTranscriptRef.current.trim()
        setState('processing')
        if (final && onFinalTranscript) {
          onFinalTranscript(final)
        }
      } else {
        // Browser ended on its own (e.g. network hiccup) — restart automatically
        if (recognitionRef.current && state !== 'idle') {
          try { recognition.start() } catch {}
        }
      }
    }

    recognition.onerror = (event: any) => {
      // Ignore no-speech — with continuous=true this just means a pause
      if (event.error === 'no-speech') return
      if (event.error === 'not-allowed') {
        setError('גישה למיקרופון נדחתה. אפשר גישה בהגדרות הדפדפן.')
        setState('error')
      } else if (event.error !== 'aborted') {
        setError('שגיאה בזיהוי קול: ' + event.error)
        setState('error')
      }
    }

    recognition.start()
  }, [supported, lang, onFinalTranscript])

  const reset = useCallback(() => {
    stoppedByUserRef.current = true
    if (recognitionRef.current) {
      recognitionRef.current.abort()
    }
    finalTranscriptRef.current = ''
    setTranscript('')
    setInterimTranscript('')
    setError(null)
    setState('idle')
  }, [])

  useEffect(() => {
    return () => {
      if (recognitionRef.current) {
        recognitionRef.current.abort()
      }
    }
  }, [])

  return {
    state,
    transcript,
    interimTranscript,
    displayText: interimTranscript || transcript,
    error,
    supported,
    start,
    stop,
    reset,
  }
}
