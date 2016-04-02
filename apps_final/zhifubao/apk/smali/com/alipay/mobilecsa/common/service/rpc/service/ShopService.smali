.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/ShopService;
.super Ljava/lang/Object;
.source "ShopService.java"


# virtual methods
.method public abstract queryMerchantHome(Lcom/alipay/mobilecsa/common/service/rpc/request/MerchantHomeRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryMerchantHome"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryShopPhotos(Lcom/alipay/mobilecsa/common/service/rpc/request/ShopPhotoQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/ShopPhotoQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryShopPhoto"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySuitShop(Lcom/alipay/mobilecsa/common/service/rpc/request/SuitShopQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/SuitShopQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.querySuitShop"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
