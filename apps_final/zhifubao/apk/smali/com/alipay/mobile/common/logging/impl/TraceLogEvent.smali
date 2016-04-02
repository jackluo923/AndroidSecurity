.class public Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;
.super Lcom/alipay/mobile/common/logging/api/LogEvent;
.source "TraceLogEvent.java"


# static fields
.field private static logBuilder:Ljava/lang/StringBuffer; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->logBuilder:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>()V

    .line 13
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->logBuilder:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 14
    const-string/jumbo v0, "applog"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->category:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->tag:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->timeStamp:J

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;->message:Ljava/lang/String;

    .line 23
    return-void
.end method
