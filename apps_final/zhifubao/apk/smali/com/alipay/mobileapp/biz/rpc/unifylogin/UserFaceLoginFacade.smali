.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;
.super Ljava/lang/Object;
.source "UserFaceLoginFacade.java"


# virtual methods
.method public abstract initFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.initFaceLogin"
    .end annotation
.end method

.method public abstract queryFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.queryFaceLogin"
    .end annotation
.end method
