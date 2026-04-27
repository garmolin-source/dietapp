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

  const supported = typeof window !== 'undefined' &&
    ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window)

  const stop = useCallback(() => {
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
    recognition.continuous = false  // auto-stops on silence

    recognition.onresult = (event: any) => {
      let interim = ''
      let final = ''
      for (let i = event.resultIndex; i < event.results.length; i++) {
        const result = event.results[i]
        if (result.isFinal) {
          final += result[0].transcript
        } else {
          interim += result[0].transcript
        }
      }
      if (final) {
        setTranscript(prev => (prev + ' ' + final).trim())
        setInterimTranscript('')
      } else {
        setInterimTranscript(interim)
      }
    }

    recognition.onend = () => {
      setInterimTranscript('')
      setState(prev => {
        if (prev === 'listening') {
          // trigger callback with final transcript
          setTranscript(t => {
            if (t.trim() && onFinalTranscript) {
              onFinalTranscript(t.trim())
            }
            return t
          })
          return 'processing'
        }
        return prev
      })
    }

    recognition.onerror = (event: any) => {
      if (event.error === 'no-speech') {
        setError('לא זוהה קול. נסה שוב.')
      } else if (event.error === 'not-allowed') {
        setError('גישה למיקרופון נדחתה. אפשר גישה בהגדרות הדפדפן.')
      } else {
        setError('שגיאה בזיהוי קול: ' + event.error)
      }
      setState('error')
    }

    recognition.start()
  }, [supported, lang, onFinalTranscript])

  const reset = useCallback(() => {
    stop()
    setTranscript('')
    setInterimTranscript('')
    setError(null)
    setState('idle')
  }, [stop])

  // cleanup on unmount
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
