.class public Lcom/alipay/android/launcher/StartupRuler;
.super Ljava/lang/Object;
.source "StartupRuler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StartupRuler"

.field private static mTabLauncherActivied:Z


# instance fields
.field private mIsLogin:Z

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/launcher/StartupRuler;->mTabLauncherActivied:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/launcher/StartupRuler;->mIsLogin:Z

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Pipeline"

    const-string/jumbo v2, "new StartupRuler()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/launcher/StartupRuler;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 57
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/StartupRuler;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 58
    new-instance v0, Lcom/alipay/android/launcher/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/b;-><init>(Lcom/alipay/android/launcher/StartupRuler;)V

    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string/jumbo v2, "com.alipay.security.login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/alipay/android/launcher/StartupRuler;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Pipeline"

    .line 64
    const-string/jumbo v2, "StartupRuler.registerReceiver(new SecurityLoginBroadcastReceiver)"

    .line 63
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/launcher/StartupRuler;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/launcher/StartupRuler;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/launcher/StartupRuler;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alipay/android/launcher/StartupRuler;->mIsLogin:Z

    return-void
.end method

.method public static handleStartup()V
    .locals 3

    .prologue
    .line 82
    sget-boolean v0, Lcom/alipay/android/launcher/StartupRuler;->mTabLauncherActivied:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/launcher/StartupRuler;->mTabLauncherActivied:Z

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Pipeline"

    const-string/jumbo v2, "PIPELINE_TABLAUNCHER_ACTIVATED : start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_TABLAUNCHER_ACTIVATED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 92
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/launcher/a;

    invoke-direct {v2, v0}, Lcom/alipay/android/launcher/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public ruleOnWindowFocusChanged(Z)Z
    .locals 5

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Pipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "StartupRuler.ruleOnWindowFocusChanged(hasFocus="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsLogin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/android/launcher/StartupRuler;->mIsLogin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-boolean v1, p0, Lcom/alipay/android/launcher/StartupRuler;->mIsLogin:Z

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {}, Lcom/alipay/android/launcher/StartupRuler;->handleStartup()V

    .line 78
    :cond_0
    return v0
.end method
