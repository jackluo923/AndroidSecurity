.class public abstract Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;

    return-void
.end method


# virtual methods
.method public getFunctionName()Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->a:Lcom/inmobi/commons/analytics/db/AnalyticsFunctions$FunctionName;

    return-object v0
.end method

.method protected insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->insertEvents(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected printWarning(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "IllegalStateException"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public abstract processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.end method
