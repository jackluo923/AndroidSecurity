.class public Lcom/alipay/android/phone/home/app/HomeMoreApp;
.super Lcom/alipay/android/phone/home/app/BaseApp;
.source "HomeMoreApp.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/home/app/HomeMoreApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b:Lcom/alipay/android/phone/home/app/HomeMoreApp;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/BaseApp;-><init>()V

    .line 33
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u66f4\u591a\u652f\u4ed8\u5b9d\u5e94\u7528"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "nativeApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 39
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b()V

    .line 40
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/home/app/HomeMoreApp;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b:Lcom/alipay/android/phone/home/app/HomeMoreApp;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "new_for_more_app"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/HomeMoreApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public authAndLaunch(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 55
    :try_start_0
    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-class v2, Lcom/alipay/android/phone/home/ui/AppsCenterActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_MORE_APP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/HomeMoreApp;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/app/HomeMoreApp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLocalIconId()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/alipay/android/phone/openplatform/R$drawable;->d:I

    return v0
.end method
