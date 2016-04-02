.class public Lcom/inmobi/commons/metric/Logger;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/inmobi/commons/metric/MetricConfigParams;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/inmobi/commons/metric/Storage;

.field private d:Lcom/inmobi/commons/metric/Queuer;

.field private e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    const v0, 0x7ffffffe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    new-instance v0, Lcom/inmobi/commons/metric/Queuer;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/Queuer;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Logger;->e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    new-instance v0, Lcom/inmobi/commons/metric/Storage;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/inmobi/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Storage$PreProcessor;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    const v0, 0x7ffffffe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    new-instance v0, Lcom/inmobi/commons/metric/Queuer;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/Queuer;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    iput-object v1, p0, Lcom/inmobi/commons/metric/Logger;->e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    new-instance v0, Lcom/inmobi/commons/metric/Storage;

    iget-object v3, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    iget-object v4, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;Lcom/inmobi/commons/metric/Storage$PreProcessor;)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/metric/Logger;)Lcom/inmobi/commons/metric/Storage;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->saveToLatest()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public logEvent(Lcom/inmobi/commons/metric/EventLog;)V
    .locals 6

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->readNumberOfEventsAndTimeStampFromPersistent()V

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0, p1}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->dataCollected(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/metric/Queuer;->log(Lcom/inmobi/commons/metric/EventLog;)V

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->d:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Queuer;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/MetricConfigParams;->getDumpThreshhold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->saveLocalCache()V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->getEvents()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/MetricConfigParams;->getMaxInQueue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Storage;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/MetricConfigParams;->getNextRetryInterval()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/commons/metric/Logger$a;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/metric/Logger$a;-><init>(Lcom/inmobi/commons/metric/Logger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method public setCallback(Lcom/inmobi/commons/metric/Logger$MetricsCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/inmobi/commons/metric/Logger;->e:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/metric/Storage;->setCallback(Lcom/inmobi/commons/metric/Logger$MetricsCallback;)V

    return-void
.end method

.method public setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    iget-object v0, p0, Lcom/inmobi/commons/metric/Logger;->c:Lcom/inmobi/commons/metric/Storage;

    iput-object p1, v0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    :cond_0
    return-void
.end method

.method public startNewSample()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/commons/metric/Logger;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v3}, Lcom/inmobi/commons/metric/MetricConfigParams;->getSamplingFactor()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Logger;->b:Ljava/lang/Integer;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
