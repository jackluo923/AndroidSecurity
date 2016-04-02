.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp;
.super Ljava/lang/Object;


# instance fields
.field private images:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp$singleImage;

.field private retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImages()[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp$singleImage;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp;->images:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp$singleImage;

    return-object v0
.end method

.method public getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-object v0
.end method

.method public setImages([Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp$singleImage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp;->images:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp$singleImage;

    return-void
.end method

.method public setRetmsg(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadBatchRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-void
.end method
