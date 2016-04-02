.class public abstract Lcom/alipay/mobile/rome/pushservice/PushSettingService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PushSettingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPushState()Ljava/lang/String;
.end method

.method public abstract setPushState(Ljava/lang/String;)V
.end method
