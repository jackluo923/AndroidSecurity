.class public Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public securityLevel:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

.field public securitySettings:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecurityLevel()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->securityLevel:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    return-object v0
.end method

.method public getSecuritySettings()Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->securitySettings:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    return-object v0
.end method

.method public setSecurityLevel(Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->securityLevel:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityLevel;

    return-void
.end method

.method public setSecuritySettings(Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;->securitySettings:Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecuritySettings;

    return-void
.end method
