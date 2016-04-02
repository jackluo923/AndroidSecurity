.class public Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_ERR_EXCEPTION:I = 0x1

.field public static final CODE_ERR_FILE_MD5_WRONG:I = 0x4

.field public static final CODE_ERR_FILE_SIZE_WRONG:I = 0x6

.field public static final CODE_ERR_FILE_SIZE_ZERO:I = 0x3

.field public static final CODE_ERR_PATH_EMPTY:I = 0x7

.field public static final CODE_ERR_RSP_NULL:I = 0x2

.field public static final CODE_ERR_TASK_CANCELED:I = 0x5

.field public static final CODE_SUCCESS:I


# instance fields
.field private fileReq:Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

.field private msg:Ljava/lang/String;

.field private retCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->fileReq:Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->retCode:I

    return v0
.end method

.method public setFileReq(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->fileReq:Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->retCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APFileRsp {fileReq=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->fileReq:Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileRsp;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
