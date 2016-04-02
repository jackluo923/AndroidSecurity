.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/IntelligentRecommendFacade;
.super Ljava/lang/Object;
.source "IntelligentRecommendFacade.java"


# virtual methods
.method public abstract clearRecmdOfficial(Lcom/alipay/publiccore/client/req/OfficialDeleteRecmdReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.clearRecmdOfficial"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getIntelligentRecmdOfficialList()Lcom/alipay/publiccore/client/result/OfficialIntelligentRecmdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getIntelligentRecmdOfficialList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getRecmdOfficialList(Lcom/alipay/publiccore/client/req/IntelligentRecmdOfficialListReq;)Lcom/alipay/publiccore/client/result/OfficialIntelligentMarketResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getNouveauxRecommendOfficialList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryGlobalRecommend(Lcom/alipay/publiccore/client/req/GlobalRecommendReq;)Lcom/alipay/publiccore/client/result/GlobalRecommendListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryGlobalRecommend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendExposureMsg(Lcom/alipay/publiccore/client/req/OfficialIntelligentRecmdReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.sendExposureMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
