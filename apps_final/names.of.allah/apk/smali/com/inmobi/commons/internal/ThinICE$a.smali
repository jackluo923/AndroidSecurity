.class final Lcom/inmobi/commons/internal/ThinICE$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/internal/ThinICE$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final completed()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 3

    const-string v0, "[InMobi]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending ThinICE data to server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getEndpointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/internal/ThinICE$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Device not connected."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
