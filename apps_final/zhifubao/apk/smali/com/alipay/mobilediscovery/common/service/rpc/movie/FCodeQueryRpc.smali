.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/FCodeQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCinemaListByActivityId(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/FCodeQueryReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.fcode.getCinemaListByActivityId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFilmListByActivityId(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/FCodeQueryReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.fcode.getFilmListByActivityId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getShowTimesByActivityId(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/FCodeQueryReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/ShowTimesResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.fcode.getShowTimesByActivityId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
