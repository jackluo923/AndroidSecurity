.class public Lcom/alipay/mobile/base/security/CheckInject$CheckResult;
.super Ljava/lang/Object;
.source "CheckInject.java"


# instance fields
.field private injectPath:Ljava/lang/String;

.field private isInject:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->isInject:Z

    .line 221
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->injectPath:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method public getInjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->injectPath:Ljava/lang/String;

    return-object v0
.end method

.method public isInject()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->isInject:Z

    return v0
.end method

.method public setInject(Z)V
    .locals 0

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->isInject:Z

    .line 240
    return-void
.end method

.method public setInjectPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->injectPath:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CheckResult [isInject="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->isInject:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", injectPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject$CheckResult;->injectPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
