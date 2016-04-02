.class Lcom/google/analytics/tracking/android/FlowMonitor;
.super Ljava/lang/Object;


# static fields
.field static final HITS_DISPATCHED:Ljava/lang/String; = "hitsDispatched"

.field static final HITS_DISPATCHED_PARAM:Ljava/lang/String; = "_s"

.field static final HITS_GENERATED:Ljava/lang/String; = "hitsGenerated"

.field static final HITS_GENERATED_PARAM:Ljava/lang/String; = "_g"

.field static final HITS_PAST_PROXY:Ljava/lang/String; = "hitsPastProxy"

.field static final HITS_PAST_PROXY_PARAM:Ljava/lang/String; = "_p"

.field static final HITS_STORED_IN_DB:Ljava/lang/String; = "hitsStoredInDb"

.field static final HITS_STORED_IN_DB_PARAM:Ljava/lang/String; = "_d"

.field private static final HIT_INTERVAL:I = 0x32

.field static final LAST_QUERY_TIMESTAMP:Ljava/lang/String; = "lastQueryTimestamp"

.field static final LAST_QUERY_TIMESTAMP_PARAM:Ljava/lang/String; = "_ts"

.field static final MONITOR_TYPE:Ljava/lang/String; = "flow"

.field static final MONITOR_TYPE_PARAM:Ljava/lang/String; = "_t"

.field static final PREFERENCES_LABEL:Ljava/lang/String; = "GoogleAnalytics"

.field private static final TIME_INTERVAL:J = 0xdbba00L

.field private static sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;


# instance fields
.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHitsDispatched:I

.field private mHitsGenerated:I

.field private mHitsPastProxy:I

.field private mHitsStoredInDb:I

.field private mLastQueryTimeStamp:J

.field mPersistentStore:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GoogleAnalytics"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v1, "hitsGenerated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v1, "hitsPastProxy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v1, "hitsStoredInDb"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v1, "hitsDispatched"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v1, "lastQueryTimestamp"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastQueryTimestamp"

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/FlowMonitor;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/FlowMonitor;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/FlowMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    return-object v0
.end method


# virtual methods
.method public buildAndResetHitsDispatched()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hitsDispatched"

    iget v3, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateHit()Ljava/util/Map;
    .locals 5
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

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_t"

    const-string v2, "flow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_ts"

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "lastQueryTimestamp"

    iget-wide v3, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "_g"

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/FlowMonitor;->getAndResetHitsGeneratedParameter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getAndResetHitsGeneratedParameter()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hitsGenerated"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method public getAndResetHitsPastProxy()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hitsPastProxy"

    iget v3, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method public getAndResetHitsStoredInDb()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hitsStoredInDb"

    iget v3, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method public incrementHitsDispatched(I)V
    .locals 2

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsDispatched"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public incrementHitsGenerated(I)V
    .locals 2

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsGenerated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public incrementHitsPastProxy(I)V
    .locals 2

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsPastProxy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public incrementHitsStoredInDb(I)V
    .locals 2

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsStoredInDb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public shouldReport()Z
    .locals 4

    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
