.class public Lcom/inmobi/commons/internal/ActivityRecognitionSampler;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/os/HandlerThread;

.field static b:Landroid/os/Looper;

.field static c:Landroid/os/Handler;

.field static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->d:Ljava/util/List;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ActivityDetectionSampler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->b:Landroid/os/Looper;

    new-instance v0, Lcom/inmobi/commons/internal/a;

    sget-object v1, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->b()V

    return-void
.end method

.method private static b()V
    .locals 4

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isActivityDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getActivityDetectionInterval()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static getCollectedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isActivityDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
