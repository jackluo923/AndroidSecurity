.class public Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;
.super Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.source "AntFaceLoginParameter.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mHeadImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->mHeadImagePath:Ljava/lang/String;

    .line 12
    const v0, 0x10001

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAction(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public clone(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAction(I)V

    .line 25
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getAppID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAppID(I)V

    .line 26
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getExtJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setExtJson(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setTag(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setRemoteUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->isAutoClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->setAutoClose(Z)V

    .line 30
    return-void
.end method

.method public getHeadImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->mHeadImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadImagePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;->mHeadImagePath:Ljava/lang/String;

    .line 21
    return-void
.end method
