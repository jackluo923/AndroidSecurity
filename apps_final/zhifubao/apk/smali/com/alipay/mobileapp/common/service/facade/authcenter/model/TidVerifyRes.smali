.class public Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;
.super Ljava/lang/Object;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->success:Z

    iput v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->resultCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->resultCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->success:Z

    return-void
.end method
