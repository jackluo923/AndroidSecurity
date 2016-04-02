.class public Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private b:Lcom/inmobi/commons/uid/UID;

.field private c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

.field private d:Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

.field private e:Ljava/lang/Long;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x5

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->b:Lcom/inmobi/commons/uid/UID;

    new-instance v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    new-instance v0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->d:Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->e:Ljava/lang/Long;

    iput v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->f:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->g:I

    iput v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->j:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->k:I

    iput v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->l:I

    iput v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->m:I

    new-instance v0, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->n:Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    iput v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->o:I

    return-void
.end method


# virtual methods
.method public getAutomaticCapture()Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->n:Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    return-object v0
.end method

.method public getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    return-object v0
.end method

.method public getExtraParamsLimit()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->l:I

    return v0
.end method

.method public getGetParamsLimit()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->h:I

    return v0
.end method

.method public getLTVId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxAppIdLength()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->o:I

    return v0
.end method

.method public getMaxDbEvents()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->g:I

    return v0
.end method

.method public getMaxKeyLength()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->j:I

    return v0
.end method

.method public getMaxRetryBeforeCacheDiscard()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->m:I

    return v0
.end method

.method public getMaxValLength()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->k:I

    return v0
.end method

.method public getMinEventsToCompress()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->f:I

    return v0
.end method

.method public getPingInterval()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->d:Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    return-object v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->b:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 9
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

    const/4 v8, 0x1

    const-wide/32 v6, 0x7fffffff

    const-string v0, "elim"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->h:I

    const-string v0, "mdb"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->g:I

    const-string v0, "mkey"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->j:I

    const-string v0, "mval"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->k:I

    const-string v0, "pint"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->i:I

    const-string v0, "plim"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->l:I

    const-string v1, "ltvid"

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->e:Ljava/lang/Long;

    const-string v0, "mec"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->f:I

    const-string v0, "mr"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->m:I

    const-string v0, "aidl"

    invoke-static {p1, v0, v8, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->o:I

    iget-object v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->b:Lcom/inmobi/commons/uid/UID;

    const-string v0, "ids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    const-string v0, "endpoints"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->d:Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    const-string v0, "tic"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->setFromMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->n:Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    const-string v0, "at"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->setFromMap(Ljava/util/Map;)V

    return-void
.end method
