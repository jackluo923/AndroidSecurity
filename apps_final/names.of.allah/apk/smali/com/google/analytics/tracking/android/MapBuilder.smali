.class public Lcom/google/analytics/tracking/android/MapBuilder;
.super Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    return-void
.end method

.method static booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public static createAppView()Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_APP_VIEW:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v1, "&t"

    const-string v2, "appview"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v0
.end method

.method public static createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 5

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v1, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v0, "&t"

    const-string v2, "event"

    invoke-virtual {v1, v0, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ec"

    invoke-virtual {v1, v0, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ea"

    invoke-virtual {v1, v0, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&el"

    invoke-virtual {v1, v0, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&ev"

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createException(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v1, "&t"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v1, "&exd"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v1, "&exf"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/MapBuilder;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v0
.end method

.method public static createItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_ITEM:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v2, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v2}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v0, "&t"

    const-string v3, "item"

    invoke-virtual {v2, v0, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ti"

    invoke-virtual {v2, v0, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ic"

    invoke-virtual {v2, v0, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&in"

    invoke-virtual {v2, v0, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&iv"

    invoke-virtual {v2, v0, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v3, "&ip"

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&iq"

    if-nez p5, :cond_1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&cu"

    invoke-virtual {v2, v0, p6}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v2

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static createSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v0, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v1, "&t"

    const-string v2, "social"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v1, "&sn"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v1, "&sa"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v1, "&st"

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v0
.end method

.method public static createTiming(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 4

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v1, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v0, "&t"

    const-string v2, "timing"

    invoke-virtual {v1, v0, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&utc"

    invoke-virtual {v1, v0, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "&utt"

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&utv"

    invoke-virtual {v1, v0, p2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&utl"

    invoke-virtual {v1, v0, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v1
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v2, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v2}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    const-string v0, "&t"

    const-string v3, "transaction"

    invoke-virtual {v2, v0, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ti"

    invoke-virtual {v2, v0, p0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ta"

    invoke-virtual {v2, v0, p1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v3, "&tr"

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v3, "&tt"

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&ts"

    if-nez p4, :cond_2

    :goto_2
    invoke-virtual {v2, v0, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v0, "&cu"

    invoke-virtual {v2, v0, p5}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    return-object v2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_0
    const-string v0, " MapBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAll(Ljava/util/Map;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/tracking/android/MapBuilder;"
        }
    .end annotation

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_ALL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MapBuilder;->map:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;
    .locals 3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_CAMPAIGN_PARAMS:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    invoke-static {p1}, Lcom/google/analytics/tracking/android/Utils;->filterCampaign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    goto :goto_0
.end method
