.class public interface abstract Lcom/alipay/mobilelbs/rpc/locate/LocateService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ipLocate(Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilelbs.locate.service.ip.locate"
    .end annotation
.end method

.method public abstract locate(Lcom/alipay/mobilelbs/rpc/locate/req/LocateRequest;)Lcom/alipay/mobilelbs/rpc/locate/resp/LocateResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilelbs.locate.service"
    .end annotation
.end method
