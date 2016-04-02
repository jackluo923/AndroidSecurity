.class public Lcom/alipay/mobile/map/model/geocode/StreetNumber;
.super Ljava/lang/Object;


# instance fields
.field private direction:Ljava/lang/String;

.field private distance:F

.field private latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private number:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->distance:F

    return v0
.end method

.method public getLatLonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->street:Ljava/lang/String;

    return-object v0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->direction:Ljava/lang/String;

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->distance:F

    return-void
.end method

.method public setLatLonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->number:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/StreetNumber;->street:Ljava/lang/String;

    return-void
.end method
