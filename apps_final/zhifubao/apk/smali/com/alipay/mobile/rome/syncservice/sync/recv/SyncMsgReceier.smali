.class public Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;
.super Ljava/lang/Object;
.source "SyncMsgReceier.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "sync_service_SyncMsgReceier"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;


# instance fields
.field private volatile context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private dispatchSyncPacket(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v1, "dispatchSyncPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_0
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v1, "dispatchSyncPacket: syncPacketArr null or size==0 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    return-void

    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 225
    :try_start_0
    iget-boolean v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    if-eqz v2, :cond_3

    .line 226
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string/jumbo v2, "sync_service_SyncMsgReceier"

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

    .line 228
    :cond_3
    :try_start_1
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v2, "dispatchSyncPacket: [ syncPacket.needDisptch=false ] "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->instance:Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handlePacketResponse(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v1, "handlePacketResponse: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    const-string/jumbo v0, "sOpCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    .line 251
    const-string/jumbo v1, "sync_service_SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse: don\'t need response [ sOpCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string/jumbo v1, "sync_service_SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse:1 [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 263
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {v5}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/c;

    .line 265
    :try_start_1
    iget-object v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 266
    iget-wide v3, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 270
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 273
    cmp-long v8, v3, v1

    if-gez v8, :cond_4

    .line 277
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 278
    const-string/jumbo v4, "biz"

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string/jumbo v4, "sKey"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 281
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    const-string/jumbo v1, "pf"

    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    const-string/jumbo v1, "hm"

    iget-object v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_3
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v0

    .line 291
    const-string/jumbo v1, "sync_service_SyncMsgReceier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse:2 [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-wide v1, v3

    goto :goto_2
.end method

.method private preHandlePacket(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x7d2

    const/4 v1, 0x0

    .line 103
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v2, "preHandlePacket: "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "sData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v3, "cdid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "preHandlePacket: [ userId not equals ] [ currUserId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "packet userId not equals with client userId"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_1
    const-string/jumbo v3, "sOpCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 132
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    :cond_2
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preHandlePacket: [ sData="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "[ sData is empty ]"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_3
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    const-string/jumbo v1, "preHandlePacket: [ packet no userId or cdid ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "packet no userId or cdid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SYNC_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    const/16 v7, 0x3e9

    if-eq v3, v7, :cond_5

    const/16 v7, 0x3eb

    if-eq v3, v7, :cond_5

    const/16 v7, 0x3ec

    if-ne v3, v7, :cond_6

    .line 146
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 148
    const-string/jumbo v8, "r"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v9

    .line 147
    invoke-static {v6, v7, v2, v8, v9}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 206
    return-object v4

    .line 149
    :cond_6
    const/16 v7, 0x7d1

    if-eq v3, v7, :cond_7

    if-ne v3, v11, :cond_8

    .line 150
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v7

    .line 152
    const-string/jumbo v8, "count"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "sKey"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-static {v6, v8, v2, v9, v7}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string/jumbo v1, "sync_service_SyncMsgReceier"

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

    .line 203
    throw v0

    .line 156
    :cond_8
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 158
    const-string/jumbo v8, "r"

    const/4 v9, 0x0

    .line 157
    invoke-static {v6, v7, v2, v8, v9}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 163
    :cond_9
    new-instance v2, Lcom/alipay/mobile/rome/syncservice/sync/c;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c;-><init>()V

    .line 165
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 167
    iput-object v0, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 168
    const-string/jumbo v7, "biz"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 169
    const-string/jumbo v7, "sKey"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 170
    const-string/jumbo v7, "md"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    .line 171
    const-string/jumbo v7, "pf"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    .line 172
    const-string/jumbo v7, "hm"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v6

    iget-object v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 178
    iget-wide v8, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_b

    .line 180
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 194
    :goto_1
    if-ne v3, v11, :cond_a

    .line 195
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 199
    :cond_a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 183
    :cond_b
    iget-object v8, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 184
    iget-object v8, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    const-string/jumbo v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 185
    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Z

    .line 188
    :cond_d
    const-string/jumbo v8, "sync_service_SyncMsgReceier"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "preHandlePacket: [ Replication packet ] [ localSyncKey="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ][ newSyncKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 190
    iget-wide v9, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ][ pf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {v8, v6}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public recvSyncMsg(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 61
    const-string/jumbo v0, "sync_service_SyncMsgReceier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvSyncMsg: [ syncMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->preHandlePacket(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->dispatchSyncPacket(Ljava/util/ArrayList;)V

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/SyncMsgReceier;->handlePacketResponse(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v1, "sync_service_SyncMsgReceier"

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

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string/jumbo v2, "recvPacketErr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v0, "SYNC_EXP"

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    .line 87
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 85
    invoke-static {v0, v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
