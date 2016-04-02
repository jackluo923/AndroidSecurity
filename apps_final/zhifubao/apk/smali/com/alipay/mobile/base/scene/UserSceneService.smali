.class public abstract Lcom/alipay/mobile/base/scene/UserSceneService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "UserSceneService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isThrottle()Z
.end method

.method public abstract preventThrottle(Z)V
.end method

.method public abstract processRpcControl(Ljava/lang/String;)V
.end method

.method public abstract setupRpcActiveScene()V
.end method
