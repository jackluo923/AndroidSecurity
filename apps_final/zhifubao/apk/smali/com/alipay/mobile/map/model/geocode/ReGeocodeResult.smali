.class public Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;
.super Lcom/alipay/mobile/map/model/geocode/CodeResult;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private crossroads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;"
        }
    .end annotation
.end field

.field private district:Ljava/lang/String;

.field private formatAddress:Ljava/lang/String;

.field private latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private neighborhood:Ljava/lang/String;

.field private pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private province:Ljava/lang/String;

.field private roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;"
        }
    .end annotation
.end field

.field private streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

.field private township:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/map/model/geocode/CodeResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrossroads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->crossroads:Ljava/util/List;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->formatAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatlonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->pois:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRoads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->roads:Ljava/util/List;

    return-object v0
.end method

.method public getStreetNumber()Lcom/alipay/mobile/map/model/geocode/StreetNumber;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

    return-object v0
.end method

.method public getTownship()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->township:Ljava/lang/String;

    return-object v0
.end method

.method public setCrossroads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->crossroads:Ljava/util/List;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->district:Ljava/lang/String;

    return-void
.end method

.method public setFormatAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->formatAddress:Ljava/lang/String;

    return-void
.end method

.method public setLatlonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->neighborhood:Ljava/lang/String;

    return-void
.end method

.method public setPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->pois:Ljava/util/List;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->province:Ljava/lang/String;

    return-void
.end method

.method public setRoads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->roads:Ljava/util/List;

    return-void
.end method

.method public setStreetNumber(Lcom/alipay/mobile/map/model/geocode/StreetNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

    return-void
.end method

.method public setTownship(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->township:Ljava/lang/String;

    return-void
.end method
