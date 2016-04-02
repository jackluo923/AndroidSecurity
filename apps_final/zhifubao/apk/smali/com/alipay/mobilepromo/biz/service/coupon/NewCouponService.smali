.class public interface abstract Lcom/alipay/mobilepromo/biz/service/coupon/NewCouponService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract couponWithdraw(Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CouponWithdrawRequest;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponWithdrawResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.coupon.apply.couponWithdraw"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserCouponList(Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CouponListReq;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.query.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserCouponMsgList(Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CouponListReq;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponMsgListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.query.msgList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract ignoreMsg(Ljava/lang/String;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponMsgResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.ignoreMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract markNewRead(Ljava/lang/String;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponMsgResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.markNewRead"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract markRedPointRead(Ljava/util/List;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponMsgResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.markRedPointRead"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponMsgResult;"
        }
    .end annotation
.end method

.method public abstract queryCouponAd(Ljava/util/List;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponAdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.query.queryCouponAd"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponAdResult;"
        }
    .end annotation
.end method

.method public abstract queryCouponDetailById(Ljava/lang/String;)Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.query.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCouponRedPointCount()Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponRedPointResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilepromo.newCoupon.query.redPointCount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
