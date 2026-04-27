'use client'

import { useState, useRef, useCallback, useEffect } from 'react'

export type VoiceState = 'idle' | 'listening' | 'done' | 'error'

interface UseVoiceInputOptions {
  lang?: string
}

export function useVoiceInput({ lang = 'he-IL' }: UseVoiceInputOptions = {}) {
  const [state, setState] = useState<VoiceState>('idle')
  const [transcript, setTranscript] = useState('')
  const [interimTranscript, setInterimTranscript] = useState('')
  const [error, setError] = useState<string | null>(null)

  const recognitionRef = useRef<any>(null)
  const finalRef = useRef('')      // finalized words
  const interimRef = useRef('')    // in-progress words
  const stoppedRef = useRef(false)

  const supported = typeof window !== 'undefined' &&
    ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window)

  const stop = useCallback(() => {
    stoppedRef.current = true
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

    finalRef.current = ''
    interimRef.current = ''
    stoppedRef.current = false
    setTranscript('')
    setInterimTranscript('')
    setError(null)
    setState('listening')

    const SR = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition
    const recognition = new SR()
    recognitionRef.current = recognition
    recognition.lang = lang
    recognition.interimResults = true
    recognition.maxAlternatives = 1
    recognition.continuous = true

    recognition.onresult = (event: any) => {
      let interim = ''
      for (let i = event.resultIndex; i < event.results.length; i++) {
        const r = event.results[i]
        if (r.isFinal) {
          finalRef.current += r[0].transcript + ' '
        } else {
          interim += r[0].transcript
        }
      }
      interimRef.current = interim
      setTranscript(finalRef.current.trim())
      setInterimTranscript(interim)
    }

    recognition.onend = () => {
      setInterimTranscript('')
      if (stoppedRef.current) {
        // Combine final + any interim that wasn't finalized before stop
        const combined = (finalRef.current + ' ' + interimRef.current).trim()
        setTranscript(combined)
        setState('done')
      } else {
        // Browser ended on its own through a pause — restart to keep listening
        try { recognition.start() } catch {}
      }
    }

    recognition.onerror = (event: any) => {
      if (event.error === 'no-speech' || event.error === 'aborted') return
      if (event.error === 'not-allowed') {
        setError('גישה למיקרופון נדחתה. אפשר גישה בהגדרות הדפדפן.')
      } else {
        setError('שגיאה בזיהוי קול: ' + event.error)
      }
      setState('error')
    }

    recognition.start()
  }, [supported, lang])

  const reset = useCallback(() => {
    stoppedRef.current = true
    if (recognitionRef.current) recognitionRef.current.abort()
    finalRef.current = ''
    interimRef.current = ''
    setTranscript('')
    setInterimTranscript('')
    setError(null)
    setState('idle')
  }, [])

  useEffect(() => {
    return () => { if (recognitionRef.current) recognitionRef.current.abort() }
  }, [])

  return { state, transcript, interimTranscript, error, supported, start, stop, reset, setTranscript }
}
