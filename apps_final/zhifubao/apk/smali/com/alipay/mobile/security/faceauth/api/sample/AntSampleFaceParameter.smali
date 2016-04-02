.class public Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;
.super Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.source "AntSampleFaceParameter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;-><init>()V

    .line 8
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAction(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public clone(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;)V
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAction(I)V

    .line 13
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAppID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAppID(I)V

    .line 14
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setExtJson(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setTag(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setRemoteUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->isAutoClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;->setAutoClose(Z)V

    .line 18
    return-void
.end method
