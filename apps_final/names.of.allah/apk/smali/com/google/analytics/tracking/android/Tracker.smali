.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;


# instance fields
.field private final mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

.field private final mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

.field private final mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private final mName:Ljava/lang/String;

.field private final mParams:Ljava/util/Map;
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

.field private mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

.field private final mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 8

    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    move-result-object v4

    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v5

    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    move-result-object v6

    new-instance v7, Lcom/google/analytics/tracking/android/SendHitRateLimiter;

    invoke-direct {v7}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tracker name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    iput-object p5, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    iput-object p6, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    iput-object p7, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "&ul"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v1, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-virtual {v1, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-virtual {v1, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER_NAME:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getRateLimiter()Lcom/google/analytics/tracking/android/RateLimiter;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    return-object v0
.end method

.method public send(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :cond_1
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/RateLimiter;->tokenAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
