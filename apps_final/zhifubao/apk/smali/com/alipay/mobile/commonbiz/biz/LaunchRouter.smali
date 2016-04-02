.class public Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
.super Ljava/lang/Object;
.source "LaunchRouter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private isShowUserGuide:Z

.field private isUpgrade:I

.field private mActivity:Landroid/app/Activity;

.field private mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

.field private mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mLocationInfoService:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "LaunchRouter"

    sput-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    .line 63
    iput v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    .line 258
    iput-boolean v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v1, "isUpgrade"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "main_showGuide"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isUpgrade"

    iget v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "guide"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LaunchRouter isUpgrade = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initInOnCreate(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processScheme(Landroid/net/Uri;)V

    return-void
.end method

.method private checkDatatunnelScheme(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "alipaydt://platformapi"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.alipay.mobile.command.trigger.WebViewTrigger"

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    .line 196
    const/4 v3, 0x1

    .line 194
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private delayCheckLoginStatus(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 476
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedLogin(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5df2\u542f\u52a8\u538b\u540e\u53f0\u7684\u60c5\u51b5\u4e0b,2\u79d2\u540e\u5224\u65ad\u4e0b\u767b\u5f55\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 498
    const-wide/16 v2, 0x7d0

    .line 478
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    if-eqz p2, :cond_1

    .line 500
    const-string/jumbo v0, "YES"

    .line 501
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string/jumbo v0, "NO"

    .line 504
    :cond_0
    const-string/jumbo v1, "UC-HB-D23"

    const-string/jumbo v2, "88888888"

    const-string/jumbo v3, "NeedGesture"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    return-void
.end method

.method private entry(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 275
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getActiveActivityCount()I

    move-result v1

    if-lez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "entry \u5f00\u59cb\u5904\u7406 schema\u534f\u8bae"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 278
    if-eqz p1, :cond_1

    .line 279
    if-eqz v0, :cond_0

    const-string/jumbo v1, "20000125"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-string/jumbo v1, "push"

    const-string/jumbo v2, "tagfrom"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5916\u90e8scheme\u8df3\u8f6c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processPush(Landroid/net/Uri;)V

    .line 322
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "20000125"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    if-eqz p1, :cond_2

    const-string/jumbo v0, "push"

    const-string/jumbo v1, "tagfrom"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5feb\u6377\u6536\u94f6\u53f0\u5df2\u542f\u52a8\uff0cpush\u6765\u7684schema\u4e0d\u5904\u7406"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "entry GestureCallBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 298
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    if-eqz v1, :cond_6

    .line 300
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "do not need gesture"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 315
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->entryToDefaultBundle(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 306
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "LaunchRouter validateStartClientGesture"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    .line 308
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    goto/16 :goto_0

    .line 311
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "1: mGestureService == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mGestureService\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initInOnCreate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 138
    :try_start_0
    const-string/jumbo v0, "com.alipay.pushsdk.BroadcastActionReceiver"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "com.alipay.mobile.command.trigger.SysEventChangeTrigger"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "com.alipay.mobile.nfc.ui.NFCEntry"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->setComponentEnabledIfDefault(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->checkDatatunnelScheme(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initScheme(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 156
    const-wide/16 v2, 0xc8

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initScheme(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/Constants;->schemeActivitys:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/ComponentUtils;->setComponentArrayEnable(Landroid/content/Context;[Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.commonbiz.biz.SET_SCHEME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private isHasLogined()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowUnlogin()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 365
    const-string/jumbo v3, "isShowUnlogin"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 367
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 370
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 366
    goto :goto_0

    :cond_1
    move v0, v2

    .line 370
    goto :goto_1
.end method

.method private processGestureCallBack(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 520
    const-wide/16 v2, 0x32

    .line 514
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    return-void
.end method

.method private processPush(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 408
    if-eqz v0, :cond_0

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-class v2, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 413
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 416
    const-string/jumbo v2, "pushToFront"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.security.authcenter.ui.login.LoginActivity_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5f53\u524d\u5904\u4e8e\u767b\u5f55\u754c\u9762\u53ea\u505a\u63a8\u524d\u53f0\u64cd\u4f5c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 429
    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {v0, v4, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000008"

    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 436
    :cond_1
    :goto_1
    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 443
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 444
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPush isNeedAuthGesture: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    if-eqz v1, :cond_5

    .line 446
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5df2\u542f\u52a8\u538b\u540e\u53f0\u7684\u60c5\u51b5\u4e0b\uff0c\u7b2c\u4e09\u65b9\u8df3\u8f6c\u68c0\u6d4buri\uff0c\u6807\u8bc6\u4e3a\u9700\u8981\u8df3\u8fc7\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000006"

    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 453
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    .line 468
    :goto_2
    return-void

    .line 421
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 433
    :cond_3
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 456
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->delayCheckLoginStatus(Landroid/net/Uri;Z)V

    .line 458
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    .line 459
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    goto :goto_2

    .line 462
    :cond_5
    sget-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 465
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->delayCheckLoginStatus(Landroid/net/Uri;Z)V

    .line 466
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method private processScheme(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 381
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 383
    if-eqz v0, :cond_1

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->setExternData(Landroid/os/Bundle;)V

    .line 388
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayLogin"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setComponentEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    return-void
.end method

.method private setComponentEnabledIfDefault(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    if-nez v2, :cond_0

    .line 177
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    return-void
.end method

.method private startGuideOrMain()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 260
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "main_showGuide"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 261
    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isUpgrade:I

    if-ne v3, v1, :cond_0

    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "isShowGuide"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    iput-boolean v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    move v0, v1

    .line 265
    goto :goto_0
.end method


# virtual methods
.method public attackTimeSend(J)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-boolean v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUserGuide:Z

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 526
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 532
    const-string/jumbo v7, "-"

    .line 533
    const-string/jumbo v8, "perf_startup"

    .line 535
    const-string/jumbo v10, "s"

    .line 536
    const-string/jumbo v11, "c"

    .line 537
    const/4 v3, 0x4

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    .line 525
    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStartEntry()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "pushToFront"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 100
    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    .line 99
    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mLocationInfoService:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mGestureService:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "usertip"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 106
    const-string/jumbo v4, "isShowUserTip"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 108
    :goto_1
    if-eqz v0, :cond_4

    const-string/jumbo v0, "showTip"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 107
    goto :goto_1

    .line 128
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mAlipayApplication:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->initInOnCreate(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public entryToDefaultBundle(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "entryToDefaultBundle"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->isShowUnlogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000067&safePayEnabled=YES&showToolBar=NO&url=https://cmspromo.alipay.com/dlqzy/index.htm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 330
    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processScheme(Landroid/net/Uri;)V

    move-object p1, v0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearTopApps()V

    .line 336
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 339
    if-eqz p1, :cond_1

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    const-string/jumbo v1, "externParams"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 345
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startEntryApp(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isFirstDeploy()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 215
    if-nez v0, :cond_0

    move v0, v1

    .line 217
    :goto_0
    return v0

    .line 216
    :cond_0
    const-string/jumbo v2, "isFirstDeploy"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public startMain()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 223
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_3

    .line 226
    const-string/jumbo v2, "com.alipay.mobile.security.startIntercept.SecurityStartIntercept"

    const-class v3, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->findInterfaceByName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v2, v1

    .line 235
    :goto_1
    const/4 v1, 0x1

    .line 236
    if-eqz v0, :cond_1

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/interfaces/RouterInterface;->callback(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 240
    :goto_2
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v2}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->entry(Landroid/net/Uri;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    .line 250
    const-wide/16 v2, 0xbb8

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 398
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 403
    return-void
.end method
