.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;
.super Ljava/lang/Object;


# instance fields
.field private createTime:J

.field private fileSize:J

.field private filename:Ljava/lang/String;

.field private filetype:I

.field private md5:Ljava/lang/String;

.field private orgFilePath:Ljava/lang/String;

.field private orgMd5:Ljava/lang/String;

.field private retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

.field private taskStatus:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->createTime:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->fileSize:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFiletype()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->filetype:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->orgFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->orgMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-object v0
.end method

.method public getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->taskStatus:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->createTime:J

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->fileSize:J

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFiletype(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->filetype:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->md5:Ljava/lang/String;

    return-void
.end method

.method public setOrgFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->orgFilePath:Ljava/lang/String;

    return-void
.end method

.method public setOrgMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->orgMd5:Ljava/lang/String;

    return-void
.end method

.method public setRetmsg(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-void
.end method

.method public setTaskStatus(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->taskStatus:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    return-void
.end method
