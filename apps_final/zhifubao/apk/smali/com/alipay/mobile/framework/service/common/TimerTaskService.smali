.class public abstract Lcom/alipay/mobile/framework/service/common/TimerTaskService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "TimerTaskService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public abstract registerListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;I)Z
.end method

.method public abstract registerListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;ILandroid/os/Handler;)Z
.end method

.method public abstract unregisterListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)Z
.end method
