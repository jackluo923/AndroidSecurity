.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/ShopManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryShopList(Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/request/AvailableShopListRequest;)Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/result/AvailableShopResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.shop.queryShopList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
