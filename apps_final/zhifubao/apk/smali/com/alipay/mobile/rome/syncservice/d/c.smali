.class public final Lcom/alipay/mobile/rome/syncservice/d/c;
.super Ljava/lang/Object;
.source "LogUtilSync.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 28
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 67
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/c;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
