.class public interface abstract Lcom/alipay/android/mobilesearch/biz/rpc/service/SearchFacade;
.super Ljava/lang/Object;
.source "SearchFacade.java"


# virtual methods
.method public abstract search(Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchRequest;)Lcom/alipay/android/mobilesearch/biz/rpc/model/SearchResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.mobilesearch.search"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
