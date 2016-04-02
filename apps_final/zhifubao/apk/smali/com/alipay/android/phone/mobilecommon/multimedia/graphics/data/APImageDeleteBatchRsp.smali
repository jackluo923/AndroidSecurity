.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDeleteBatchRsp;
.super Ljava/lang/Object;


# instance fields
.field private fileIds:Ljava/lang/String;

.field private retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDeleteBatchRsp;->fileIds:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDeleteBatchRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-object v0
.end method

.method public setFileIds(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDeleteBatchRsp;->fileIds:Ljava/lang/String;

    return-void
.end method

.method public setRetmsg(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDeleteBatchRsp;->retmsg:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageRetMsg;

    return-void
.end method
