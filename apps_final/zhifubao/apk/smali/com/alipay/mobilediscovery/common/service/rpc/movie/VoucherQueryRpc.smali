.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/VoucherQueryRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getVoucherInfo(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/VoucherQueryReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/VoucherInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getVoucherInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getVoucherList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/VoucherQueryReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/VoucherListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getVoucherList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
