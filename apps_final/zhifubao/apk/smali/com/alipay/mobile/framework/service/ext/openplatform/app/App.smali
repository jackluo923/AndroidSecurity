.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.super Ljava/util/Observable;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# static fields
.field public static final INVALID_RES_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "App--"

.field private static final TAG:Ljava/lang/String; = "App--"

.field private static authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected static context:Landroid/content/Context;

.field private static imageWorker:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field protected static mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

.field private static scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

.field private static thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;


# instance fields
.field protected appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

.field private final appRankMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private authType:Ljava/lang/String;

.field private hasAdCornerMark:Z

.field installStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected installedVersion:Ljava/lang/String;

.field private isAutoLaunch:Z

.field protected isInAutoUpgrading:Z

.field private isRedPointShow:Z

.field private isSilentInstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 93
    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 91
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 102
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 104
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 102
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 123
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 125
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 123
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 130
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 127
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installedVersion:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isSilentInstall:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAutoLaunch:Z

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 86
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    .line 1389
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hasAdCornerMark:Z

    .line 1402
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow:Z

    .line 141
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 0

    .prologue
    .line 1322
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    return-void
.end method

.method private authAfterLogin(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 6

    .prologue
    .line 1212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "App--"

    const-string/jumbo v2, "authAfterLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1215
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1216
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    move-result-object v0

    .line 1217
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1218
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    .line 1217
    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->getAuthStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v3

    .line 1219
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1221
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 1222
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->isSignStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "App--"

    const-string/jumbo v2, "authStatus isSignStatus"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getResultCode()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 1226
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    move-result-object v0

    .line 1229
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1230
    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    .line 1228
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->authSign(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 4

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onNotNeedAuth()V

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1329
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_2

    .line 1331
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAfterLogin(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    const-string/jumbo v3, "doAuth error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1337
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1338
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 1339
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 1333
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1342
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    .line 1343
    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    goto :goto_0
.end method

.method private doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 1301
    return-void
.end method

.method private getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 109
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 108
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 110
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method public static declared-synchronized getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 916
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDownloadedFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 656
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDefaultDownloadDir()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 875
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 876
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    const-string/jumbo v1, ".R$drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 878
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 879
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 881
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getImageWorker()Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageWorker:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 118
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageWorker:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 120
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageWorker:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    return-object v0
.end method

.method private getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 136
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 134
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 137
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    return-object v0
.end method

.method private hasDownloadUrl()Z
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    .line 313
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isFull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 316
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    move-result-object v0

    .line 317
    invoke-virtual {p0, v0, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addToStage(Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 321
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 323
    :goto_1
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-direct {v1, v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 324
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private remove(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 364
    new-instance v2, Landroid/content/ComponentName;

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".AppLaunchFromShortcutActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    .line 367
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method private removeFromDatabase()V
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->removeAppEntityById(Ljava/lang/String;)V

    .line 376
    return-void
.end method


# virtual methods
.method public addToStage(Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 2

    .prologue
    .line 1314
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/g;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1320
    return-void
.end method

.method public authAndLaunch(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public authAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 1244
    if-nez p1, :cond_0

    .line 1245
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1249
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->toBundle(Landroid/os/Bundle;Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    .line 1252
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public autoUpgradeAndLaunch()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v4

    .line 271
    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    move-object v6, p0

    .line 270
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doDownloadApp(Ljava/lang/String;ZZZZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 272
    return-void
.end method

.method public abstract autoUpgradeApp()V
.end method

.method public clearStage()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 329
    return-void
.end method

.method protected doDownloadApp(Ljava/lang/String;ZZZZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string/jumbo v0, "http:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    const-string/jumbo v0, "https:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 254
    const-class v2, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 255
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 262
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAutoInstall(Z)V

    .line 263
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setNeedProgress(Z)V

    .line 264
    invoke-virtual {v2, p5}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAutoLaunch(Z)V

    .line 265
    invoke-virtual {v0, v2, p6}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    goto :goto_0
.end method

.method protected doDownloadApp(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v4

    move-object v0, p0

    move v3, p1

    move v5, v2

    move-object v6, p0

    .line 238
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doDownloadApp(Ljava/lang/String;ZZZZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 241
    return-void
.end method

.method public doDownloadApp(ZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public abstract downloadApp()V
.end method

.method public downloadApp(Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v4

    move-object v0, p0

    move v3, v2

    move v5, v2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doDownloadApp(Ljava/lang/String;ZZZZLcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 235
    return-void
.end method

.method public downloadApp(Z)V
    .locals 0

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doDownloadApp(Z)V

    .line 225
    return-void
.end method

.method public downloadGifImage(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 774
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 776
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDefaultDownloadDir()Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "App--"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "gif name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 783
    if-eqz v4, :cond_1

    .line 784
    array-length v5, v4

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_2

    .line 812
    :cond_1
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 815
    const-class v2, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 816
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    .line 817
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 820
    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 822
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setAutoInstall(Z)V

    .line 824
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    goto/16 :goto_0

    .line 784
    :cond_2
    aget-object v6, v4, v0

    .line 785
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "App--"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "file:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 788
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "App--"

    const-string/jumbo v5, "found local icon"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "App--"

    const-string/jumbo v5, "sssssssssssssssss"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 791
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "App--"

    .line 795
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-direct {v0, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 799
    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 800
    :catch_1
    move-exception v0

    .line 801
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "App--"

    .line 802
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 784
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public getAppDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "firstScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getName()Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "secondScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 396
    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppRankForStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    return-object v0
.end method

.method public getAppStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    .line 1186
    :goto_0
    return-object v0

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1180
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    goto :goto_0

    .line 1183
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    goto :goto_0

    .line 1186
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    goto :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoStatus()Z
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAutoStatus()Z

    move-result v0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadService()Lcom/alipay/mobile/framework/service/common/DownloadService;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 98
    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 97
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 99
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 479
    const-string/jumbo v1, "ANDROID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string/jumbo v1, "ANDROID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    :goto_0
    return-object v0

    .line 481
    :cond_0
    const-string/jumbo v1, "ANDROID_HTTPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    const-string/jumbo v1, "ANDROID_HTTPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 453
    const-string/jumbo v1, "indexStage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    new-array v2, v4, [Ljava/lang/String;

    .line 455
    const-string/jumbo v1, "firstScreen"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string/jumbo v3, "secondScreen"

    aput-object v3, v2, v1

    move v1, v0

    .line 457
    :goto_0
    if-lt v1, v4, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 454
    :cond_1
    aget-object v0, v2, v1

    .line 458
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 459
    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 457
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 465
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getIncrementPkgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIncrementPkgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 1008
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :goto_0
    return-object v0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    goto :goto_0
.end method

.method public abstract getInstalledPath()Ljava/lang/String;
.end method

.method protected getInstalledVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method public getLabelContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLabelContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIconId()I
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinSdkVersion()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    const-string/jumbo v3, "\u6700\u4f4e\u652f\u6301\u7684SDK\u7248\u672c\u914d\u7f6e\u4e3anull\uff01\uff01"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "App--"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMinSupportAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostfix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSchemeUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSlogan()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getTipsType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideNewFlag()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->hideNewFlag()V

    .line 623
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 625
    :cond_0
    return-void
.end method

.method public installApp()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 680
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadedFilePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp(Z[Ljava/lang/String;)Z

    move-result v0

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp(Z[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 685
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->preInstallApp()Z

    move-result v0

    goto :goto_0

    .line 687
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPreInstall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->preInstallApp()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 692
    goto :goto_0
.end method

.method protected varargs abstract installApp(Z[Ljava/lang/String;)Z
.end method

.method public varargs abstract installApp([Ljava/lang/String;)Z
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAlipayApp()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDisplay()Z
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "firstScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "firstScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1124
    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    .line 1133
    :goto_0
    return v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "secondScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "secondScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1129
    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v0

    goto :goto_0
.end method

.method public isDisplay(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isDownloading()Z
.end method

.method public isH5App()Z
    .locals 2

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasAdCornerMark()Z
    .locals 1

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hasAdCornerMark:Z

    return v0
.end method

.method public isIconRemote()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIconRemote(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 699
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 703
    :cond_0
    :goto_1
    return v0

    .line 698
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 701
    :cond_2
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isInAutoUpgrading()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading:Z

    return v0
.end method

.method public isInInitiativeUpgrading()Z
    .locals 1

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndependentApp()Z
    .locals 2

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isInstallBySystem()Z
.end method

.method public isInstallationSilent()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isSilentInstall:Z

    return v0
.end method

.method public abstract isInstalled()Z
.end method

.method public isMovable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "firstScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "firstScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1353
    if-eqz v0, :cond_1

    .line 1354
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isMovable()Z

    move-result v0

    .line 1362
    :goto_0
    return v0

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "secondScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    const-string/jumbo v1, "secondScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1358
    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isMovable()Z

    move-result v0

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isMovable()Z

    move-result v0

    goto :goto_0
.end method

.method public isMovable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 1367
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isMovable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedAuth()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNeedAuthorize()Z

    move-result v0

    return v0
.end method

.method public isNeedAutoUpgrade()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 544
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 545
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAutoStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 550
    :goto_0
    if-nez v2, :cond_3

    .line 575
    :cond_0
    :goto_1
    return v0

    .line 548
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/NetworkUtil;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v2

    .line 554
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v3

    .line 555
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "App--"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v7, ",isNeedUpgrade:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",isAvailble:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isH5App()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 563
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIndependentApp()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_0

    .line 566
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->matchLocalDownloadedPackage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 567
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "App--"

    const-string/jumbo v4, "matchLocalDownloadedPackage"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "App--"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    .line 573
    goto/16 :goto_1
.end method

.method public isNeedShowNewFlag()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getNeedShowNewFlag()Z

    move-result v0

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isNeedUpgrade()Z
.end method

.method public isOffline()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_0

    .line 590
    const-string/jumbo v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 591
    const-string/jumbo v2, "autoUn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "un"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    const/4 v0, 0x1

    .line 590
    goto :goto_0
.end method

.method public isPkgAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 636
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDefaultDownloadDir()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreInstall()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isPreinstall()Z

    move-result v0

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v0

    return v0
.end method

.method public isRedPointShow()Z
    .locals 1

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow:Z

    return v0
.end method

.method public abstract launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public loadFromLocal()Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 893
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadFromLocal:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-object v0

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    .line 899
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 902
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 903
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 905
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->createRoundIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 907
    :goto_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 909
    :catch_0
    move-exception v1

    .line 910
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "App--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method public loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xa0

    .line 725
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadIcon:appid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iconurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 729
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "App--"

    const-string/jumbo v2, "iconurl is nulllllll"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_1
    return-void

    .line 725
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 732
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 733
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "App--"

    const-string/jumbo v2, "icon is not remoteeeeeee"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 736
    :cond_3
    const-string/jumbo v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 737
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 744
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getImageWorker()Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/b;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    invoke-virtual {v1, v0, v2, v5, v5}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    goto :goto_1
.end method

.method public matchLocalDownloadedPackage()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hasDownloadUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDefaultDownloadDir()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 528
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 529
    const/4 v0, 0x1

    .line 534
    :cond_0
    return v0
.end method

.method public moveToAppCenter()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 289
    const-string/jumbo v2, "firstScreen"

    const-string/jumbo v3, "secondScreen"

    .line 288
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 291
    const-string/jumbo v2, "\u5df2\u79fb\u5230\uff3b\u66f4\u591a\uff3d"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 292
    const/4 v0, 0x1

    .line 294
    :cond_0
    return v0
.end method

.method public moveToHome()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string/jumbo v2, "secondScreen"

    const-string/jumbo v3, "firstScreen"

    .line 302
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 305
    const-string/jumbo v2, "\u5df2\u6dfb\u52a0\u5230\uff3b\u9996\u9875\uff3d\u672b\u4f4d\uff0c\u53ef\u957f\u6309\u518d\u79fb\u52a8"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 306
    const/4 v0, 0x1

    .line 308
    :cond_0
    return v0
.end method

.method public notifyInstallStatus(I)V
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 1017
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 1018
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 1019
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 1020
    return-void
.end method

.method public offline()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromDesktop()V

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->uninstallApp()V

    .line 280
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromDatabase()V

    .line 281
    return-void
.end method

.method public onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading:Z

    .line 1087
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 1088
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 1089
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 1090
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 1091
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "download onFailed, errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading:Z

    .line 1039
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 1044
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 1045
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 1046
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 1047
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 931
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "App--"

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appname:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pkgtype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 933
    const-string/jumbo v3, ",savePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iput-boolean v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInAutoUpgrading:Z

    .line 935
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 936
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v0, v1, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 940
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isAutoInstall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 941
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pkgPath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 943
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 944
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 950
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 953
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 961
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v1

    .line 962
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 963
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 964
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 965
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 966
    const-string/jumbo v2, "App--"

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAutoInstall:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isAutoInstall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isinstalled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 968
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 967
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isAutoInstall()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIndependentApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 970
    :cond_3
    new-array v0, v6, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)Z

    .line 998
    :cond_4
    :goto_0
    return-void

    .line 971
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_7

    .line 972
    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAutoLaunch:Z

    if-eqz v1, :cond_6

    .line 973
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_0

    .line 974
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 975
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "autoInstall"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 976
    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "autoInstall"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 994
    :cond_7
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAutoLaunch:Z

    if-eqz v0, :cond_4

    .line 995
    new-array v0, v6, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)Z

    .line 996
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onInstallComplete(ZZ)V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 1052
    if-eqz v0, :cond_0

    .line 1053
    if-eqz p1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 1058
    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIncrementPkgUrl(Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 1061
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstalledVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installedVersion:Ljava/lang/String;

    .line 1065
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v1

    .line 1066
    if-eqz p1, :cond_2

    .line 1067
    const/16 v0, 0x8

    .line 1066
    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 1069
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 1070
    return-void

    .line 1056
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_2
    const/4 v0, 0x7

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 1079
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 1081
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 3

    .prologue
    .line 921
    const-string/jumbo v0, "App--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 923
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setDownloadProgress(I)V

    .line 924
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 925
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 926
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 927
    return-void
.end method

.method public abstract preInstallApp()Z
.end method

.method public removeFromDesktop()V
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->remove(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public removeFromStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appRankMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 384
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setHasAdCornerMark(Z)V
    .locals 0

    .prologue
    .line 1396
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hasAdCornerMark:Z

    .line 1397
    return-void
.end method

.method public setInstallSilent(Z)V
    .locals 1

    .prologue
    .line 1023
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isSilentInstall:Z

    .line 1024
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAutoLaunch:Z

    .line 1025
    if-eqz p1, :cond_1

    const/16 v0, 0x9

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyInstallStatus(I)V

    .line 1027
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    :cond_1
    const/16 v0, 0xa

    goto :goto_1
.end method

.method public setNeedShowNewFlag(Z)V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getNeedShowNewFlag()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 616
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 618
    :cond_0
    return-void
.end method

.method public setRedPointStatus(Z)V
    .locals 0

    .prologue
    .line 1409
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow:Z

    .line 1410
    return-void
.end method

.method public final showToastCenter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1304
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "empty app"

    goto :goto_0
.end method

.method public abstract uninstallApp()V
.end method
