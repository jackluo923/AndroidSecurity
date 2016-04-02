.class public final Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;
.super Ljava/lang/Object;
.source "MonitorErrorLogHelper.java"


# static fields
.field public static final D:I = 0x2

.field public static final E:I = 0x5

.field public static final I:I = 0x3

.field public static final V:I = 0x1

.field public static final W:I = 0x4

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public static final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public static final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static final logExt(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 65
    sget v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ERROR_LOG_LEVEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    .line 69
    :cond_0
    const-string/jumbo v0, "MonitorErrorLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CONFIG_LOG_LEVEL=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    if-lt p0, v0, :cond_1

    .line 73
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_1
    return-void
.end method

.method public static final verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public static final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method
