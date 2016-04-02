.class public Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;
.super Ljava/lang/Object;
.source "AntDetectParameter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6fL


# instance fields
.field private action:I

.field private appID:I

.field private autoClose:Z

.field private extJson:Ljava/lang/String;

.field private remoteUrl:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    return v0
.end method

.method public getAppID()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->appID:I

    return v0
.end method

.method public getExtJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->action:I

    .line 29
    return-void
.end method

.method public setAppID(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->appID:I

    .line 53
    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->autoClose:Z

    .line 61
    return-void
.end method

.method public setExtJson(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->extJson:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->remoteUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;->tag:Ljava/lang/String;

    .line 45
    return-void
.end method
