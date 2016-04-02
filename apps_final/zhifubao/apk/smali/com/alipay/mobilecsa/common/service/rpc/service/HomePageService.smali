.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;
.super Ljava/lang/Object;
.source "HomePageService.java"


# virtual methods
.method public abstract queryHomePage(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryHomePage"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
