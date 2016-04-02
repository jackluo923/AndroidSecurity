.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/MovieQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCinemaInfo(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CinemaReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCinemaInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCinemaList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CinemaReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCinemaList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCityList()Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CityListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCityList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFilmInfo(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/FilmReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getFilmInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getFilmList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CinemaReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getFilmList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getHotFilmList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CinemaReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getHotFilmList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMovieSeats(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/MovieSeatsReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MovieSeatsResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getMovieSeats"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPreloadList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/PreLoadReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getPreloadList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getSeatsAndVouchers(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/MovieSeatsReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MovieSeatsResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getSeatsAndVouchers"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getShowTimesList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/ShowTimesReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/ShowTimesResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getShowTimesList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
