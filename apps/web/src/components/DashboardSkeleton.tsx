export default function DashboardSkeleton() {
  return (
    <div className="space-y-4 animate-pulse" dir="rtl">
      {/* Date navigator */}
      <div className="bg-card rounded-2xl border-2 border-border shadow-card p-4 space-y-3">
        <div className="flex items-center justify-between">
          <div className="h-8 w-8 bg-muted rounded-xl" />
          <div className="h-5 bg-muted rounded w-40" />
          <div className="h-8 w-8 bg-muted rounded-xl" />
        </div>
        <div className="flex gap-1 justify-center">
          {[...Array(3)].map((_, i) => (
            <div key={i} className="h-8 w-16 bg-muted rounded-xl" />
          ))}
        </div>
      </div>

      {/* Star quota card */}
      <div className="bg-card rounded-2xl border-2 border-border shadow-card p-4 space-y-4">
        <div className="h-4 bg-muted rounded w-36" />
        <div className="space-y-2">
          <div className="flex justify-between">
            <div className="h-3 bg-muted rounded w-24" />
            <div className="h-3 bg-muted rounded w-12" />
          </div>
          <div className="h-2.5 bg-muted rounded-full" />
        </div>
        <div className="space-y-2">
          <div className="flex justify-between">
            <div className="h-3 bg-muted rounded w-32" />
            <div className="h-3 bg-muted rounded w-12" />
          </div>
          <div className="h-2.5 bg-muted rounded-full" />
        </div>
      </div>

      {/* Meal sections */}
      {[...Array(4)].map((_, i) => (
        <div key={i} className="bg-card rounded-2xl border-2 border-border shadow-card overflow-hidden">
          <div className="px-4 py-3 bg-party-header border-b-2 border-border">
            <div className="h-4 bg-secondary/60 rounded w-28" />
          </div>
          <div className="px-4 py-6 flex justify-center">
            <div className="h-3 bg-muted rounded w-40" />
          </div>
        </div>
      ))}
    </div>
  )
}
