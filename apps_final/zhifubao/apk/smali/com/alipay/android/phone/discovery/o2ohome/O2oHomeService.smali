.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "O2oHomeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public abstract refreshRedPointData()V
.end method

.method public abstract setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V
.end method

.method public abstract startShare(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
.end method
