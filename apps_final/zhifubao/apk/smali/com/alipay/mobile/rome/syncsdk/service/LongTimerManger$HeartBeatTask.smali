.class Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;
.super Ljava/lang/Object;
.source "LongTimerManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "HeartBeatTask: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->access$1(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "HeartBeatTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 358
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendHeartBeatPacket()V

    goto :goto_0
.end method
