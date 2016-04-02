.class public Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public bizNo:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public voiceInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->bizNo:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->voiceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setBizNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->bizNo:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->format:Ljava/lang/String;

    return-void
.end method

.method public setVoiceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;->voiceInfo:Ljava/lang/String;

    return-void
.end method
