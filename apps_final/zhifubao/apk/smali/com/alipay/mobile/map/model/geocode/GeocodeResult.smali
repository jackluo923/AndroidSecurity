.class public Lcom/alipay/mobile/map/model/geocode/GeocodeResult;
.super Lcom/alipay/mobile/map/model/geocode/CodeResult;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adcode:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private formatAddress:Ljava/lang/String;

.field private latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private level:Ljava/lang/String;

.field private neighborhood:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private township:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/map/model/geocode/CodeResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->formatAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTownship()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->township:Ljava/lang/String;

    return-object v0
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->adcode:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->district:Ljava/lang/String;

    return-void
.end method

.method public setFormatAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->formatAddress:Ljava/lang/String;

    return-void
.end method

.method public setLatLonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->level:Ljava/lang/String;

    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->neighborhood:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->province:Ljava/lang/String;

    return-void
.end method

.method public setTownship(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->township:Ljava/lang/String;

    return-void
.end method
