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

  const totalUsed = Math.round((yellowUsed + redUsed) * 10) / 10
  const pctO = Math.min(1, totalUsed / totalQuota)
  const pctI = Math.min(1, redUsed / redQuota)
  const quotaLeft = Math.max(0, Math.round((totalQuota - totalUsed) * 10) / 10)

  const isOver = totalUsed > totalQuota

  return (
    <div className="relative inline-flex items-center justify-center">
      <svg width={size} height={size} viewBox={`0 0 ${size} ${size}`}>
        {/* Outer track (total) */}
        <g transform={`rotate(-90 ${cx} ${cx})`}>
          <circle cx={cx} cy={cx} r={rOuter} fill="none" stroke="#f7e4b6" strokeWidth="14" />
          <circle
            cx={cx} cy={cx} r={rOuter} fill="none"
            stroke={isOver ? '#b14a33' : '#c89029'} strokeWidth="14"
            strokeLinecap="round"
            strokeDasharray={`${circO * pctO} ${circO}`}
          />
        </g>
        {/* Inner track (carbs/red) */}
        <g transform={`rotate(-90 ${cx} ${cx})`}>
          <circle cx={cx} cy={cx} r={rInner} fill="none" stroke="#f7d9cf" strokeWidth="10" />
          <circle
            cx={cx} cy={cx} r={rInner} fill="none"
            stroke="#b14a33" strokeWidth="10"
            strokeLinecap="round"
            strokeDasharray={`${circI * pctI} ${circI}`}
          />
        </g>
      </svg>

      {/* Center label */}
      <div className="absolute inset-0 flex flex-col items-center justify-center text-center">
        <span className="text-xs font-semibold text-muted-fg tracking-wide">נותרו</span>
        <span
          className="font-bold leading-none mt-1"
          style={{ fontSize: size * 0.27, letterSpacing: -2 }}
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
