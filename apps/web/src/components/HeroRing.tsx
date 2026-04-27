interface HeroRingProps {
  yellowUsed: number
  redUsed: number
  totalQuota: number
  redQuota: number
  size?: number
}

export default function HeroRing({
  yellowUsed, redUsed, totalQuota, redQuota, size = 200,
}: HeroRingProps) {
  const cx = size / 2
  const rOuter = size / 2 - 12
  const rInner = size / 2 - 32
  const circO = 2 * Math.PI * rOuter
  const circI = 2 * Math.PI * rInner

  const yRounded = Math.round(yellowUsed * 10) / 10
  const rRounded = Math.round(redUsed * 10) / 10
  const totalUsed = Math.round((yRounded + rRounded) * 10) / 10

  // Outer ring: two segments — yellow then red
  const yellowPct = Math.min(1, yRounded / totalQuota)
  const redPct    = Math.min(1 - yellowPct, rRounded / totalQuota)
  const pctI      = Math.min(1, rRounded / redQuota)

  const quotaLeft = Math.max(0, Math.round((totalQuota - totalUsed) * 10) / 10)

  return (
    <div className="relative inline-flex items-center justify-center">
      <svg width={size} height={size} viewBox={`0 0 ${size} ${size}`}>

        {/* ── Outer track (total quota) ── */}
        <g transform={`rotate(-90 ${cx} ${cx})`}>
          {/* Background track */}
          <circle cx={cx} cy={cx} r={rOuter} fill="none" stroke="#ecdcc8" strokeWidth="14" />

          {/* Red stars segment (drawn first so yellow overlaps at start) */}
          {redPct > 0 && (
            <circle
              cx={cx} cy={cx} r={rOuter} fill="none"
              stroke="#b14a33" strokeWidth="14"
              strokeLinecap="butt"
              strokeDasharray={`${circO * redPct} ${circO}`}
              strokeDashoffset={`${-circO * yellowPct}`}
            />
          )}

          {/* Yellow stars segment */}
          {yellowPct > 0 && (
            <circle
              cx={cx} cy={cx} r={rOuter} fill="none"
              stroke="#c89029" strokeWidth="14"
              strokeLinecap="round"
              strokeDasharray={`${circO * yellowPct} ${circO}`}
            />
          )}
        </g>

        {/* ── Inner track (carb/red quota) ── */}
        <g transform={`rotate(-90 ${cx} ${cx})`}>
          <circle cx={cx} cy={cx} r={rInner} fill="none" stroke="#f7d9cf" strokeWidth="10" />
          {pctI > 0 && (
            <circle
              cx={cx} cy={cx} r={rInner} fill="none"
              stroke="#b14a33" strokeWidth="10"
              strokeLinecap="round"
              strokeDasharray={`${circI * pctI} ${circI}`}
            />
          )}
        </g>
      </svg>

      {/* Center label */}
      <div className="absolute inset-0 flex flex-col items-center justify-center text-center pointer-events-none">
        <span className="text-xs font-semibold text-muted-fg tracking-wide">נותרו</span>
        <span
          className="font-bold leading-none mt-0.5 text-foreground"
          style={{ fontSize: size * 0.26, letterSpacing: -2 }}
        >
          {quotaLeft}
        </span>
        <span className="text-xs text-muted-fg font-semibold mt-1">
          מתוך {totalQuota}
        </span>
      </div>
    </div>
  )
}
