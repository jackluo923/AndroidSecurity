.class public Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;
.super Ljava/lang/Object;
.source "ConfigServiceUtils.java"


# static fields
.field private static configService:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 14
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 12
    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 27
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 25
    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    const-string/jumbo v1, ""

    .line 46
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
