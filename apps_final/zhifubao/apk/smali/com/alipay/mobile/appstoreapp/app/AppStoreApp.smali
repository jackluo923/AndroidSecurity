.class public Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "AppStoreApp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppStoreApp"


# instance fields
.field private appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    const-string/jumbo v0, "URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 200
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "auth_code"

    invoke-virtual {v2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string/jumbo v0, "alipay_user_id"

    invoke-virtual {v2, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    :cond_1
    const-string/jumbo v0, "app_id"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    const-string/jumbo v0, "version"

    .line 208
    const-string/jumbo v1, "1.0"

    .line 207
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    const-string/jumbo v0, "alipay_client_version"

    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    const-string/jumbo v0, "source"

    .line 212
    const-string/jumbo v1, "alipay_wallet"

    .line 211
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppStoreApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "open url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    const-string/jumbo v3, "URL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "TARGET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    const-string/jumbo v3, "APP_ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private openInnerWebBrowser(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 224
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 226
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "authCallBackApp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "10000111"

    .line 232
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 231
    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string/jumbo v1, "alipays://platformapi/startapp?actionType=WebView&appId=20000042&url={0}&publicId={1}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 237
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v5, "APP_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 236
    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppStoreApp"

    const-string/jumbo v2, "onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 46
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 56
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v0, "DETAIL"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 60
    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 64
    const-string/jumbo v2, "APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_4

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 70
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 79
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 83
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 86
    :cond_8
    const-string/jumbo v0, "FASTLOGINAPPS"

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 88
    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 90
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_9
    const-string/jumbo v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 92
    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 98
    :cond_a
    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_c

    .line 100
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 101
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 181
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 107
    :cond_e
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 108
    if-eqz v0, :cond_f

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_10

    .line 110
    :cond_f
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 111
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_10
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_1

    .line 117
    :cond_11
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 118
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_12

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 120
    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_12
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_1

    .line 130
    :cond_13
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_1

    .line 134
    :cond_14
    const-string/jumbo v0, "LAUNCH_WEB"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 135
    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 139
    const-string/jumbo v2, "APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    new-instance v3, Lcom/alipay/mobile/appstoreapp/app/a;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/appstoreapp/app/a;-><init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "publicp"

    .line 141
    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->destroy(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000111"

    .line 253
    const-string/jumbo v2, "10000111"

    .line 252
    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppStoreApp"

    const-string/jumbo v3, "restart faild"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 274
    return-void
.end method
