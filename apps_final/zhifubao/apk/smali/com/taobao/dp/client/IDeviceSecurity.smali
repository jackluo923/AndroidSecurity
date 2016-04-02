.class public interface abstract Lcom/taobao/dp/client/IDeviceSecurity;
.super Ljava/lang/Object;


# virtual methods
.method public abstract didStrategyChanged(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getSecurityToken()Ljava/lang/String;
.end method

.method public abstract getSecurityTokenEx()Ljava/lang/String;
.end method

.method public abstract init(Lcom/taobao/dp/http/IUrlRequestService;)V
.end method

.method public abstract notifyDidChanged(Ljava/lang/String;)V
.end method

.method public abstract onInitFinished(I)V
.end method

.method public abstract sendLoginResult(Ljava/lang/String;)V
.end method
