.class public Lcom/ali/user/mobile/login/DefaultLoginCaller;
.super Ljava/lang/Object;
.source "DefaultLoginCaller.java"

# interfaces
.implements Lcom/ali/user/mobile/login/OnLoginCaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;->notifyPacelable(Landroid/os/Parcelable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public failLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;->notifyPacelable(Landroid/os/Parcelable;)V

    .line 43
    :cond_0
    return-void
.end method

.method public filterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 1

    .prologue
    .line 19
    if-eqz p2, :cond_0

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;->notifyPacelable(Landroid/os/Parcelable;)V

    .line 22
    :cond_0
    return-void
.end method

.method public isSaveHistory()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 1

    .prologue
    .line 26
    if-eqz p2, :cond_0

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;->notifyPacelable(Landroid/os/Parcelable;)V

    .line 29
    :cond_0
    return-void
.end method
