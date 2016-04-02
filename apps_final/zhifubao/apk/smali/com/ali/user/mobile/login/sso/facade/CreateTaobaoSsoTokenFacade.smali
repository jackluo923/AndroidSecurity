.class public interface abstract Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;
.super Ljava/lang/Object;
.source "CreateTaobaoSsoTokenFacade.java"


# virtual methods
.method public abstract createSsoToken(Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;)Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.createSSoToken"
    .end annotation
.end method

.method public abstract createTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/login/sso/model/CreateTaobaoSsoTokenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.createTaobaoSSoToken"
    .end annotation
.end method

.method public abstract queryTaoBaoSidInfo()Lcom/ali/user/mobile/login/sso/model/QueryTaoBaoSidInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryTaoBaoSidInfo"
    .end annotation
.end method

.method public abstract verifySsoToken(Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.verifySSoToken"
    .end annotation
.end method

.method public abstract verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;)Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.verifyTaobaoSsoToken"
    .end annotation
.end method
