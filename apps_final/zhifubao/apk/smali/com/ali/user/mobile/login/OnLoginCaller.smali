.class public interface abstract Lcom/ali/user/mobile/login/OnLoginCaller;
.super Ljava/lang/Object;
.source "OnLoginCaller.java"


# virtual methods
.method public abstract cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
.end method

.method public abstract failLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
.end method

.method public abstract filterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSaveHistory()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
.end method
