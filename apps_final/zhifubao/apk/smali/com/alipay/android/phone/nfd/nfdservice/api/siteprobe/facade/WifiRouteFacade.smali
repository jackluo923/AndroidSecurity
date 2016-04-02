.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getGoPublicUrl(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.gopublic"
    .end annotation
.end method

.method public abstract queryGoPublicUrl(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/GoPublicUrlReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/GoPublicUrlRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.gopublicurl"
    .end annotation
.end method

.method public abstract queryOpenId(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/OpenIdReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/OpenIdRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.openId"
    .end annotation
.end method

.method public abstract queryPageRoute(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiPageRouteReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiPageRouteRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.pageroute"
    .end annotation
.end method

.method public abstract queryRoute(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiRouteReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiRouteRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.route"
    .end annotation
.end method

.method public abstract queryShopIcons(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopIconsRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.shopicons"
    .end annotation
.end method

.method public abstract queryShopNotice(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ShopNoticeRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.shopnotice"
    .end annotation
.end method

.method public abstract queryshopPost(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.wifi.shoppost"
    .end annotation
.end method
