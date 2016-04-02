.class final Lfr/castorflex/android/smoothprogressbar/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfr/castorflex/android/smoothprogressbar/i;


# direct methods
.method constructor <init>(Lfr/castorflex/android/smoothprogressbar/i;)V
    .locals 0

    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    const v1, 0x3c23d70a    # 0.01f

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v2}, Lfr/castorflex/android/smoothprogressbar/i;->a(Lfr/castorflex/android/smoothprogressbar/i;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/i;->a(Lfr/castorflex/android/smoothprogressbar/i;F)F

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v0}, Lfr/castorflex/android/smoothprogressbar/i;->b(Lfr/castorflex/android/smoothprogressbar/i;)F

    move-result v0

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/i;->c(Lfr/castorflex/android/smoothprogressbar/i;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v0}, Lfr/castorflex/android/smoothprogressbar/i;->d(Lfr/castorflex/android/smoothprogressbar/i;)Z

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/i;->c(Lfr/castorflex/android/smoothprogressbar/i;)F

    move-result v1

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/i;->b(Lfr/castorflex/android/smoothprogressbar/i;F)F

    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-static {v1}, Lfr/castorflex/android/smoothprogressbar/i;->e(Lfr/castorflex/android/smoothprogressbar/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lfr/castorflex/android/smoothprogressbar/i;->scheduleSelf(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/j;->a:Lfr/castorflex/android/smoothprogressbar/i;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method
