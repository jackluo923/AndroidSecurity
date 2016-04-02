.class public Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->success:Z

    return-void
.end method
