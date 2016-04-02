.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;
.super Ljava/lang/Object;


# instance fields
.field private cloudId:Ljava/lang/String;

.field private exif:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private req:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;

.field private retCode:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloudId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->cloudId:Ljava/lang/String;

    return-object v0
.end method

.method public getExif()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->exif:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->height:I

    return v0
.end method

.method public getReq()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->req:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->retCode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->width:I

    return v0
.end method

.method public setCloudId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->cloudId:Ljava/lang/String;

    return-void
.end method

.method public setExif(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->exif:Ljava/util/Map;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->height:I

    return-void
.end method

.method public setReq(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->req:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->retCode:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APImageOfflineDownloadRsp{req="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->req:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cloudId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->cloudId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;->exif:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
