.class public Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "MsgboxStaticApp.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;->a:Landroid/os/Bundle;

    .line 198
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;->a:Landroid/os/Bundle;

    .line 204
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
