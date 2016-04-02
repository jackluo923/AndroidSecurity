.class public Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public bizNo:Ljava/lang/String;

.field public voicePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;->bizNo:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;->voicePath:Ljava/lang/String;

    return-object v0
.end method

.method public setBizNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;->bizNo:Ljava/lang/String;

    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;->voicePath:Ljava/lang/String;

    return-void
.end method
