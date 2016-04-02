.class public interface abstract Lcom/alipay/mobilelbs/rpc/geo/GeocodeService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract geocode(Lcom/alipay/mobilelbs/rpc/geo/req/GeocodeRequest;)Lcom/alipay/mobilelbs/rpc/geo/resp/GeocodeResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilelbs.geo.service.geocoder"
    .end annotation
.end method

.method public abstract regeocode(Lcom/alipay/mobilelbs/rpc/geo/req/ReGeocodeRequest;)Lcom/alipay/mobilelbs/rpc/geo/resp/ReGeocodeResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilelbs.geo.service.regeocoder"
    .end annotation
.end method

.method public abstract regeocodeAll(Lcom/alipay/mobilelbs/rpc/geo/req/ReGeocodeRequest;)Lcom/alipay/mobilelbs/rpc/geo/resp/ReGeocodeResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilelbs.geo.service.regeocoderAll"
    .end annotation
.end method
