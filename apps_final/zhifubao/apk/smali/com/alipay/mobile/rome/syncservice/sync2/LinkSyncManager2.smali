.class public final Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;
.super Ljava/lang/Object;
.source "LinkSyncManager2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "sync_service_LinkSyncManager2"

.field private static volatile instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->instance:Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getBizSkey(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBizSkey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 544
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v3

    .line 547
    const-wide/16 v0, 0x0

    .line 549
    const-string/jumbo v4, "userBased"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object p2

    .line 553
    :cond_1
    invoke-virtual {v3, p2, p1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 564
    :goto_0
    return-wide v0

    .line 556
    :cond_2
    const-string/jumbo v4, "deviceBased"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 561
    :cond_3
    const-string/jumbo v2, "sync_service_LinkSyncManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizSkey: [ unkown biz ][ biz="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getBucketKey(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 598
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBucketKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBucketKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 602
    const-string/jumbo v0, "deviceBased"

    invoke-static {p2}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getBucketType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 610
    :goto_0
    return-wide v0

    .line 607
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getDeviceBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    const-string/jumbo v2, "getDeviceBasedBiz: [ device based biz ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method public final getDeviceUserBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 117
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 119
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 121
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "getDeviceUserBasedBiz: [ user and device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v2
.end method

.method public final getInitMsg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    const-string/jumbo v1, ""

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string/jumbo v2, "ver"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string/jumbo v3, "bizs"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    :goto_1
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getInitMsg:  [ initMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v1

    .line 90
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v2, "sync_service_LinkSyncManager2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getInitMsg:  [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceUserBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public final getUserBasedBiz()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    const-string/jumbo v2, "getUserBasedBiz:  [ user based biz]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method public final refreshBiz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshBiz: 1005 (abandoned)[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public final registerBiz(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 155
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerBiz: 1003 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;-><init>()V

    .line 158
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 159
    iput-object p1, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 162
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 163
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iput-object v2, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;->biz_sync_info:Ljava/util/List;

    .line 169
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 175
    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 180
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 182
    array-length v1, v0

    int-to-long v1, v1

    .line 183
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 186
    const-string/jumbo v0, "SYNC_1003"

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 187
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerBiz: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final sendSync1001()V
    .locals 11

    .prologue
    .line 358
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "sendSync1001\uff1a1001"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;

    invoke-direct {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;-><init>()V

    .line 363
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->isNewDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->is_new_device:Ljava/lang/Boolean;

    .line 367
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 368
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v1

    .line 370
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getDevicebasedBucket()Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 376
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 379
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 387
    iput-object v5, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->biz_sync_info:Ljava/util/List;

    .line 390
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 391
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 399
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 400
    iput-object v5, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->bucket_sync_info:Ljava/util/List;

    .line 402
    :cond_1
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 410
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 411
    const/16 v3, 0x3e9

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 413
    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 414
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 416
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 417
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 419
    array-length v1, v0

    int-to-long v1, v1

    .line 420
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 423
    const-string/jumbo v0, "SYNC_1001"

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 424
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    :goto_3
    return-void

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceUserBasedBiz()Ljava/util/Set;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getDeviceUserbasedBucket()Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_0

    .line 379
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    new-instance v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 381
    iput-object v0, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 382
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 384
    invoke-virtual {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001:  [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 391
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    new-instance v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;

    invoke-direct {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;-><init>()V

    .line 393
    iput-object v0, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->bucket_type:Ljava/lang/String;

    .line 394
    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBucketKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 396
    invoke-virtual {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final sendSync3001()V
    .locals 10

    .prologue
    .line 435
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "sendSync3001\uff1a3001"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;-><init>()V

    .line 440
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 441
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "sendSync3001\uff1a[ userId isEmpty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getUserBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 446
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getUserbasedBucket()Ljava/util/Set;

    move-result-object v3

    .line 448
    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->user_id:Ljava/lang/String;

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 452
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    iput-object v5, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->biz_sync_info:Ljava/util/List;

    .line 465
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 466
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 474
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 475
    iput-object v5, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->bucket_sync_info:Ljava/util/List;

    .line 477
    :cond_2
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync3001\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 485
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 486
    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 488
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 489
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 491
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 492
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 494
    array-length v1, v0

    int-to-long v1, v1

    .line 495
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 498
    const-string/jumbo v0, "SYNC_3001"

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 499
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync3001:  [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    new-instance v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 455
    iput-object v0, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 456
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 458
    invoke-virtual {v7}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v7, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 466
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    new-instance v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;

    invoke-direct {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;-><init>()V

    .line 468
    iput-object v0, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->bucket_type:Ljava/lang/String;

    .line 469
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBucketKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 471
    invoke-virtual {v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v6, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final sendSync3002()V
    .locals 5

    .prologue
    .line 510
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "sendSync3002\uff1a3002"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 517
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 519
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 520
    const/16 v2, 0xbba

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 522
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 523
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 525
    array-length v1, v0

    int-to-long v1, v1

    .line 526
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 529
    const-string/jumbo v0, "SYNC_3002"

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 530
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSync1001:  [ Exception="

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
.end method

.method public final sendSyncHandledAck2003(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5

    .prologue
    .line 312
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    const-string/jumbo v1, "sendSyncHandledAck\uff1a2003 "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :try_start_0
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;-><init>()V

    .line 317
    new-instance v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;

    invoke-direct {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;-><init>()V

    .line 318
    iput-object p2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 319
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 320
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    .line 322
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 323
    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iput-object v2, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->biz_sync_info:Ljava/util/List;

    .line 328
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 333
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 334
    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 336
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 337
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 340
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 342
    array-length v1, v0

    int-to-long v1, v1

    .line 343
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 346
    const-string/jumbo v0, "SYNC_2003"

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 347
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncHandledAck: [ TException="

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
.end method

.method public final sendSyncMsg2004(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 255
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSyncMsg: 2004 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v0

    .line 260
    new-instance v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;

    invoke-direct {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;-><init>()V

    .line 261
    iput-object p1, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->biz_type:Ljava/lang/String;

    .line 262
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->sync_key:Ljava/lang/Long;

    .line 264
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;-><init>()V

    .line 266
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v3, "appId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->app_id:Ljava/lang/String;

    .line 268
    const-string/jumbo v3, "mId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->m_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;

    .line 269
    const-string/jumbo v3, "pl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->payload(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;

    .line 270
    const-string/jumbo v3, "toId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->to_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;

    .line 272
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    .line 275
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 281
    const/16 v3, 0x7d4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 282
    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 283
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 285
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 286
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 288
    array-length v1, v0

    int-to-long v1, v1

    .line 289
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 292
    const-string/jumbo v0, "SYNC_2004"

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    const/4 v4, 0x0

    .line 293
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 297
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setBizSkey(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->setBizSkey(Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setBizSkey(Ljava/lang/String;JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 572
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v1

    .line 576
    const-string/jumbo v2, "userBased"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 577
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object p4

    .line 581
    :cond_1
    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;J)V

    .line 592
    :goto_0
    return-wide p2

    .line 584
    :cond_2
    const-string/jumbo v2, "deviceBased"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 589
    :cond_3
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBizSkey: [ unkown biz ][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setBucketKey(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 614
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->setBucketKey(Ljava/lang/String;Ljava/lang/String;J)V

    .line 615
    return-void
.end method

.method public final setBucketKey(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 618
    const-string/jumbo v0, "deviceBased"

    invoke-static {p2}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getBucketType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;J)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final unRegisterBiz(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 203
    const-string/jumbo v0, "sync_service_LinkSyncManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterBiz: 1004 [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;

    invoke-direct {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;-><init>()V

    .line 206
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 207
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iput-object v1, v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->biz:Ljava/util/List;

    .line 212
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 218
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 219
    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 220
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 222
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 223
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 225
    array-length v1, v0

    int-to-long v1, v1

    .line 226
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->sendPacketUplinkSync([B)V

    .line 229
    const-string/jumbo v0, "SYNC_1004"

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 230
    invoke-static {v0, v3, v1, v2, v4}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v1, "sync_service_LinkSyncManager2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterBiz: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
