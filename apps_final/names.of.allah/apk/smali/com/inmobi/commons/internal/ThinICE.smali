.class public final Lcom/inmobi/commons/internal/ThinICE;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

.field private static c:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/internal/ThinICE;->a:Z

    new-instance v0, Lcom/inmobi/commons/internal/c;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/c;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ThinICE;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ThinICE;->c:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->b()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x1

    sget-boolean v0, Lcom/inmobi/commons/internal/ThinICE;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    invoke-direct {v0, v2}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/inmobi/commons/internal/ThinICE;->a:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/inmobi/commons/internal/ThinICE$b;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/ThinICE$b;-><init>()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->start(Landroid/content/Context;)V

    :goto_0
    sput-boolean v2, Lcom/inmobi/commons/internal/ThinICE;->a:Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V

    return-void

    :cond_2
    sget-object v0, Lcom/inmobi/commons/internal/ThinICE;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->setListener(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->b(Ljava/util/List;)V

    return-void
.end method

.method private static b()V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->stop()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->b(Ljava/util/List;)V

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->stop()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getEndpointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->getCollectedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "No ThinICE data is collected. NoOp."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "ThisICE disabled. Not sending data. NoOp."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getMaxRetry()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getRetryInterval()J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    sget-object v3, Lcom/inmobi/commons/internal/ThinICE;->c:Ljava/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    new-instance v1, Lcom/inmobi/commons/internal/JSONPayloadCreator;

    invoke-direct {v1}, Lcom/inmobi/commons/internal/JSONPayloadCreator;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->getCollectedList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->toPayloadString(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[InMobi]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ThinICE params to server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/inmobi/commons/internal/ThinICE$a;

    invoke-direct {v2, v1}, Lcom/inmobi/commons/internal/ThinICE$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/cache/RetryMechanism;->rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    goto :goto_0
.end method

.method public static setConfig(Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)V
    .locals 5

    const-wide/16 v3, 0x3e8

    if-eqz p0, :cond_0

    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isCellEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleCellEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isOperatorEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleCellOperatorEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isConnectedWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleConnectedWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getSampleHistorySize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleHistorySize(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getSampleInterval()J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleInterval(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleLocationEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isVisibleWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setSampleVisibleWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getStopRequestTimeout()J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setStopRequestTimeout(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getWifiFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setWifiFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getCellOpsFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->setCellOpFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->setConfig(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V

    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->start(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->start()V

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->b()V

    :cond_0
    return-void
.end method
