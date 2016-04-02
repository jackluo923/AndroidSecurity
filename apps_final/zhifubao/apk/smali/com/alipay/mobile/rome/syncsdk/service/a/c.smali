.class public final Lcom/alipay/mobile/rome/syncsdk/service/a/c;
.super Ljava/lang/Object;
.source "ConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 48
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 118
    const-string/jumbo v0, "sync_link_ConnectTask"

    const-string/jumbo v1, "connectByHttps: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " switch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v3

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string/jumbo v5, "CONN_SSL"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v6

    .line 134
    invoke-static {v5, v3, v0, v4, v6}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v3, "sync_link_ConnectTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "connectByHttps: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string/jumbo v4, "connectFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "consume:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " e:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v0, "EXP_LL"

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 150
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 160
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f()V

    .line 163
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 164
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->h()V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 168
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startDelayedConnectTimer(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(I)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnectStartTime(J)V

    .line 271
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->c()V

    .line 273
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d()V

    .line 275
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->e()V

    .line 278
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    .line 279
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/d/a;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onConnectSucceeded()V

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendRegisterPacket()V

    .line 288
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    .line 179
    const-string/jumbo v0, "sync_link_ConnectTask"

    const-string/jumbo v1, "connectBySpdy: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V

    .line 187
    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    .line 187
    invoke-direct {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/b/a;)V

    .line 189
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->a(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " switch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string/jumbo v5, "CONN_SPDY"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v6

    .line 199
    invoke-static {v5, v3, v0, v4, v6}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string/jumbo v3, "sync_link_ConnectTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "connectBySpdy: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string/jumbo v4, "connectFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "consume:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " e:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v0, "EXP_SPDY"

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 215
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 225
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f()V

    .line 228
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 231
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    .line 235
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isMobileNetType(Landroid/content/Context;)Z

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 241
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v1

    .line 242
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getSpdyWaitTimeout(Z)I

    move-result v0

    .line 241
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startSpdyWaitTimer(I)V

    goto/16 :goto_0

    .line 249
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-string/jumbo v0, "switch"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 255
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto/16 :goto_0
.end method

.method private c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_0

    .line 299
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 299
    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getPort()I

    move-result v2

    .line 309
    new-instance v3, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-direct {v3, v1, v2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;-><init>(Ljava/lang/String;ILcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getSSLFlag()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->a(Z)V

    .line 314
    return-object v3

    .line 302
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 56
    const-string/jumbo v0, "sync_link_ConnectTask"

    const-string/jumbo v1, "run: [ ConnectTask ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "sync_link_ConnectTask"

    const-string/jumbo v1, "run: ConnectTask: [ already connected ] [ isConnected=ture ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string/jumbo v0, "sync_link_ConnectTask"

    const-string/jumbo v1, "run: ConnectTask: [ new link should not get here ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 71
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->AddConnSeq()V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 82
    const-string/jumbo v1, "sync_link_ConnectTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectTask: run: [ transChannel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isBackToFront()Z

    move-result v1

    .line 86
    const-string/jumbo v2, "sync_link_ConnectTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ConnectTask: run: [ transChannel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ isBackToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setBackToFront(Z)V

    .line 90
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    .line 91
    const-string/jumbo v1, "ssl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c()V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b()V

    goto/16 :goto_0

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a()V

    goto/16 :goto_0

    .line 105
    :cond_3
    const-string/jumbo v1, "spdy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b()V

    goto/16 :goto_0

    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a()V

    goto/16 :goto_0
.end method
