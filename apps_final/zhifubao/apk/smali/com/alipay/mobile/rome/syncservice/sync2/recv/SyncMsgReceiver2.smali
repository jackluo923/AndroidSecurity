.class public Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;
.super Ljava/lang/Object;
.source "SyncMsgReceiver2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "sync_service_SyncMsgReceiver2"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
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
    .line 325
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

    const-string/jumbo v1, "dispatchSyncPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    :cond_0
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

    const-string/jumbo v1, "dispatchSyncPacket: syncPacketArr null or size==0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    return-void

    .line 332
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

    .line 334
    :try_start_0
    iget-boolean v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    if-eqz v2, :cond_3

    .line 335
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string/jumbo v2, "sync_service_SyncMsgReceiver2"

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

    .line 337
    :cond_3
    :try_start_1
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

    const-string/jumbo v2, "dispatchSyncPacket: [ syncPacket.needDisptch=false ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V
    .locals 9
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
    .line 356
    :try_start_0
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;-><init>()V

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 361
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iput-object v3, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->biz_sync_info:Ljava/util/List;

    .line 383
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 384
    if-eqz v0, :cond_0

    .line 385
    new-instance v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;

    invoke-direct {v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;-><init>()V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 388
    iget-object v6, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 387
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBucketKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 389
    iget-object v6, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    iput-object v6, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->bucket_type:Ljava/lang/String;

    .line 390
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 392
    invoke-virtual {v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

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

    .line 398
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 401
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 403
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 404
    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 405
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 406
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 408
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 409
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 411
    array-length v1, v0

    int-to-long v1, v1

    .line 412
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 415
    const-string/jumbo v3, "SYNC_2002"

    .line 416
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 417
    const-string/jumbo v0, "count"

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 421
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    iget-wide v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v3, v5, v2, v0, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    :goto_2
    return-void

    .line 361
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 364
    iget-object v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 368
    iget-wide v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    .line 369
    iput-wide v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 372
    :cond_2
    new-instance v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 373
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 374
    iget-wide v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 375
    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    .line 376
    invoke-virtual {v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
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

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

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

    goto/16 :goto_2

    .line 421
    :cond_3
    const-wide/16 v0, 0x0

    goto/16 :goto_1
.end method

.method private preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;I)Ljava/util/ArrayList;
    .locals 17
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
    .line 171
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 173
    const/4 v1, 0x0

    .line 175
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 176
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const/4 v1, 0x1

    move v2, v1

    .line 184
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 187
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    .line 189
    const-string/jumbo v8, "SYNC_2001"

    .line 193
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v9

    .line 194
    const-string/jumbo v1, "count"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 196
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 197
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v8, v10, v11, v1, v9}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    const/4 v1, 0x0

    .line 201
    const-wide/16 v3, 0x0

    .line 202
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 294
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 295
    if-eqz v1, :cond_1

    .line 296
    iget-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 297
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    .line 298
    iget-object v5, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 297
    invoke-virtual {v4, v6, v5}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBucketKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 300
    const-string/jumbo v8, "sync_service_SyncMsgReceiver2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preHandlePacket:  [ bucket_type="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ][ key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ][ currKey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 302
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 300
    invoke-static {v8, v9}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 305
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    .line 306
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    .line 305
    invoke-virtual {v4, v6, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->setBucketKey(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    return-object v7

    .line 179
    :cond_2
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    const-string/jumbo v2, "preHandlePacket: [ packet no userId or cdid ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "packet no userId or cdid"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    const-wide/16 v3, 0x0

    goto/16 :goto_1

    .line 202
    :cond_4
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    .line 204
    new-instance v9, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v9}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 206
    iput-object v6, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 207
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 208
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 210
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 211
    iget-object v10, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 214
    if-eqz v2, :cond_8

    .line 215
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 216
    :cond_5
    const-string/jumbo v10, "userBased"

    .line 217
    iget-object v11, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v11}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 218
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 223
    :goto_3
    iget-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 224
    :cond_6
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    const-string/jumbo v2, "preHandlePacket: [ global online push packet no userId or cdid ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "global online push packet no userId or cdid"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    const-string/jumbo v2, "sync_service_SyncMsgReceiver2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preHandlePacket: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    throw v1

    .line 220
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    goto :goto_3

    .line 230
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v10

    iget-object v11, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 233
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    .line 234
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 260
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_d

    .line 261
    const-string/jumbo v1, ""

    iput-object v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 266
    :goto_5
    if-lez v5, :cond_9

    .line 267
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "preHandlePacket: [ Replication packet ] [ localSyncKey="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ][ mk="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 269
    const-string/jumbo v13, " ][ replicationPacketNum="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 267
    invoke-static {v1, v12}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_9
    iget-wide v12, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v1, v12, v10

    if-lez v1, :cond_e

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 287
    :goto_6
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "preHandlePacket:  [ syncPacket="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 236
    :cond_a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    .line 237
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 238
    const-string/jumbo v15, "mk"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string/jumbo v15, "st"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v15, "bId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v15, "mId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v15, "isSc"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v15, "appId"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v15, "ext"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v15, "mct"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    iget-object v15, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    if-eqz v15, :cond_b

    iget-object v15, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 247
    const-string/jumbo v15, "pl"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :goto_7
    iget-object v15, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v10

    if-lez v15, :cond_c

    .line 254
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 249
    :cond_b
    const-string/jumbo v15, "pl"

    iget-object v0, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v15, "isB"

    const-string/jumbo v16, "1"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 256
    :cond_c
    iget-object v1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 263
    :cond_d
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    goto/16 :goto_5

    .line 277
    :cond_e
    iget-object v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 278
    iget-object v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    const-string/jumbo v12, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    const-string/jumbo v12, "2"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 279
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 282
    :cond_10
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "preHandlePacket: [ Replication packet ] [ localSyncKey="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ][ newSyncKey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 284
    iget-wide v11, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ][ pf="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 282
    invoke-static {v1, v10}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :cond_11
    move v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public recvSyncMsg([B)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 72
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvSyncMsg: [ syncMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    .line 77
    shl-int/lit8 v0, v0, 0x8

    .line 78
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 79
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 86
    const/4 v1, 0x3

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 87
    const-class v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 90
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->preHandlePacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->handlePacketResponse(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V

    .line 156
    :goto_0
    return-void

    .line 99
    :cond_0
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_1

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 104
    const/4 v2, 0x3

    array-length v3, p1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 105
    const-class v3, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    .line 104
    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    .line 107
    new-instance v2, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 108
    iget-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    .line 112
    iget-object v4, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    .line 114
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 115
    const-string/jumbo v6, "mk"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v6, "mId"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v6, "appId"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v6, "st"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v6, "isSc"

    iget-object v7, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v6, "ext"

    iget-object v4, v4, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v4, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 125
    const-string/jumbo v4, ""

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 127
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 128
    const-string/jumbo v4, ""

    iput-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 129
    iget-object v0, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 130
    iput-object v3, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "sync_service_SyncMsgReceiver2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recvSyncMsg: [ mdJson="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->dispatchSyncPacket(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

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

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string/jumbo v2, "recvPacketErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v0, "SYNC_EXP"

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    .line 153
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 151
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    :try_start_1
    const-string/jumbo v1, "sync_service_SyncMsgReceiver2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: unkown sOpcode [ sOpcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
