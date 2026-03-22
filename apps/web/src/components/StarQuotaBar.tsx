interface StarQuotaBarProps {
  type: 'total' | 'red'
  label: string
  used: number
  quota: number
}

export default function StarQuotaBar({ type, label, used, quota }: StarQuotaBarProps) {
  const percentage = quota > 0 ? Math.min((used / quota) * 100, 100) : 0
  const isOver = used > quota

  const barColor = type === 'total'
    ? (isOver ? 'bg-destructive' : 'bg-primary')
    : (isOver ? 'bg-destructive' : 'bg-star-red')

  const trackColor = type === 'total' ? 'bg-muted' : 'bg-red-100'
  const valueColor = isOver ? 'text-destructive' : (type === 'total' ? 'text-primary' : 'text-star-red')

  return (
    <div className="space-y-1.5">
      <div className="flex justify-between items-center">
        <span className="text-sm font-medium text-foreground">{label}</span>
        <span className={`text-sm font-semibold tabular-nums ${valueColor}`}>
          {used} / {quota}
        </span>
      </div>
      <div className={`h-2.5 rounded-full ${trackColor} overflow-hidden`}>
        <div
          className={`h-full rounded-full transition-all duration-500 ${barColor}`}
          style={{ width: `${percentage}%` }}
        />
      </div>
    </div>
  )
}
