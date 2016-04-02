.class public Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->a:I

    iput v1, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->b:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->c:I

    iput v1, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->d:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->e:I

    return-void
.end method


# virtual methods
.method public getMaxRetry()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->a:I

    return v0
.end method

.method public getPingTimeOut()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getmDefaultEventsBatch()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->d:I

    return v0
.end method

.method public getmMaxDb()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->e:I

    return v0
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

    const-string v0, "mr"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->a:I

    const-string v0, "pint"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->b:I

    const-string v0, "pto"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->c:I

    const-string v0, "eb"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->d:I

    const-string v0, "mdb"

    invoke-static {p1, v0, v4, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->e:I

    return-void
.end method

.method public setmDefaultEventsBatch(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->d:I

    return-void
.end method

.method public setmMaxDb(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->e:I

    return-void
.end method
