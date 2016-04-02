.class public abstract Lcom/alipay/mobile/framework/service/GeocodeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract geocode(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/GeocodeResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reGeocode(Lcom/alipay/mobile/map/model/LatLonPoint;F)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/map/model/LatLonPoint;",
            "F)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;",
            ">;"
        }
    .end annotation
.end method
