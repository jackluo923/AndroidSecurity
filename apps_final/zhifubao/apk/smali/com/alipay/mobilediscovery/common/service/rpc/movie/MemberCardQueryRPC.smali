.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/MemberCardQueryRPC;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCardInfoByCardId(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/MemberCardReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MemberCardInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCardInfoByCardId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCardListNoAmount()Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MemberCardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCardListNoAmount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
