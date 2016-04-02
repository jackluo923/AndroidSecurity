.class public Lcom/alipay/mobile/base/util/ConfigUtilBiz;
.super Ljava/lang/Object;
.source "ConfigUtilBiz.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "commonbiz:ConfigUtil"

    sput-object v0, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static a()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 103
    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 101
    return-object v0
.end method

.method private static a(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 120
    sget-object v0, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onsitepay_config_out_of_date"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void

    .line 126
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public static a(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)Z
    .locals 5

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a()Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onsitepay_config_90"

    invoke-virtual {v1, v3, v4, v0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onsitepay_config_onsitepay_switch"

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method private static b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 110
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 108
    return-object v0
.end method
