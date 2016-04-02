.class public Lcom/alipay/mobile/common/logging/api/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected category:Ljava/lang/String;

.field protected level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field protected message:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 42
    iput-object p4, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    return-wide v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLevel(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 63
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method
