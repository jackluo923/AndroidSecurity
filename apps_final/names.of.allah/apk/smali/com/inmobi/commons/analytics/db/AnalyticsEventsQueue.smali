.class public Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
.super Ljava/util/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue; = null

.field private static final serialVersionUID:J = -0x11ede335fd646d66L


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    .locals 0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    return-void
.end method

.method private a(Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    .locals 0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
    .locals 2

    const-class v1, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized isEmpty()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processFunctions()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;-><init>(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
