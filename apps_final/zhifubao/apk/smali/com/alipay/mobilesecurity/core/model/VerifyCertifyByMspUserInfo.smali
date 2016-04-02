.class public Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;
.super Ljava/lang/Object;


# instance fields
.field public certified:Z

.field public code:Ljava/lang/String;

.field public headImgUrl:Ljava/lang/String;

.field public logonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->certified:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->certified:Z

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->code:Ljava/lang/String;

    return-void
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->logonId:Ljava/lang/String;

    return-void
.end method
