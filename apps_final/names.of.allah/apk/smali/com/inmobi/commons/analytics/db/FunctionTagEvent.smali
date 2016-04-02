.class public Lcom/inmobi/commons/analytics/db/FunctionTagEvent;
.super Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->c:Ljava/util/Map;

    return-void
.end method

.method private a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 5

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    const-string v1, "ce"

    invoke-direct {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventCustomName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->convertToJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttributeMap(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Please call startSession before calling trackEvent"

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->printWarning(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 1

    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;->a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method
