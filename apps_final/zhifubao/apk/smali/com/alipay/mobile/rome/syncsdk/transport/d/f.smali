.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/f;
.super Ljava/lang/Object;
.source "PacketListenerImplHeartBeat.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: heartbeat "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastRecvHeartBeatTime(J)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendHeartBeatTime()J

    move-result-wide v2

    .line 53
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "LL_H"

    .line 56
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendHeartBeatTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 55
    invoke-static {v1, v2, v0, v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v0

    .line 66
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V

    .line 68
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getKeepAliveInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startHeartBeatTimer(I)V

    .line 78
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 2

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
