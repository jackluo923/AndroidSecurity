.class public Lcom/alipay/mobile/map/model/IndoorLocation;
.super Ljava/lang/Object;


# instance fields
.field private accuracy:F

.field private angle:F

.field private floor:D

.field private lat:D

.field private lng:D

.field private reliability:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    iput-wide p5, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    return-void
.end method

.method public constructor <init>(DDDFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    iput-wide p5, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    iput p7, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    iput p8, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    iput p9, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    return v0
.end method

.method public getFloor()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    return-wide v0
.end method

.method public getReliability()F
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    return v0
.end method

.method public setAccuracy(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    return-void
.end method

.method public setFloor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    return-void
.end method

.method public setLat(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    return-void
.end method

.method public setReliability(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[lng:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",floor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",reliability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
