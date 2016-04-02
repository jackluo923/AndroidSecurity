.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/CouponQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCinemaListByCoupon(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CinemaReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCinemaListByCoupon"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCouponDetail(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CouponDetailReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CouponDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCouponDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCouponOrderList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbOrderListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CouponOrderListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCouponOrderList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCouponPassUrl(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CouponAlipassResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCouponPassUrl"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
