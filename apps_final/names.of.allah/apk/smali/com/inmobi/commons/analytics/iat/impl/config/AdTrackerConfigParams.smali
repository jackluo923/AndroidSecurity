.class public Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

.field private f:Lcom/inmobi/commons/metric/MetricConfigParams;

.field private g:Lcom/inmobi/commons/uid/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting.*: Intent.*(?:http://market.android.com/details|market://details|play.google.com).*(?:id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").*referrer=([^&\\s]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->b:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->c:I

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->d:Ljava/lang/String;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->e:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getLogcatPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMetric()Lcom/inmobi/commons/metric/MetricConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    return-object v0
.end method

.method public getReferrerWaitTime()I
    .locals 1

    const v0, 0x493e0

    return v0
.end method

.method public getReferrerWaitTimeRetryCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getReferrerWaitTimeRetryInterval()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method public getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->e:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    return-object v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public getWebviewTimeout()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v2, 0x7fffffff

    const/4 v1, 0x1

    const-string v0, "cto"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->b:I

    const-string v0, "wto"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->c:I

    const-string v0, "rlp"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$PKG"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->e:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    const-string v0, "rp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    const-string v0, "metric"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/MetricConfigParams;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    const-string v0, "ids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    return-void
.end method
