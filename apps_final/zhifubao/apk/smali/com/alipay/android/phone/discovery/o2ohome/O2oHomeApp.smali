.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "O2oHomeApp.java"


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private invoke()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/Intent;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->bundle:Landroid/os/Bundle;

    .line 25
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->bundle:Landroid/os/Bundle;

    .line 35
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->invoke()V

    .line 36
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeApp;->invoke()V

    .line 30
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
