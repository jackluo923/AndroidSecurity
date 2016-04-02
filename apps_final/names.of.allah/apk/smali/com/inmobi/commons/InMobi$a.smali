.class final Lcom/inmobi/commons/InMobi$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->setAdvertisingId()V

    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->endSession(Ljava/util/Map;)V

    goto :goto_0
.end method
