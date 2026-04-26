interface StarQuotaPanelProps {
  yellowUsed: number
  redUsed: number
  totalQuota: number
}

export default function StarQuotaPanel({ yellowUsed, redUsed, totalQuota }: StarQuotaPanelProps) {
  const yellowRounded = Math.round(yellowUsed * 10) / 10
  const redRounded = Math.round(redUsed * 10) / 10
  const totalUsed = Math.round((yellowRounded + redRounded) * 10) / 10
  const remaining = Math.max(0, Math.round((totalQuota - totalUsed) * 10) / 10)

  const yellowPct = totalQuota > 0 ? Math.min((yellowRounded / totalQuota) * 100, 100) : 0
  const redPct = totalQuota > 0 ? Math.min((redRounded / totalQuota) * 100, 100 - yellowPct) : 0

  const isOverTotal = totalUsed > totalQuota

  return (
    <div>
      <div className="flex justify-between items-center mb-2">
        <span className="text-sm font-medium text-foreground">סה״כ כוכבים</span>
        <span dir="ltr" className={`text-sm font-semibold tabular-nums ${isOverTotal ? 'text-orange-600' : 'text-primary'}`}>
          {totalUsed} / {totalQuota}
        </span>
      </div>

      <div className="h-3 rounded-full bg-muted overflow-hidden flex" dir="ltr">
        <div
          className="h-full bg-star-yellow transition-all duration-500"
          style={{ width: `${yellowPct}%` }}
        />
        <div
          className={`h-full transition-all duration-500 ${isOverTotal ? 'bg-orange-500' : 'bg-star-red'}`}
          style={{ width: `${redPct}%` }}
        />
      </div>

      <div className="flex gap-4 mt-2 text-xs text-muted-fg" dir="rtl">
        <span className="flex items-center gap-1">
          <span className="inline-block w-2 h-2 rounded-full bg-star-yellow flex-shrink-0" />
          {yellowRounded} צהוב
        </span>
        <span className="flex items-center gap-1">
          <span className="inline-block w-2 h-2 rounded-full bg-star-red flex-shrink-0" />
          {redRounded} אדום
        </span>
        {remaining > 0 && (
          <span className="flex items-center gap-1">
            <span className="inline-block w-2 h-2 rounded-full bg-border flex-shrink-0" />
            {remaining} נותר
          </span>
        )}
        {isOverTotal && (
          <span className="text-orange-600 font-medium">
            +{Math.round((totalUsed - totalQuota) * 10) / 10} חריגה
          </span>
        )}
      </div>
    </div>
  )
}
