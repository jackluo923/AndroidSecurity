.class public Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

.field f:Lcom/inmobi/commons/metric/MetricConfigParams;

.field g:Lcom/inmobi/commons/uid/UID;

.field h:Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

.field i:Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->a:I

    iput v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->b:I

    iput v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->c:I

    iput v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->d:I

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->e:Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->h:Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->i:Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    return-void
.end method


# virtual methods
.method public getAppAppGalleryConfigParams()Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->h:Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    return-object v0
.end method

.method public getDefaultRefreshRate()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->b:I

    return v0
.end method

.method public getFetchTimeOut()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->e:Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    return-object v0
.end method

.method public getMetric()Lcom/inmobi/commons/metric/MetricConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    return-object v0
.end method

.method public getMinimumRefreshRate()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->a:I

    return v0
.end method

.method public getNativeSdkConfigParams()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->i:Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    return-object v0
.end method

.method public getRenderTimeOut()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 5
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

    const/4 v4, 0x1

    const-wide/32 v2, 0x7fffffff

    const-string v0, "mrr"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->a:I

    const-string v0, "drr"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->b:I

    const-string v0, "fto"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->c:I

    const-string v0, "rto"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->d:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->e:Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    const-string v0, "imai"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->f:Lcom/inmobi/commons/metric/MetricConfigParams;

    const-string v0, "metric"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/MetricConfigParams;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->g:Lcom/inmobi/commons/uid/UID;

    const-string v0, "ids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->h:Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    const-string v0, "ag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->i:Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    const-string v0, "native"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->setFromMap(Ljava/util/Map;)V

    return-void
.end method
