.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;
.super Ljava/lang/Object;
.source "CityQueryService.java"


# virtual methods
.method public abstract queryAllCity(Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.cityQuery"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
