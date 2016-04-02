.class Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;
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
    .line 451
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 454
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "SpdyWaitCheckTask: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->access$4(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V

    .line 456
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "SpdyWaitCheckTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 469
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method
