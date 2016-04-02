.class Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;

    invoke-static {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    const-string v2, "Exception processing function"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
