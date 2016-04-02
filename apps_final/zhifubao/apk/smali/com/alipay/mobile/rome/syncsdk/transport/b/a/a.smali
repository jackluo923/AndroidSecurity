.class public final Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;
.super Ljava/lang/Object;
.source "SpdyCallBackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;


# instance fields
.field private a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/b/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized onConnected()V
    .locals 3

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected: [ SpdyCallBackImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnected:  [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected: [ connManager=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected: [ already connected ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->isSpdyWaitTimerSubmitted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopSpdyWaitTimer()V

    .line 84
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized onConnecting()V
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnecting - channel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 91
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDisconnected()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onDisconnected: [ SpdyCallBackImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnected:  [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onRecvData([B)V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onRecvData: [ SpdyCallBackImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvData: [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string/jumbo v0, "sync_link_SpdyCallBackImpl"

    const-string/jumbo v1, "onRecvData: [ SpdyCallBackImpl ] [ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
