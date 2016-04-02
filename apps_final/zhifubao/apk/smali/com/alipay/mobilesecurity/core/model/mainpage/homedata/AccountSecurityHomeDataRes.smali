.class public Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public freePwdSwitchStatus:Ljava/lang/String;

.field public securityLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getFreePwdSwitchStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;->freePwdSwitchStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;->securityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public setFreePwdSwitchStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;->freePwdSwitchStatus:Ljava/lang/String;

    return-void
.end method

.method public setSecurityLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;->securityLevel:Ljava/lang/String;

    return-void
.end method
