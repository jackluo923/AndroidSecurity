.class public Lcom/alipay/android/phone/messageboxapp/MsgboxApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "MsgboxApp.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/MsgboxApp;->a:Landroid/os/Bundle;

    .line 25
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/MsgboxApp;->a:Landroid/os/Bundle;

    .line 35
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/MsgboxApp;->onStart()V

    .line 36
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 41
    const-class v2, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 40
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0}, Lcom/alipay/android/phone/messageboxapp/MsgboxApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
