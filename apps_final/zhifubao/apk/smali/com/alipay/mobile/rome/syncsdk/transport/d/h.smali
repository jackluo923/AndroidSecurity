.class public final Lcom/alipay/mobile/rome/syncsdk/transport/d/h;
.super Ljava/lang/Object;
.source "PacketListenerImplNotification.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# instance fields
.field private final a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 48
    const-string/jumbo v0, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v1, "processPacket: [ PacketListenerImplNotification ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v2, "processPacket: [ jsonString=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;-><init>()V

    const-string/jumbo v2, "linkToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setUserId(Ljava/lang/String;)V

    const-string/jumbo v2, "msgData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgData(Ljava/lang/String;)V

    const-string/jumbo v2, "msgKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    const-string/jumbo v2, "msgCreateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setTimestamp(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePushMsg:[ msgkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ msgData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v2, "dispatchMsgData: "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/msg/b;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v2, "dispatchMsgData: Duplicated Packet "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "linkToken"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "msgKey"

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 65
    :cond_2
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->b(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)V

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v2, "dispatchMsgData: saved msg "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    const-string/jumbo v2, "dispatchMsgData: [ packetNotifier=null ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

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

    goto :goto_1

    .line 65
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/h;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;->onReceivedPacket(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :catch_1
    move-exception v0

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePacketResponse: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
