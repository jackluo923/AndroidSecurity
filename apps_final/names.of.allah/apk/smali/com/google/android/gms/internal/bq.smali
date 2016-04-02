.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/br$a;


# instance fields
.field private final kz:Lcom/google/android/gms/internal/bu;

.field private final lf:Lcom/google/android/gms/internal/aj;

.field private final lq:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final nA:Ljava/lang/String;

.field private final nB:J

.field private final nC:Lcom/google/android/gms/internal/bm;

.field private final nD:Lcom/google/android/gms/internal/am;

.field private final nE:Lcom/google/android/gms/internal/ew;

.field private nF:Lcom/google/android/gms/internal/bv;

.field private nG:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/ew;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->mContext:Landroid/content/Context;

    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/bq;->b(Lcom/google/android/gms/internal/bm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->kz:Lcom/google/android/gms/internal/bu;

    iget-wide v0, p4, Lcom/google/android/gms/internal/bn;->nq:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p4, Lcom/google/android/gms/internal/bn;->nq:J

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/bq;->nB:J

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iput-object p6, p0, Lcom/google/android/gms/internal/bq;->lf:Lcom/google/android/gms/internal/aj;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->nD:Lcom/google/android/gms/internal/am;

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->nE:Lcom/google/android/gms/internal/ew;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/bv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    return-object v0
.end method

.method private a(JJJJ)V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/bq;->b(JJJJ)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/bp;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nE:Lcom/google/android/gms/internal/ew;

    iget v0, v0, Lcom/google/android/gms/internal/ew;->sv:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nD:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->lf:Lcom/google/android/gms/internal/aj;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v3, v3, Lcom/google/android/gms/internal/bm;->no:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->nD:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq;->lf:Lcom/google/android/gms/internal/aj;

    iget-object v4, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->no:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bq;->g(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nD:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->lf:Lcom/google/android/gms/internal/aj;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v3, v3, Lcom/google/android/gms/internal/bm;->no:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->ni:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->nD:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq;->lf:Lcom/google/android/gms/internal/aj;

    iget-object v4, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->no:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v5, v5, Lcom/google/android/gms/internal/bm;->ni:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bq;->a(Lcom/google/android/gms/internal/bp;)V

    return-void
.end method

.method private aK()Lcom/google/android/gms/internal/bv;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiating mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->kz:Lcom/google/android/gms/internal/bu;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bu;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/bv;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bq;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    return v0
.end method

.method private b(Lcom/google/android/gms/internal/bm;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/bm;->nm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/bm;->nm:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/gms/internal/bq;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Could not create custom event adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    goto :goto_0
.end method

.method private b(JJJJ)V
    .locals 7

    const-wide/16 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p1

    sub-long v2, p3, v2

    sub-long/2addr v0, p5

    sub-long v0, p7, v0

    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    cmp-long v4, v0, v5

    if-gtz v4, :cond_1

    :cond_0
    const-string v0, "Timed out waiting for adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bq;)Lcom/google/android/gms/internal/bv;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bq;->aK()Lcom/google/android/gms/internal/bv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bq;)Lcom/google/android/gms/internal/bv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    return-object v0
.end method


# virtual methods
.method public final b(JJ)Lcom/google/android/gms/internal/br;
    .locals 11

    iget-object v9, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v10, Lcom/google/android/gms/internal/bp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/bp;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/bq$1;

    invoke-direct {v3, p0, v10}, Lcom/google/android/gms/internal/bq$1;-><init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/bq;->nB:J

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/bq;->a(JJJJ)V

    new-instance v0, Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->nC:Lcom/google/android/gms/internal/bm;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    iget-object v3, p0, Lcom/google/android/gms/internal/bq;->nA:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/bq;->nG:I

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bv;Ljava/lang/String;Lcom/google/android/gms/internal/bp;I)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public final cancel()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->nF:Lcom/google/android/gms/internal/bv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/bq;->nG:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/bq;->nG:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->lq:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
