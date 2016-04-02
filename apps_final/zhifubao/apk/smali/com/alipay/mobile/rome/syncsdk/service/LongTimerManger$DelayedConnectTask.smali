.class Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;
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
    .line 317
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "DelayedConnectTask: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->access$0(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "DelayedConnectTask: [ connManager=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method
