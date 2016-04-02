.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/ThirdPartyAccountRpcFacade;
.super Ljava/lang/Object;
.source "ThirdPartyAccountRpcFacade.java"


# virtual methods
.method public abstract applyThirdAccount(Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;)Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.applyThirdAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeThirdAccount(Ljava/lang/String;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.thirdAccount.remove.byAgreementId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateThirdAccount(Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.thirdAccount.update.memoName"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
