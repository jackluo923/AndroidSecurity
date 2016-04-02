.class public Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;
.super Ljava/lang/Object;
.source "TraceLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/LogContextImpl;

.field private b:Z

.field private c:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Ljava/lang/StringBuffer;

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 20
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 53
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 86
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 113
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 97
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 32
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    .line 118
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    .line 125
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 42
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, p1, v2, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 64
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 75
    return-void
.end method
