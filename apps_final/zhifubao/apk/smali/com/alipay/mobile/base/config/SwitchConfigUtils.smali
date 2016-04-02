.class public Lcom/alipay/mobile/base/config/SwitchConfigUtils;
.super Ljava/lang/Object;
.source "SwitchConfigUtils.java"


# static fields
.field private static a:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 17
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 15
    sput-object v0, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 30
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 28
    sput-object v0, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->a:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
