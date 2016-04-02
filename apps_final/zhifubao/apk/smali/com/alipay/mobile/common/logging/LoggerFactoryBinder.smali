.class public Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->attachLogContext(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 20
    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    new-instance v2, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    new-instance v3, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->bind(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;)V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b()V

    .line 26
    return-void
.end method
