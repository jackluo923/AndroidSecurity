.class public Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;
.super Ljava/lang/Object;
.source "MonitorLogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performance(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;-><init>()V

    .line 26
    const-string/jumbo v1, "O2O_ResponseTime"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setSubType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 29
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;)V

    goto :goto_0
.end method

.method public static performanceExt(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 47
    const-string/jumbo v1, "O2O_ResponseTime"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 50
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 51
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-virtual {v0, p4, p5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    goto :goto_0
.end method
