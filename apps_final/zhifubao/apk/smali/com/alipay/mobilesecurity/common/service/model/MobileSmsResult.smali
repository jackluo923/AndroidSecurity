.class public Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public bindedPhoneNo:Ljava/lang/String;

.field public codeLength:I

.field public codeType:Ljava/lang/String;

.field public smsAuthType:Ljava/lang/String;

.field public smsRetryIntervel:I

.field public smsValidIntervel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindedPhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->bindedPhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->codeLength:I

    return v0
.end method

.method public getCodeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->codeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsAuthType:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsRetryIntervel()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsRetryIntervel:I

    return v0
.end method

.method public getSmsValidIntervel()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsValidIntervel:I

    return v0
.end method

.method public setBindedPhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->bindedPhoneNo:Ljava/lang/String;

    return-void
.end method

.method public setCodeLength(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->codeLength:I

    return-void
.end method

.method public setCodeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->codeType:Ljava/lang/String;

    return-void
.end method

.method public setSmsAuthType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsAuthType:Ljava/lang/String;

    return-void
.end method

.method public setSmsRetryIntervel(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsRetryIntervel:I

    return-void
.end method

.method public setSmsValidIntervel(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;->smsValidIntervel:I

    return-void
.end method
