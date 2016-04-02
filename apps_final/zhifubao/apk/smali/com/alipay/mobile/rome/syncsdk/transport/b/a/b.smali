.class public final Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;
.super Ljava/lang/Object;
.source "SpdyConnectionAdaptor.java"


# direct methods
.method public static declared-synchronized a([B)I
    .locals 5

    .prologue
    .line 115
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->writeData([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 123
    :try_start_1
    const-string/jumbo v2, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeData: [ SpdyConnectionAdaptor ] [ ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit v1

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_2
    const-string/jumbo v2, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeData: [ SpdyConnectionAdaptor ] [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "spdy writeData exception"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)V
    .locals 5

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyConnectionAdaptor"

    const-string/jumbo v2, "register: [ SpdyConnectionAdaptor ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->register(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    monitor-exit v1

    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_2
    const-string/jumbo v2, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "register: [ SpdyConnectionAdaptor ] [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 5

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyConnectionAdaptor"

    const-string/jumbo v2, "connect: [ SpdyConnectionAdaptor ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->asynConnect()V

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->isConnected()Z

    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "spdy connect return false"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    const-string/jumbo v2, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "connect: [ SpdyConnectionAdaptor ] [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "spdy connect exception "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 40
    :cond_0
    monitor-exit v1

    return v0
.end method

.method public static declared-synchronized b()V
    .locals 5

    .prologue
    .line 78
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_SpdyConnectionAdaptor"

    const-string/jumbo v2, "disconnect: [ SpdyConnectionAdaptor ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_2
    const-string/jumbo v2, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "disconnect: [ SpdyConnectionAdaptor ] [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "spdy disconnect Exception"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .locals 6

    .prologue
    .line 94
    const-class v2, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;

    monitor-enter v2

    const/4 v1, 0x0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 101
    :goto_0
    :try_start_1
    const-string/jumbo v1, "sync_link_SpdyConnectionAdaptor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isConnected: [ SpdyConnectionAdaptor ] [ isConnected="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v2

    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    const-string/jumbo v3, "sync_link_SpdyConnectionAdaptor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isConnected: [ SpdyConnectionAdaptor ] [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
