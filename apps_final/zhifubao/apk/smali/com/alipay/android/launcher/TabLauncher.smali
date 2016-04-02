.class public Lcom/alipay/android/launcher/TabLauncher;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "TabLauncher.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/alipay/android/launcher/core/ILauncher;
.implements Lcom/alipay/mobile/common/nfc/NFCResponsable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final CATCH_CAT_APPID_FIX:Ljava/lang/String; = "CATCH_CAT_APPID_FIX"

.field private static final CATCH_CAT_APPID_FIX_DATA:Ljava/lang/String; = "CATCH_CAT_APPID_FIX_DATA"

.field public static final TAG:Ljava/lang/String; = "TabLauncher"

.field private static isDestroyed:Z


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private billStarted:Z

.field private idMaps:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isOnCreate:Z

.field private lastTab:Ljava/lang/String;

.field private final loginCaseId:Ljava/lang/String;

.field private final loginSeedID:Ljava/lang/String;

.field private mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mHandler:Landroid/os/Handler;

.field private mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mLauncherServiceThread:Ljava/lang/Thread;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

.field private mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

.field private tabHost:Landroid/widget/TabHost;

.field private tabListener:Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;

.field private tabWidget:Landroid/widget/TabWidget;

.field private tipsForUninstallOldClient:Z

.field private widgetGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    .line 128
    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 134
    iput-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    .line 144
    iput-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$1;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    .line 164
    const-string/jumbo v0, "UC-ZHAQ-56"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->loginCaseId:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "loginTrace"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->loginSeedID:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 169
    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-direct {v0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    .line 172
    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    .line 106
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/launcher/TabLauncher;)Z
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->isBackgroundRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->setupBadge()V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->processGestureCallBack(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/android/launcher/TabLauncher;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/launcher/TabLauncher;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->handleOnResume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/android/launcher/minimal/MinimalHelper;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1235
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->handleNewMinimalStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/launcher/TabLauncher;Z)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->initTab(Z)V

    return-void
.end method

.method private appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 555
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attachTab(Z)V
    .locals 6

    .prologue
    .line 423
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 464
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 425
    if-eqz v0, :cond_3

    .line 426
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 429
    invoke-interface {v0, p0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Landroid/app/Activity;)V

    .line 430
    instance-of v1, v0, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 431
    check-cast v1, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v3}, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;->setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 436
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getIndicator()Landroid/view/View;

    move-result-object v1

    .line 438
    sget v4, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 441
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getBadgeView()Landroid/view/View;

    move-result-object v1

    .line 442
    instance-of v4, v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v4, :cond_2

    .line 443
    check-cast v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    new-instance v4, Lcom/alipay/android/launcher/TabLauncher$6;

    invoke-direct {v4, p0}, Lcom/alipay/android/launcher/TabLauncher$6;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setOnBadgeChangeListener(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;)V

    .line 455
    :cond_2
    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 456
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 458
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 460
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 461
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->tabListener:Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 459
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 423
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method

