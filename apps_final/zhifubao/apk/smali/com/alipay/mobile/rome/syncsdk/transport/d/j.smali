.class public Lcom/alipay/mobile/rome/syncsdk/transport/d/j;
.super Ljava/lang/Object;
.source "PacketListenerImplRegister.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/transport/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic c:[I


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 35
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->values()[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 8

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: register "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 55
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastRecvHeartBeatTime(J)V

    .line 60
    const-string/jumbo v0, ""

    .line 62
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 66
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "keepLiveTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    if-lez v0, :cond_0

    .line 71
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->setKeepAliveInterval(I)V

    .line 74
    :cond_0
    const-string/jumbo v0, "heartTimeOut"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    if-lez v0, :cond_1

    .line 77
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->setPacketReplyTimeout(I)V

    .line 81
    :cond_1
    const-string/jumbo v0, "cdid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setCdid(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :cond_2
    const-string/jumbo v0, "action"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "nextConnectItvl"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    .line 91
    const/16 v2, 0x258

    if-gt v1, v2, :cond_4

    .line 92
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: [ flow control ] [ flowControl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFlowCotrol(Z)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startFlowControlTimer(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_3
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket: register:[ JSONException="

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

    .line 105
    :cond_4
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket\uff1a [ action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ replyTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getPacketReplyTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ keepLiveTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getKeepAliveInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onRecvRegisterReply()V

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    move-result-object v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "processPacket: [ longLinkNotifer=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastRecvInitReplyTime(J)V

    .line 124
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 129
    iget-object v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendInitPacketTime()J

    move-result-wide v6

    .line 128
    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a()[I

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v6}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 182
    :cond_6
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->decreaseFailCount()V

    .line 192
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ssl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getKeepAliveInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startHeartBeatTimer(I)V

    goto/16 :goto_0

    .line 133
    :pswitch_1
    const-string/jumbo v5, "unbind"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->a:Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "processPacket: [ unbind don\'t need send device register 1001 ]"

    .line 134
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "LL_UBU"

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendInitPacketTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v6

    .line 137
    invoke-static {v0, v1, v4, v5, v6}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendBindUerPacket()V

    goto :goto_1

    .line 143
    :cond_7
    const-string/jumbo v0, "LL_INIT"

    .line 144
    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendInitPacketTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v7

    .line 143
    invoke-static {v0, v5, v4, v6, v7}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    invoke-interface {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;->onLongLinkDeviceBinded()V

    goto :goto_2

    .line 157
    :pswitch_2
    const-string/jumbo v0, "LL_INIT"

    .line 158
    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendInitPacketTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v7

    .line 157
    invoke-static {v0, v5, v4, v6, v7}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    invoke-interface {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;->onLongLinkRegistered()V

    .line 165
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendUnBindUerPacket()V

    goto/16 :goto_1

    .line 171
    :pswitch_3
    const-string/jumbo v0, "LL_BU"

    .line 172
    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLastSendInitPacketTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v7

    .line 171
    invoke-static {v0, v5, v4, v6, v7}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    invoke-interface {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;->onLongLinkUserBinded()V

    .line 179
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/d/j;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendUnBindUerPacket()V

    goto/16 :goto_1

    .line 131
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
