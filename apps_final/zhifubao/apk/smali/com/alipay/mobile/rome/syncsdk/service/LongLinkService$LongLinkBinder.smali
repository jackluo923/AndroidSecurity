.class Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;
.super Landroid/os/Binder;
.source "LongLinkService.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService$LongLinkBinder;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 145
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    .line 148
    :cond_0
    return-void
.end method

.method public disConnect()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 177
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 178
    return-void
.end method

.method public initConnet()V
    .locals 1

    .prologue
    .line 260
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 261
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 184
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V

    .line 158
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->clearAllTimers()V

    .line 163
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->reconnect()V

    .line 164
    return-void
.end method

.method public sendPacketUplink(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    const-string/jumbo v0, "sync_link_LongLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink: [ data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    const-string/jumbo v0, "sync_link_LongLinkService"

    const-string/jumbo v1, "sendPacketUplink: [ userId=null or empty ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_1
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendLinkDefaultData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    const-string/jumbo v0, "sync_link_LongLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplinkSync: [ data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendLinkSyncData(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public setLonkLinkNotifer(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V
    .locals 3

    .prologue
    .line 225
    const-string/jumbo v0, "sync_link_LongLinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPacketNotifer\uff1a [ linkNotifer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLinkNotifier(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V

    .line 228
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 192
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetFailCount()V

    .line 194
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "sync_link_LongLinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAppUserInfo**userId || sessionId\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " || "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string/jumbo v3, "LongLinkAppInfo userId || sessionId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] UserBinded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isUserBinded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 203
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setUserId(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setSessionId(Ljava/lang/String;)V

    .line 205
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isUserBinded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendUnBindUerPacket()V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 210
    # getter for: Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->access$0()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendBindUerPacket()V

    goto :goto_0

    .line 216
    :cond_3
    const-string/jumbo v0, "sync_link_LongLinkService"

    .line 217
    const-string/jumbo v1, "setAppUserInfo: [ userId and sessionID is equals with current userId and sessionId ] "

    .line 216
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
