.class public Lcom/alipay/android/widgets/asset/AssetApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "AssetApp.java"


# static fields
.field public static final ASSET_ANALYZE_APPID:Ljava/lang/String; = "20000243"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetApp;->onStart()V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 27
    const-string/jumbo v0, "20000243"

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/AssetApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 29
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 32
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
