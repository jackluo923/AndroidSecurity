.class Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;
.super Ljava/lang/Object;
.source "TimerTaskServiceImpl.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mListener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mListener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method public setListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->mListener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    .line 50
    return-void
.end method
