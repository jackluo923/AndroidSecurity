.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/OffcialMarketFacade;
.super Ljava/lang/Object;
.source "OffcialMarketFacade.java"


# virtual methods
.method public abstract getTopicOfficialList(Lcom/alipay/publiccore/client/req/TopicOfficialListReq;)Lcom/alipay/publiccore/client/result/TopicOfficialListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getTopicOfficialList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCategories(Lcom/alipay/publiccore/client/req/OfficialCategoriesReq;)Lcom/alipay/publiccore/client/result/OfficialTypeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryCategories"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCategoryRecommendAccount(Lcom/alipay/publiccore/client/req/MoreOfficialListReq;)Lcom/alipay/publiccore/client/result/OfficialAccountListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryCategoryRecommendAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySubOfficialType(Lcom/alipay/publiccore/client/req/OfficialTypeReq;)Lcom/alipay/publiccore/client/result/OfficialTypeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.querySubOfficialType"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
