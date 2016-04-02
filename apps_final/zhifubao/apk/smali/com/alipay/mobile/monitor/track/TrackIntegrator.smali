.class public Lcom/alipay/mobile/monitor/track/TrackIntegrator;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;


# instance fields
.field private a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 47
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 55
    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    .line 57
    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    .line 60
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 383
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/monitor/track/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/monitor/track/a;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 426
    const-string/jumbo v0, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    .line 68
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V

    .line 77
    return-void
.end method

.method public autoTrackClick(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    .line 85
    return-void
.end method

.method public autoTrackPage(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    .line 93
    return-void
.end method

.method public enterActivity(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lcom/alipay/mobile/monitor/track/b;

    invoke-direct {v1, p0, v6}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionToken"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 115
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_7

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 120
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    .line 125
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "appid\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string/jumbo v3, "appID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string/jumbo v5, "appID"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "refViewID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    .line 154
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 117
    :cond_7
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public enterFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    new-instance v0, Lcom/alipay/mobile/monitor/track/b;

    invoke-direct {v0, p0, v5}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionID"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionToken"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6765\u6e90\u63a7\u4ef6:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 232
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public enterH5Page(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 291
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lcom/alipay/mobile/monitor/track/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 299
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionID"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionToken"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 302
    iput-object p3, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    .line 303
    iput-object p4, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 314
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "appid\u4e3a\u7a7a"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string/jumbo v3, "appID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string/jumbo v5, "appID"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "refViewID"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_4
    const-string/jumbo v1, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "20000002"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const-string/jumbo v1, "com.alipay.android.phone.discovery.o2ohome.O2oWidgetGroup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "20000238"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string/jumbo v1, "com.alipay.mobile.socialwidget.ui.SocialHomePage"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "20000217"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string/jumbo v1, "com.alipay.android.widgets.asset.AssetWidgetGroup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "20000004"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 332
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId\u4e0d\u6b63\u786e\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_9
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public leaveActivity(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/16 v7, 0x3e

    const/4 v1, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const/4 v0, 0x0

    .line 169
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 170
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    move-object v3, v0

    .line 176
    :goto_1
    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getStartActivityCount()I

    move-result v5

    move v2, v1

    move v0, v1

    .line 178
    :goto_2
    if-ge v2, v5, :cond_5

    .line 179
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActivityAt(I)Landroid/app/Activity;

    move-result-object v6

    .line 180
    if-ne v6, p1, :cond_7

    .line 181
    const/4 v0, 0x1

    move v1, v0

    .line 183
    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    .line 171
    :cond_2
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_8

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 183
    :cond_3
    const-string/jumbo v0, "unkown"

    goto :goto_4

    :cond_4
    move v0, v1

    .line 186
    :cond_5
    if-nez v0, :cond_6

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 193
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 195
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 196
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 197
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 198
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 199
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v2, "sourceappid"

    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto/16 :goto_3

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public leaveFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 248
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v2, v4

    .line 252
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 253
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 254
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 255
    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method

.method public leaveH5Page(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public leaveView(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string/jumbo v1, ""

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 359
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v3, v5

    .line 364
    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 365
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "sourceappid"

    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 369
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 370
    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_0
.end method
