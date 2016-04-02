.class public Lcom/google/analytics/tracking/android/Log;
.super Ljava/lang/Object;


# static fields
.field private static sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearGaInstance()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getLogger()Lcom/google/analytics/tracking/android/Logger;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isVerbose()Z
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/Logger;->getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->verbose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
