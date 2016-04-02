.class public Lcom/inmobi/commons/analytics/util/SessionInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "APP_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getFirstTime()I
    .locals 2

    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SESSION_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSessionTime(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v3, 0x0

    const-class v2, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v2

    :try_start_0
    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SESSION_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized isUpdatedFromOldSDK(Landroid/content/Context;)Z
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeSessionId(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SESSION_ID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SESSION_TIME"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFirstTime()V
    .locals 2

    const-class v0, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static storeAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/inmobi/commons/analytics/util/SessionInfo;->c:Ljava/lang/String;

    const-string v0, "inmobiAppAnalyticsAppId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APP_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static declared-synchronized storeFirstTime(Landroid/content/Context;)V
    .locals 11

    const-wide/16 v7, -0x1

    const/4 v0, 0x0

    const-class v3, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v3

    :try_start_0
    const-string v1, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v2, "SESSION_TIMEM"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v5, v1, v7

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    move-wide v9, v1

    move v2, v0

    move-wide v0, v9

    :goto_0
    const-string v5, "SESSION_TIMEM"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    const/16 v2, 0xf

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized storeSessionId(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SESSION_ID"

    sget-object v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SESSION_TIME"

    sget-wide v3, Lcom/inmobi/commons/analytics/util/SessionInfo;->b:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updatedFromOldSDK(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/util/SessionInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "UPDATED_FROM_OLD_SDK"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
