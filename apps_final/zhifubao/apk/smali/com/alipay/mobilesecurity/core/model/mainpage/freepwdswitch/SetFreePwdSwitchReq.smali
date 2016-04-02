.class public Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public encryptPaymentPwd:Ljava/lang/String;

.field public hasSmsCertification:I

.field public loginId:Ljava/lang/String;

.field public setSwitchType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->hasSmsCertification:I

    return-void
.end method


# virtual methods
.method public getEncryptPaymentPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->encryptPaymentPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getHasSmsCertification()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->hasSmsCertification:I

    return v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getSetSwitchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setSwitchType:Ljava/lang/String;

    return-object v0
.end method

.method public setEncryptPaymentPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->encryptPaymentPwd:Ljava/lang/String;

    return-void
.end method

.method public setHasSmsCertification(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->hasSmsCertification:I

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setSetSwitchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/freepwdswitch/SetFreePwdSwitchReq;->setSwitchType:Ljava/lang/String;

    return-void
.end method
