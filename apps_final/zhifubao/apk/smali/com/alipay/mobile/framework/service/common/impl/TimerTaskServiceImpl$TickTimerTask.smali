.class Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;
.super Ljava/lang/Object;
.source "TimerTaskServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v2, v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v5, v5, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v4, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)V

    const-string/jumbo v0, "TimerTaskServiceImpl"

    invoke-virtual {v1, v4, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$2;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$2;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
