.class public final Lcom/alipay/mobile/rome/syncservice/sync/b;
.super Ljava/lang/Object;
.source "LinkSyncManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/b;->c:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->b:Lcom/alipay/mobile/rome/syncservice/sync/b;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitRegistered: [ user and device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 66
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 70
    const/16 v0, 0x3e9

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 71
    return-void
.end method

.method private static a(ILjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 177
    :goto_1
    return-void

    .line 160
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 163
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v4

    .line 165
    const-string/jumbo v6, "biz"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string/jumbo v0, "sKey"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncBizComm: JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(ILorg/json/JSONArray;)V
    .locals 6

    .prologue
    .line 253
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string/jumbo v1, "sOpCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v1, "sData"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SYNC_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string/jumbo v4, "s"

    const/4 v5, 0x0

    .line 263
    invoke-static {v1, v3, v2, v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->sendPacketUplinkSync(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerBiz: Exception="

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

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBiz: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v1, 0x3eb

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 114
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 186
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncMsg: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;)J

    move-result-wide v2

    .line 200
    const-string/jumbo v4, "biz"

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v4, "sKey"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v2, "md"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 206
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 209
    const/16 v1, 0x7d1

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: JSONException="

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

.method public static a(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncReceivedAck\uff1a "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v0, 0x7d2

    invoke-static {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 231
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitDeviced: [ device based biz ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 83
    const/16 v1, 0x3e9

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 84
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterBiz: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const/16 v1, 0x3ec

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 131
    return-void
.end method

.method public static b(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncHandledAck\uff1a "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/16 v0, 0x7d3

    invoke-static {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILorg/json/JSONArray;)V

    .line 246
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizInitUsered:  [ user based biz]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 96
    const/16 v1, 0x3eb

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 97
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshBiz: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    const/16 v1, 0x3ed

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/Set;)V

    .line 148
    return-void
.end method
