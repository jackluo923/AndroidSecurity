.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/h5app/H5AppManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract authH5UrlWithLogin(Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginReq;)Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.h5app.authH5UrlWithLogin"
    .end annotation
.end method

.method public abstract synH5GlobalBlackList()Lcom/alipay/mobilesecurity/core/model/h5app/H5AppGlobalBlackRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.h5app.synH5GlobalBlackList"
    .end annotation
.end method