.method private callGestureApp(Landroid/net/Uri;ZZ)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1057
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 1058
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 1059
    if-eqz p2, :cond_0

    .line 1060
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    .line 1062
    :cond_0
    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher$9;-><init>(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V

    .line 1068
    if-eqz p3, :cond_1

    .line 1069
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "TabLauncher callGestureApp restoreStateValidateGesture"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    .line 1107
    :goto_0
    return v0

    .line 1072
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "TabLauncher callGestureApp validateStartClientGesture"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v3

    invoke-virtual {v1, v3, p1, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1075
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v3, "callGestureApp setNeedAuthGesture true"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesturePassFlag()V

    .line 1077
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/launcher/TabLauncher;->processGestureCallBack(Landroid/net/Uri;Z)V

    .line 1079
    const/4 v0, 0x0

    goto :goto_0

    .line 1080
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedLogin(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1082
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "TabLauncher"

    const-string/jumbo v4, "\u5ba2\u6237\u7aef\u672a\u542f\u52a8\u7684\u60c5\u51b5\u4e0b,2\u79d2\u540e\u5224\u65ad\u4e0b\u767b\u5f55\u72b6\u6001"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/launcher/TabLauncher$10;

    invoke-direct {v3, p0}, Lcom/alipay/android/launcher/TabLauncher$10;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 1103
    const-wide/16 v4, 0x7d0

    .line 1083
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    const-string/jumbo v3, "UC-HB-D23"

    const-string/jumbo v4, "88888888"

    const-string/jumbo v5, "NeedGesture"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->isCanPassGesture()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NO"

    :goto_1
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_3
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateGestureIfNecessary(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    goto :goto_0

    .line 1104
    :cond_4
    const-string/jumbo v1, "YES"

    goto :goto_1
.end method

.method private callGestureService(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1130
    .line 1131
    if-eqz p1, :cond_1

    move v0, v1

    .line 1135
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1136
    const-string/jumbo v4, "_share_tmp_"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1135
    const-string/jumbo v4, "@@"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1141
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->callGestureApp(Landroid/net/Uri;ZZ)Z

    move-result v0

    return v0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private checkAndFixTopAppidError()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 717
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 718
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "20000001"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const-string/jumbo v1, "CATCH_CAT_APPID_FIX"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->getConfigStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    const-string/jumbo v5, "NO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 730
    const-string/jumbo v1, "88886666"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    const-string/jumbo v1, "CATCH_CAT_APPID_FIX_DATA"

    invoke-direct {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->getConfigStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 734
    :try_start_1
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v1, v3

    .line 735
    :goto_1
    array-length v7, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v7, :cond_4

    .line 745
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    .line 752
    :goto_3
    if-eqz v1, :cond_0

    .line 756
    instance-of v1, v2, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v1, :cond_0

    .line 757
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-object v1, v0

    .line 758
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActiveActivityCount()I

    move-result v6

    move v5, v3

    .line 760
    :goto_4
    if-lt v5, v6, :cond_7

    move v1, v4

    .line 767
    :goto_5
    if-eqz v1, :cond_0

    .line 768
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "TabLauncher"

    .line 769
    const-string/jumbo v4, "CATCH_CAT_APPID_FIX"

    .line 768
    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 736
    :cond_4
    :try_start_3
    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 737
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 735
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 745
    :cond_6
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 746
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    .line 748
    goto :goto_3

    .line 761
    :cond_7
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActivityAt(I)Landroid/app/Activity;

    move-result-object v7

    .line 762
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v7

    if-nez v7, :cond_8

    move v1, v3

    .line 764
    goto :goto_5

    .line 760
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getConfigStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 787
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 789
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 791
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 797
    :goto_0
    return-object v0

    .line 795
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 797
    goto :goto_0
.end method

.method private handleMinimalOnResume()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 1221
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v1, p0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->getMinimalStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getWalletEdition()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->handleNewMinimalStatus(Ljava/lang/String;)V

    .line 1229
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private handleNewMinimalStatus(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1236
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->saveMinimalStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1237
    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v0, p0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->shouldMinimal(Landroid/content/Context;)Z

    move-result v8

    .line 1239
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1, v8}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->toggleBackButton(Landroid/widget/TabHost;Z)Z

    move-result v9

    .line 1240
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/android/launcher/TabLauncher;->tabListener:Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;

    if-eqz v8, :cond_2

    move v5, v6

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->toggleTabWidget(Lcom/alipay/android/launcher/TabLauncher;Landroid/widget/TabHost;Ljava/util/List;Landroid/app/ActionBar$TabListener;Z)Z

    move-result v0

    and-int/2addr v0, v9

    .line 1241
    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v0, v7}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->minimalStatusSet(Z)V

    .line 1244
    :cond_0
    if-nez v8, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v7

    .line 1240
    goto :goto_0

    :cond_3
    move v0, v6

    .line 1249
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v6, v2, :cond_4

    .line 1253
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 1250
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v6

    .line 1249
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private handleOnResume(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 865
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleOnResume(currentGroupId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_1

    .line 877
    :cond_0
    return-void

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 870
    if-eqz v0, :cond_2

    .line 871
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onReturn()V

    goto :goto_0

    .line 875
    :cond_3
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onRefresh()V

    goto :goto_0
.end method

.method private handleTabChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v2

    .line 805
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 806
    if-nez v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 813
    const-string/jumbo v3, "20000003"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    if-nez v3, :cond_1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000003"

    .line 816
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 815
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v0, v1

    .line 828
    :goto_1
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 832
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 838
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v3, "Looper.myQueue().addIdleHandler(new HandleonResumeIdleHandler(tabId))"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/launcher/TabLauncher$HandleonResumeIdleHandler;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 829
    :cond_3
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v0

    .line 828
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initTab(Z)V
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getAllWidgetGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    .line 366
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 373
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$5;

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/launcher/TabLauncher$5;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    .line 419
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->attachTab(Z)V

    .line 420
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 369
    if-eqz v0, :cond_1

    .line 370
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->idMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private installShortcut()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1178
    const-string/jumbo v0, "_short_cut_"

    invoke-virtual {p0, v0, v7}, Lcom/alipay/android/launcher/TabLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1180
    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1183
    :cond_0
    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 1184
    const-string/jumbo v2, "duplicate"

    .line 1186
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1189
    const-string/jumbo v5, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1193
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    .line 1195
    sget v6, Lcom/alipay/android/tablauncher/R$string;->app_shortcut_name:I

    invoke-virtual {p0, v6}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1194
    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1197
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1199
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 1202
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "appicon"

    const-string/jumbo v6, "drawable"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1200
    invoke-static {v4, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 1199
    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0, v5}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1207
    sget v0, Lcom/alipay/android/tablauncher/R$string;->install_shortcut_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/alipay/android/launcher/TabLauncher;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isBackgroundRunning()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 469
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 472
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 480
    :goto_0
    return v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "TabLauncher"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    .line 480
    goto :goto_0
.end method

.method private isLaunchFromFP(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 484
    if-nez p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSchemeOrLoginSecheme(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 353
    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "login"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performUriLaunch(Landroid/content/Intent;Z)Z
    .locals 5

    .prologue
    .line 501
    if-eqz p1, :cond_4

    .line 502
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_3

    const-string/jumbo v1, "login"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 505
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 506
    const-string/jumbo v1, "loginStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    const-string/jumbo v1, "targetAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 520
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 525
    :goto_1
    return v0

    .line 511
    :cond_1
    const-string/jumbo v2, "fail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    const-string/jumbo v1, "UC-ZHAQ-56"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "loginTrace"

    const-string/jumbo v4, "performUriLaunch LoginApp"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    goto :goto_0

    .line 515
    :cond_2
    const-string/jumbo v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const-string/jumbo v1, "20000018"

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->appTransfer(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 521
    :cond_3
    if-eqz p2, :cond_4

    .line 522
    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->callGestureService(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    .line 525
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processGestureCallBack(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 1117
    if-eqz p2, :cond_0

    .line 1118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "processGestureCallBack"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->processPush(Landroid/net/Uri;)V

    .line 1122
    :cond_0
    return-void
.end method

.method private processPush(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 1150
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 1149
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 1152
    return-void
.end method

.method private registerExitPointCut()V
    .locals 3

    .prologue
    .line 1211
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    .line 1212
    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    .line 1213
    new-instance v2, Lcom/alipay/mobile/aspect/advice/ExitAppAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/aspect/advice/ExitAppAdvice;-><init>()V

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 1214
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 888
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 889
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    if-eqz p2, :cond_0

    .line 891
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 895
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 896
    return-void
.end method

.method private setTabWidgetBackground(Landroid/widget/TabWidget;)V
    .locals 5

    .prologue
    const v4, -0x50402

    .line 336
    const/4 v0, 0x0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 339
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->tab_black_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 343
    if-nez v0, :cond_0

    .line 344
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 347
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TabLauncher"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v1

    .line 343
    if-nez v0, :cond_1

    .line 344
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 347
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    throw v1
.end method

.method private setupBadge()V
    .locals 5

    .prologue
    .line 685
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 708
    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->setBadge(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 691
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 693
    :try_start_1
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getBadgeView()Landroid/view/View;

    move-result-object v0

    .line 694
    instance-of v3, v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v3, :cond_3

    .line 695
    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 696
    sget-object v3, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeStyle()Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 697
    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getMsgCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 700
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "must be BadgeView"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :catch_1
    move-exception v0

    .line 703
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TabLauncher"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private toLoginApp(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 533
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 534
    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    .line 535
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/launcher/TabLauncher$7;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Bundle;)V

    .line 547
    const-string/jumbo v0, "com.alipay.android.launcher.TabLauncher.toLoginApp()"

    .line 535
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 548
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 978
    const/4 v0, 0x0

    .line 979
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    .line 980
    if-eqz v1, :cond_1

    .line 981
    invoke-interface {v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getView()Landroid/view/View;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 983
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, v1

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalHelper:Lcom/alipay/android/launcher/minimal/MinimalHelper;

    invoke-virtual {v2, p0}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->shouldMinimal(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/launcher/minimal/MinimalHelper;->toggleBackButton(Landroid/view/View;Z)Z

    .line 989
    return-object v0
.end method

.method findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 999
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-object v1

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 1009
    goto :goto_0

    .line 1003
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 1004
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1159
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 204
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/launcher/TabLauncher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 209
    sput-boolean v8, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 210
    iput-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 211
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 214
    invoke-static {}, Landroid/util/SmartBarUtils;->hasSmartBar()Z

    move-result v3

    .line 215
    if-eqz v3, :cond_1

    .line 216
    const v0, 0x103012b

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTheme(I)V

    .line 217
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 224
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->launcher_tab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setContentView(I)V

    .line 226
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    .line 227
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabWidget:Landroid/widget/TabWidget;

    .line 228
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabWidget:Landroid/widget/TabWidget;

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTabWidgetBackground(Landroid/widget/TabWidget;)V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v4, "onCreate"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_2

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 236
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000001"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->finish()V

    .line 241
    iput-boolean v8, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    .line 325
    :goto_2
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->requestWindowFeature(I)Z

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 246
    invoke-direct {p0, v4}, Lcom/alipay/android/launcher/TabLauncher;->isLaunchFromFP(Landroid/content/Intent;)V

    .line 248
    invoke-direct {p0, v4, v1}, Lcom/alipay/android/launcher/TabLauncher;->performUriLaunch(Landroid/content/Intent;Z)Z

    move-result v2

    .line 249
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 250
    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 249
    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 251
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-direct {p0, v4}, Lcom/alipay/android/launcher/TabLauncher;->isSchemeOrLoginSecheme(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "TabLauncher"

    const-string/jumbo v4, "oncreate call to LoginApp"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v2, ""

    const-string/jumbo v4, "loginTrace"

    const-string/jumbo v5, "oncreate call to LoginApp"

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, v7}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    move v0, v1

    .line 262
    :goto_3
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 263
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 265
    if-eqz v3, :cond_3

    .line 266
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabWidget:Landroid/widget/TabWidget;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 267
    new-instance v2, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;

    invoke-direct {v2, p0, v7}, Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;)V

    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabListener:Lcom/alipay/android/launcher/TabLauncher$ActionBarTabListener;

    .line 268
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    .line 269
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 270
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 272
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-static {v2, v1}, Landroid/util/SmartBarUtils;->setActionBarTabsShowAtBottom(Landroid/app/ActionBar;Z)V

    .line 273
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-static {v2, v1}, Landroid/util/SmartBarUtils;->setActionModeHeaderHidden(Landroid/app/ActionBar;Z)V

    .line 276
    :cond_3
    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/utils/Utilz;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v4, 0x927c0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$2;

    invoke-direct {v1, p0, v3}, Lcom/alipay/android/launcher/TabLauncher$2;-><init>(Lcom/alipay/android/launcher/TabLauncher;Z)V

    .line 284
    const-wide/16 v2, 0x5dc

    .line 279
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :goto_4
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$3;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 294
    const-wide/16 v2, 0x3e8

    .line 289
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->registerExitPointCut()V

    .line 299
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/TabLauncher$4;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 314
    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->kb:Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;

    .line 317
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$MinimalStatusChangeReceiver;

    invoke-direct {v0, p0, v7}, Lcom/alipay/android/launcher/TabLauncher$MinimalStatusChangeReceiver;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/android/launcher/TabLauncher$MinimalStatusChangeReceiver;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.android.phone.businesscommon.tablauncher.CHANGE_MINIMAL_STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 319
    new-instance v0, Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;

    invoke-direct {v0, p0, v7}, Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/android/launcher/TabLauncher$HomeButtonBroadcastReceiver;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 321
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 322
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iput-boolean v8, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    goto/16 :goto_2

    .line 259
    :cond_4
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "loginTrace"

    const-string/jumbo v6, "oncreate not call LoginApp"

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_3

    .line 286
    :cond_5
    invoke-direct {p0, v3}, Lcom/alipay/android/launcher/TabLauncher;->initTab(Z)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1014
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 1015
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/launcher/TabLauncher;->isDestroyed:Z

    .line 1018
    invoke-static {}, Lcom/alipay/android/launcher/service/LauncherService;->stopLauncherService()V

    .line 1020
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mMinimalStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHomeButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1037
    :cond_2
    return-void

    .line 1031
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->widgetGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 1032
    if-eqz v0, :cond_4

    .line 1033
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->destroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    .line 181
    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v2}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 189
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->actionbar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->background()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 567
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->setIntent(Landroid/content/Intent;)V

    .line 569
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mAccountService:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "onNewIntent call to LoginApp"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginTrace"

    const-string/jumbo v3, "onNewIntent call to LoginApp"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/launcher/TabLauncher;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->toLoginApp(Landroid/os/Bundle;)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->isLaunchFromFP(Landroid/content/Intent;)V

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/launcher/TabLauncher;->performUriLaunch(Landroid/content/Intent;Z)Z

    .line 580
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->handleTabChanged()V

    .line 582
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 604
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    .line 607
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 610
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    .line 614
    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->setupBadge()V

    .line 618
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 622
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 624
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 625
    if-eqz v0, :cond_0

    const-string/jumbo v1, "xiaomi_store"

    const-string/jumbo v2, "channel_id"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->installShortcut()V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    .line 668
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "subappResume"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    .line 639
    if-eqz v1, :cond_2

    .line 640
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->handleMinimalOnResume()V

    .line 647
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->handleTabChanged()V

    .line 650
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    if-eqz v0, :cond_3

    .line 651
    iput-boolean v4, p0, Lcom/alipay/android/launcher/TabLauncher;->tipsForUninstallOldClient:Z

    .line 652
    invoke-static {p0}, Lcom/alipay/mobile/common/helper/SafeDataTransferHelper;->checkAndUninstallOldClient(Landroid/content/Context;)V

    .line 658
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    if-eqz v0, :cond_4

    .line 659
    iput-boolean v4, p0, Lcom/alipay/android/launcher/TabLauncher;->billStarted:Z

    .line 663
    :cond_4
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    .line 664
    const-string/jumbo v1, "state=onResume"

    .line 663
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->checkAndFixTopAppidError()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1041
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1042
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    .line 1044
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 908
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "20000002"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_2

    .line 916
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v3

    .line 917
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveView(Landroid/view/View;Ljava/lang/String;)V

    .line 921
    :cond_2
    const-string/jumbo v0, "20000002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 922
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 923
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 924
    const-string/jumbo v6, "alipayHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "alipay"

    move-object v3, v2

    move-object v5, v2

    .line 922
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 926
    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    .line 947
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "subappStart"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_4

    .line 954
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v2

    .line 955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "20000002"

    .line 954
    :goto_3
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->findWidgetGroupById(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_5

    .line 960
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onResume()V

    .line 963
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/launcher/TabLauncher$8;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V

    .line 968
    const-wide/16 v2, 0xc8

    .line 963
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 969
    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->isOnCreate:Z

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 914
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 927
    :cond_7
    const-string/jumbo v0, "20000238"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 928
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 929
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 930
    const-string/jumbo v6, "o2oHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "service"

    move-object v3, v2

    move-object v5, v2

    .line 928
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string/jumbo v0, "o2oHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 932
    const-string/jumbo v0, "\u5546\u6237"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 933
    :cond_8
    const-string/jumbo v0, "20000217"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 934
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 935
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 936
    const-string/jumbo v6, "socialHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "explore"

    move-object v3, v2

    move-object v5, v2

    .line 934
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string/jumbo v0, "socialHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 938
    const-string/jumbo v0, "\u670b\u53cb"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 939
    :cond_9
    const-string/jumbo v0, "20000004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 941
    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    .line 942
    const-string/jumbo v6, "wealthHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    const-string/jumbo v8, "wealth"

    move-object v3, v2

    move-object v5, v2

    .line 940
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string/jumbo v0, "wealthHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->lastTab:Ljava/lang/String;

    .line 944
    const-string/jumbo v0, "\u8d22\u5bcc"

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 955
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onWindowFocusChanged(Z)V

    .line 673
    if-eqz p1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mLauncherServiceThread:Ljava/lang/Thread;

    .line 682
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected replaceResources(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mXmlWidgetFactory:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    .line 362
    return-void
.end method

.method public showAllApps()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1047
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 1048
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 1053
    return-void
.end method
