.class Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;
.super Ljava/lang/Object;
.source "LongTimerManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->a:I

    .line 374
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    .line 375
    iput-wide p3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->b:J

    .line 376
    iput p5, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->a:I

    .line 377
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 382
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReplyCheckTask: [ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sendTimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v2

    .line 387
    if-nez v2, :cond_1

    .line 388
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "ReplyCheckTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string/jumbo v0, "typeHeartBeat"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastRecvHeartBeatTime()J

    move-result-wide v0

    .line 396
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v3

    .line 397
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->access$2(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V

    .line 396
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_1
    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->b:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 411
    const-string/jumbo v3, "sync_link_LongTimerManger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ReplyCheckTask: Reply check Timeout[ type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 412
    const-string/jumbo v5, " ][ sendTimeMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ lastTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 413
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    const-string/jumbo v1, "replyTimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " delay:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "spdy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    .line 427
    const-string/jumbo v1, "EXP_SPDY"

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 427
    invoke-static {v1, v3, v0, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 440
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 443
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->reconnect()V

    goto/16 :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 399
    :cond_2
    const-string/jumbo v0, "typeInit"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastRecvInitReplyTime()J

    move-result-wide v0

    .line 401
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v3

    .line 402
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->access$3(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V

    .line 401
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 405
    :cond_3
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReplyCheckTask: [ unknown type ][ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_4
    const-string/jumbo v1, "EXP_LL"

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 433
    invoke-static {v1, v3, v0, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method
