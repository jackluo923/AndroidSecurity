.class public final Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;


# instance fields
.field private final ld:Lcom/google/android/gms/internal/z$a;

.field private final le:Ljava/lang/Runnable;

.field private lf:Lcom/google/android/gms/internal/aj;

.field private lg:Z

.field private lh:Z

.field private li:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/v;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/z$a;

    sget-object v1, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/z$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/z$a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/z$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->lh:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/z;->li:J

    iput-object p2, p0, Lcom/google/android/gms/internal/z;->ld:Lcom/google/android/gms/internal/z$a;

    new-instance v0, Lcom/google/android/gms/internal/z$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/z$1;-><init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/v;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->le:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/z;)Lcom/google/android/gms/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->lf:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/z;->lg:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aj;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    if-eqz v0, :cond_1

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/z;->lf:Lcom/google/android/gms/internal/aj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/z;->li:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/z;->lh:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling ad refresh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->ld:Lcom/google/android/gms/internal/z$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->le:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/z$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->ld:Lcom/google/android/gms/internal/z$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->le:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/z$a;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/aj;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/aj;J)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->lh:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->ld:Lcom/google/android/gms/internal/z$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->le:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/z$a;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/z;->lh:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/z;->lg:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/z;->lg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->lf:Lcom/google/android/gms/internal/aj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/z;->li:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/aj;J)V

    :cond_0
    return-void
.end method
