.class public Lcom/inmobi/commons/metric/MetricConfigParams;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x69780

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    iput v1, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    iput v1, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    const-string v0, "https://sdkm.w.inmobi.com/metrics/e.asm"

    iput-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDumpThreshhold()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    return v0
.end method

.method public getMaxInQueue()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    return v0
.end method

.method public getNextRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    return v0
.end method

.method public getSamplingFactor()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    return-object v0
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

    const-string v0, "sf"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    const-string v0, "dt"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    const-string v0, "max"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    const-string v0, "nri"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    return-void
.end method
