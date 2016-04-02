.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/taobao/login/facade/TaobaoLoginFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract alipaySsoLogin(Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginReq;)Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.alipaySsoLogin"
    .end annotation
.end method

.method public abstract getTaobaoAutoLoginUrl(Lcom/alipay/mobileapp/core/service/login/taobao/model/TaobaoAutoLoginUrlReq;)Lcom/alipay/mobileapp/core/service/login/taobao/model/TaobaoAutoLoginUrlRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.url.autologin.get"
    .end annotation
.end method
