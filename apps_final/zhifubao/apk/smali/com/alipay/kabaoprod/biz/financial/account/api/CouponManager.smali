.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/account/api/CouponManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUserCouponList(Lcom/alipay/kabaoprod/biz/financial/account/request/UserCouponListReq;)Lcom/alipay/kabaoprod/biz/financial/account/result/UserCouponListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.coupon.query.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCouponDetailById(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/account/result/CouponDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.coupon.query.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
