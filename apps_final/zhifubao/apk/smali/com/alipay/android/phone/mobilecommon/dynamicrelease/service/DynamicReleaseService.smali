.class public abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/service/DynamicReleaseService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "DynamicReleaseService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public abstract setRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract upgrade(Z)V
.end method
