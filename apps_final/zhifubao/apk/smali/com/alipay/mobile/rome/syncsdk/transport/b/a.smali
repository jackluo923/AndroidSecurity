.class public final Lcom/alipay/mobile/rome/syncsdk/transport/b/a;
.super Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
.source "LongSpdyConnection.java"


# instance fields
.field private volatile d:Landroid/content/Context;

.field private volatile e:Z

.field private volatile f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

.field private volatile g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

.field private h:Ljava/io/PipedInputStream;

.field private i:Ljava/io/PipedOutputStream;

.field private j:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 4

    .prologue
    .line 131
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "sendPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    if-nez p1, :cond_1

    .line 137
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Packet is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    throw v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 269
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyError: [ LongSpdyConnection ] [ Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string/jumbo v1, "connectionErr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, "EXP_SPDY"

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 276
    invoke-static {v1, v2, v0, v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    :cond_0
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "onError: [ LongSpdyConnection ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isMobileNetType(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getSpdyWaitTimeout(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startSpdyWaitTimer(I)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_3
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "switch"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvData: [ data.len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecvData: [ IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->a()Z

    move-result v0

    .line 207
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connect: spdy [ ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "setConnected: [ isConnected=true ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 122
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "initReaderWriter: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/c;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j:Ljava/io/OutputStream;

    .line 183
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    .line 184
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    .line 186
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    .line 187
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 177
    :catch_0
    move-exception v0

    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket: [ Exception="

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

    .line 192
    :catch_1
    move-exception v0

    .line 193
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initReaderWriter: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    throw v0
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "disconnect: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :goto_1
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_3

    .line 245
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :goto_2
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    .line 254
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    :goto_3
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: shutdown[ Exception "

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

    .line 237
    :catch_1
    move-exception v0

    .line 238
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: reader close[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :catch_2
    move-exception v0

    .line 247
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: writer close[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    :catch_3
    move-exception v0

    .line 256
    const-string/jumbo v1, "sync_link_LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: [ call SpdyConnectionAdaptor ][ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    const-string/jumbo v1, "onDisconnected: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " onDisconnected LongSpdyConnection "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a(Ljava/lang/Exception;)V

    .line 100
    return-void
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 109
    const-string/jumbo v0, "sync_link_LongSpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isConnected: [ isConnected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    return v0
.end method
