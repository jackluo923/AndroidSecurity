.class public final Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;
.super Ljava/lang/Object;
.source "LongLinkManager2.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;


# instance fields
.field private volatile c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->b:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init: [ callback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "init: [ callback=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->getLinkState()Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMmtpSwitchOn()Z
    .locals 4

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledAmnet(Landroid/content/Context;)Z

    move-result v0

    .line 219
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isMmtpSwitchOn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final isNewDevice()Z
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/a;->a()Lcom/alipay/mobile/rome/syncsdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public final onLinkOk()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onLinkOk\uff1a "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->onLinkOk()V

    goto :goto_0
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLinkState\uff1a [ linkState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method

.method public final onReceiveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveData\uff1a [appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceiveData([B)V
    .locals 3

    .prologue
    .line 152
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveData\uff1a [data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacketSync([B)V

    goto :goto_0
.end method

.method public final onReceiveDirectData([B)V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveDirectData\uff1a [data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceiverDirectData\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->c:Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;->processPacketSyncDirect([B)V

    goto :goto_0
.end method

.method public final processSyncDirectData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processSyncDirectData\uff1a [data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "sync_link_PacketListenerImplNotification2"

    const-string/jumbo v1, "processPacket: [ PacketListenerImplNotification ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;-><init>()V

    const-string/jumbo v2, "linkToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setUserId(Ljava/lang/String;)V

    const-string/jumbo v2, "msgData"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgData(Ljava/lang/String;)V

    const-string/jumbo v2, "msgKey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    const-string/jumbo v2, "msgCreateTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setTimestamp(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    const-string/jumbo v0, "sync_link_PacketListenerImplNotification2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handlePushMsg:[ msgkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ msgData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/msg/b;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->a(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "sync_link_PacketListenerImplNotification2"

    const-string/jumbo v1, "dispatchMsgData: Duplicated Packet "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/msg/a;->b(Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->getMsgData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v0, "sync_link_PacketListenerImplNotification2"

    const-string/jumbo v1, "onReceivedPacket: [ appId or appData =null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "sync_link_PacketListenerImplNotification2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceivedPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "sync_link_PacketListenerImplNotification2"

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

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onReceiveData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public final sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink\uff1a[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final sendPacketUplinkSync([B)V
    .locals 6

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplinkSync\uff1a [ data len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string/jumbo v1, "com.alipay.mobile.common.transportext.biz.sync.SyncManager"

    .line 102
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    const-string/jumbo v2, "sendData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [B

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacketUplinkSync\uff1a [ TException="

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
.end method
