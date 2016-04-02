.class public Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public smsContent:Ljava/lang/String;

.field public smsNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->smsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->smsNo:Ljava/lang/String;

    return-object v0
.end method

.method public setSmsContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->smsContent:Ljava/lang/String;

    return-void
.end method

.method public setSmsNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;->smsNo:Ljava/lang/String;

    return-void
.end method
