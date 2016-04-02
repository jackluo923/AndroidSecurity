.class public Lcom/inmobi/commons/internal/CommonsConfig;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

.field private static b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;


# instance fields
.field private c:Lcom/inmobi/commons/metric/MetricConfigParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->a:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    sput-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/metric/MetricConfigParams;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    return-void
.end method

.method protected static getLogLevelConfig()I
    .locals 1

    sget-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getApiStatsConfig()Lcom/inmobi/commons/metric/MetricConfigParams;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    return-object v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
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

    const-string v0, "AND"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v2}, Lcom/inmobi/commons/uid/UID;-><init>()V

    const-string v0, "ids"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getCommonsUid()Lcom/inmobi/commons/uid/UID;

    move-result-object v2

    const-string v0, "ids"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    const-string v0, "ll"

    const/4 v2, 0x0

    const-wide/16 v3, 0x2

    invoke-static {v1, v0, v2, v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->getLogLevelValue(J)Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/CommonsConfig;->b:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    iget-object v2, p0, Lcom/inmobi/commons/internal/CommonsConfig;->c:Lcom/inmobi/commons/metric/MetricConfigParams;

    const-string v0, "api"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/metric/MetricConfigParams;->setFromMap(Ljava/util/Map;)V

    return-void
.end method
