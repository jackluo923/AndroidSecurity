.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.source "ApkApp.java"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ApkApp"

    const-string/jumbo v3, "\u91cd\u590d\u5173\u95ed\u5b89\u88c5\u76d1\u542c\u5668"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    return-object v0
.end method


# virtual methods
.method public autoUpgradeApp()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->downloadApp()V

    .line 157
    return-void
.end method

.method public downloadApp()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "yapila2233_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->isNeedAutoUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v5

    :goto_0
    move-object v0, p0

    move v4, v3

    move-object v6, p0

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->doDownloadApp(Ljava/lang/String;ZZZZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 44
    return-void

    :cond_0
    move v2, v3

    .line 43
    goto :goto_0
.end method

.method public getInstalledPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs installApp(Z[Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ApkApp"

    const-string/jumbo v2, "\u5f00\u59cb\u5b89\u88c5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 57
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    const-string/jumbo v2, "application/vnd.android.package-archive"

    .line 62
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 68
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->setChanged()V

    .line 70
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->notifyObservers(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public varargs installApp([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->installApp(Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 168
    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInstallBySystem()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isInstalled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ApkApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package not find:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isNeedUpgrade()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->getApkAppLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 178
    const-string/jumbo v1, "alipay_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "app_id"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v1, "alipay_client_version"

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "alipay_wallet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "\u652f\u4ed8\u5b9d\u6b63\u5728\u5e26\u4f60\u53bb\u767b\u5f55..."

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->showToastCenter(Ljava/lang/String;)V

    .line 189
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 192
    :cond_1
    return-void
.end method

.method public preInstallApp()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public uninstallApp()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
