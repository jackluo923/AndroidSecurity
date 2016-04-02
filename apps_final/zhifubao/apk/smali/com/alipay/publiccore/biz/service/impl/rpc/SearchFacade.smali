.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/SearchFacade;
.super Ljava/lang/Object;
.source "SearchFacade.java"


# virtual methods
.method public abstract hotWord(Lcom/alipay/publiccore/client/req/HotWordReq;)Lcom/alipay/publiccore/client/result/HotWordListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.search.hotWord"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract search(Lcom/alipay/publiccore/client/req/SearchReq;)Lcom/alipay/publiccore/client/result/SearchListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.search.search"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract searchByCategory(Lcom/alipay/publiccore/client/req/SearchReq;)Lcom/alipay/publiccore/client/result/SearchCategoryListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.search.searchByCategory"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
