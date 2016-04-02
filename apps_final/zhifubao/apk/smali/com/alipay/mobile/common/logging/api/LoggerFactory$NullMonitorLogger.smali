.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 191
    return-void
.end method

.method public exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 174
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 175
    return-void
.end method

.method public footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 186
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 0

    .prologue
    .line 179
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 180
    return-void
.end method
