.class public Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public certified:Z

.field public certifiedAndMobileBind:Z

.field public mobileBindNo:Ljava/lang/String;

.field public mobileBinded:Z

.field public openPush:Z

.field public openedDigitalCert:Z

.field public openedDynamicPwd:Z

.field public openedMobileOtp:Z

.field public openedUKey:Z

.field public setDeviceAuthentication:Z

.field public setGesture:Z

.field public setHeadPic:Z

.field public setSecurityQA:Z

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileBindNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->mobileBindNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->certified:Z

    return v0
.end method

.method public isCertifiedAndMobileBind()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->certifiedAndMobileBind:Z

    return v0
.end method

.method public isMobileBinded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->mobileBinded:Z

    return v0
.end method

.method public isOpenPush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openPush:Z

    return v0
.end method

.method public isOpenedDigitalCert()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedDigitalCert:Z

    return v0
.end method

.method public isOpenedDynamicPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedDynamicPwd:Z

    return v0
.end method

.method public isOpenedMobileOtp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedMobileOtp:Z

    return v0
.end method

.method public isOpenedUKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedUKey:Z

    return v0
.end method

.method public isSetDeviceAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setDeviceAuthentication:Z

    return v0
.end method

.method public isSetGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setGesture:Z

    return v0
.end method

.method public isSetHeadPic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setHeadPic:Z

    return v0
.end method

.method public isSetSecurityQA()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setSecurityQA:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->certified:Z

    return-void
.end method

.method public setCertifiedAndMobileBind(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->certifiedAndMobileBind:Z

    return-void
.end method

.method public setMobileBindNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->mobileBindNo:Ljava/lang/String;

    return-void
.end method

.method public setMobileBinded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->mobileBinded:Z

    return-void
.end method

.method public setOpenPush(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openPush:Z

    return-void
.end method

.method public setOpenedDigitalCert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedDigitalCert:Z

    return-void
.end method

.method public setOpenedDynamicPwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedDynamicPwd:Z

    return-void
.end method

.method public setOpenedMobileOtp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedMobileOtp:Z

    return-void
.end method

.method public setOpenedUKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->openedUKey:Z

    return-void
.end method

.method public setSetDeviceAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setDeviceAuthentication:Z

    return-void
.end method

.method public setSetGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setGesture:Z

    return-void
.end method

.method public setSetHeadPic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setHeadPic:Z

    return-void
.end method

.method public setSetSecurityQA(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->setSecurityQA:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;->userName:Ljava/lang/String;

    return-void
.end method
