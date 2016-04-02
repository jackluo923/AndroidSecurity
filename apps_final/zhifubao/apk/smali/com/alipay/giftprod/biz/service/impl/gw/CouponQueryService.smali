.class public interface abstract Lcom/alipay/giftprod/biz/service/impl/gw/CouponQueryService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getReceivedCouponList(Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponQueryReq;)Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponReceivedRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.giftprod.myCoupon.query.receivedlist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getSendedCouponList(Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponQueryReq;)Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponSendedRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.giftprod.myCoupon.query.sendedlist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
