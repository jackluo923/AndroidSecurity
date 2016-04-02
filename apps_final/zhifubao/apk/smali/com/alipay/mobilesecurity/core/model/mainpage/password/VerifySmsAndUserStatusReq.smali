.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;
.super Ljava/lang/Object;


# instance fields
.field public businessMobileValidateStatus:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public policyCenter:Z

.field public smsPwd:Ljava/lang/String;

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessMobileValidateStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->businessMobileValidateStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->smsPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public setBusinessMobileValidateStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->businessMobileValidateStatus:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setSmsPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->smsPwd:Ljava/lang/String;

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
