.class public Lcom/google/android/gms/internal/dp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ks:I

.field private final kt:I

.field protected final lL:Lcom/google/android/gms/internal/ey;

.field private final pI:Landroid/os/Handler;

.field private final pJ:J

.field private pK:J

.field private pL:Lcom/google/android/gms/internal/ez$a;

.field protected pM:Z

.field protected pN:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ez$a;Lcom/google/android/gms/internal/ey;II)V
    .locals 9

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/dp;-><init>(Lcom/google/android/gms/internal/ez$a;Lcom/google/android/gms/internal/ey;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ez$a;Lcom/google/android/gms/internal/ey;IIJJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/dp;->pJ:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/dp;->pK:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dp;->pI:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    iput-object p1, p0, Lcom/google/android/gms/internal/dp;->pL:Lcom/google/android/gms/internal/ez$a;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dp;->pM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dp;->pN:Z

    iput p4, p0, Lcom/google/android/gms/internal/dp;->kt:I

    iput p3, p0, Lcom/google/android/gms/internal/dp;->ks:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dp;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/dp;->ks:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dp;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/dp;->kt:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/dp;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/dp;->pK:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/dp;->pK:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/dp;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dp;->pK:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/ez$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->pL:Lcom/google/android/gms/internal/ez$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/dp;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dp;->pJ:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/dp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->pI:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/internal/fd;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v1, p1, Lcom/google/android/gms/internal/dv;->oy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v5

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/dv;->oy:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ep;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/dv;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/fd;

    iget-object v1, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v2, p1, Lcom/google/android/gms/internal/dv;->qk:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fd;-><init>(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/ey;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/dp;->a(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/internal/fd;)V

    return-void
.end method

.method public bj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->pI:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/internal/dp;->pJ:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized bk()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dp;->pM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bl()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dp;->pM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dp;->pN:Z

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dp;->bl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->pL:Lcom/google/android/gms/internal/ez$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ez$a;->a(Lcom/google/android/gms/internal/ey;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/dp$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/dp;->lL:Lcom/google/android/gms/internal/ey;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/dp$a;-><init>(Lcom/google/android/gms/internal/dp;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
