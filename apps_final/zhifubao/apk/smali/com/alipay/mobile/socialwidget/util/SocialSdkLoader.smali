.class public Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;
.super Ljava/lang/Object;
.source "SocialSdkLoader.java"


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

.field private c:Lcom/alipay/mobile/framework/AlipayApplication;

.field private d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    .line 83
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:prestart"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->preSdkRefresh()V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/b;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/a;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/c;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-boolean v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a:Z

    .line 92
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 94
    :cond_2
    if-nez v0, :cond_3

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v3, "\u6ca1\u6709\u767b\u9646,\u6ce8\u518c\u76d1\u542c\u7b49\u5f85\u52a0\u8f7dsdk"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 100
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    const-string/jumbo v3, "com.alipay.security.login"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v3, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;Z)V

    iput-object v3, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    .line 103
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c()V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_SocialHomeWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5df2\u767b\u9646,\u6ce8\u518c\u76d1\u542c\u5237\u65b0sdk"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_0
    return-void
.end method
