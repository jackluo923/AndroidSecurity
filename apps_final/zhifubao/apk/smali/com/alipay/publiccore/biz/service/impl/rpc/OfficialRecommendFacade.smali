.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialRecommendFacade;
.super Ljava/lang/Object;
.source "OfficialRecommendFacade.java"


# virtual methods
.method public abstract getRecommendUrl(Lcom/alipay/publiccore/common/service/facade/account/domain/RecommendReq;)Lcom/alipay/publiccore/client/result/OfficialRecommendResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getRecommendUrl"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getSmartRecommendOfficial(Lcom/alipay/publiccore/client/req/OfficialSmartRecommendReq;)Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getSmartRecommendOfficial"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
