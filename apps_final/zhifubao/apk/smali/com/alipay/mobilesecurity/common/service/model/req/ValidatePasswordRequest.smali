.class public Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public encryType:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const-string/jumbo v0, "RSA"

    iput-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->encryType:Ljava/lang/String;

    const-string/jumbo v0, "login"

    iput-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->passwordType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->encryType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->passwordType:Ljava/lang/String;

    return-object v0
.end method

.method public setEncryType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->encryType:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public setPasswordType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->passwordType:Ljava/lang/String;

    return-void
.end method
