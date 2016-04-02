.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/MovieOrderManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelMovieOrder(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderReq;)Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.cancelMovieOrder"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createMovieOrder(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/MovieOrderReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/OrderResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.createMovieOrder"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createTbMovieOrder(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbMovieOrderReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/OrderResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.createTbMovieOrder"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMixedOrderList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/MixedOrderListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MixedOrdersResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getMixedOrderList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getOrderList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/OrderListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getOrderList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getTbOrderList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbOrderListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/TbOrderListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getTbOrderList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract movieAlipassSync(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MovieAlipassResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.movieAlipassSync"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
