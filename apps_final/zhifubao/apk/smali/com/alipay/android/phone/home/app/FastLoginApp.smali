.class public Lcom/alipay/android/phone/home/app/FastLoginApp;
.super Lcom/alipay/android/phone/home/app/BaseApp;
.source "FastLoginApp.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/home/app/FastLoginApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alipay/android/phone/home/app/FastLoginApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/alipay/android/phone/home/app/FastLoginApp;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/app/FastLoginApp;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->b:Lcom/alipay/android/phone/home/app/FastLoginApp;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/BaseApp;-><init>()V

    .line 31
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u5176\u5b83"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "\u4e00\u952e\u767b\u5f55\u5e94\u7528\u5217\u8868"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "nativeApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 37
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/FastLoginApp;->b()V

    .line 38
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/home/app/FastLoginApp;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/alipay/android/phone/home/app/FastLoginApp;->b:Lcom/alipay/android/phone/home/app/FastLoginApp;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, "new_for_more_app"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/FastLoginApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public authAndLaunch(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 69
    if-nez p1, :cond_0

    .line 70
    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 71
    :cond_0
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "FASTLOGINAPPS"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "20000002"

    .line 73
    const-string/jumbo v2, "10000111"

    .line 72
    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "NEW_FOR_THIRD_APP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    invoke-direct {p0}, Lcom/alipay/android/phone/home/app/FastLoginApp;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/app/FastLoginApp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLocalIconId()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/alipay/android/phone/openplatform/R$drawable;->c:I

    return v0
.end method
