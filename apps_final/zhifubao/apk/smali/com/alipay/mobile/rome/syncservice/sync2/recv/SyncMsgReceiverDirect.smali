.class public Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;
.super Ljava/lang/Object;
.source "SyncMsgReceiverDirect.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "sync_service_SyncMsgReceiverDirect"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    const-string/jumbo v1, "dispatchSyncPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 183
    :cond_0
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    const-string/jumbo v1, "dispatchSyncPacket: syncPacketArr null or size==0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    return-void

    .line 187
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 189
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->processSyncDirectData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v2, "sync_service_SyncMsgReceiverDirect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dispatchMsgData: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;-><init>()V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 212
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput-object v3, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->biz_sync_info:Ljava/util/List;

    .line 224
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendSync2002\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 232
    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 233
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 234
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 236
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 237
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 239
    array-length v1, v0

    int-to-long v1, v1

    .line 240
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 243
    const-string/jumbo v3, "SYNC_2002"

    .line 244
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v0

    .line 245
    const-string/jumbo v4, "count"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 249
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v1

    .line 247
    invoke-static {v3, v4, v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    :goto_2
    return-void

    .line 212
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 213
    new-instance v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 214
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 215
    iget-wide v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 216
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    .line 218
    invoke-virtual {v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string/jumbo v1, "sync_service_SyncMsgReceiverDirect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync2002:  [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 125
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    const-string/jumbo v1, "preHandlePacket: [ packet no userId or cdid ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "packet no userId or cdid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    const-string/jumbo v0, "SYNC_2001"

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 134
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    return-object v2

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    .line 143
    new-instance v4, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v4}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 145
    iput-object v1, v4, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 146
    iget-object v5, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 147
    iget-object v5, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 149
    iget-object v5, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 152
    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preHandlePacket:  [ syncPacket="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "sync_service_SyncMsgReceiverDirect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preHandlePacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    throw v0

    .line 154
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    .line 156
    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public recvSyncDirectMsg([B)V
    .locals 5

    .prologue
    .line 62
    const-string/jumbo v0, "sync_service_SyncMsgReceiverDirect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvSyncDirectMsg: [ syncMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 67
    shl-int/lit8 v0, v0, 0x8

    .line 68
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 70
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    .line 74
    :try_start_0
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 77
    const/4 v1, 0x3

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 78
    const-class v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 81
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V

    .line 107
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v1, "sync_service_SyncMsgReceiverDirect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: unkown sOpcode [ sOpcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, "sync_service_SyncMsgReceiverDirect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string/jumbo v2, "recvDirectPacketErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v0, "SYNC_EXP"

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    .line 104
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 102
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
