.class public Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;
.super Ljava/lang/Object;
.source "AntDetectResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6eL


# instance fields
.field isSuccess:Z

.field result:I

.field resultMessage:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    .line 11
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    return v0
.end method

.method public setResult(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->result:I

    .line 36
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->resultMessage:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->isSuccess:Z

    .line 44
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->tag:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/api/AntDetectResponse;->token:Ljava/lang/String;

    .line 20
    return-void
.end method
