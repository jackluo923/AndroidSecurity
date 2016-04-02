.class public Lcom/alipay/mobile/framework/service/ext/BizResult;
.super Ljava/lang/Object;
.source "BizResult.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public resultCode:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->success:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->appName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->message:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->resultCode:I

    .line 32
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/BizResult;->success:Z

    .line 19
    return-void
.end method
