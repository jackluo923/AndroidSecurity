.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public certNo:Ljava/lang/String;

.field public certType:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->certNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->certType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->passwordType:Ljava/lang/String;

    return-object v0
.end method

.method public setCertNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->certNo:Ljava/lang/String;

    return-void
.end method

.method public setCertType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->certType:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setPasswordType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->passwordType:Ljava/lang/String;

    return-void
.end method
