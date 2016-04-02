.class public Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
.super Ljava/lang/Object;
.source "MsgRecv.java"


# static fields
.field private static volatile instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgRecv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvMsgFromServer[ toId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/chatsdk/api/MessagePayload;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/MessagePayload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iput-boolean p2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    .line 126
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 127
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 129
    iget-wide v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mct:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    .line 135
    :goto_1
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt1(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Lcom/alipay/mobile/chatsdk/api/MessagePayload;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "recvMsgFromServer:[ parseObject MessagePayload failed ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mct:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt2(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "3"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt3(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0

    .line 144
    :cond_6
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->st:Ljava/lang/String;

    const-string/jumbo v2, "4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt4(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0
.end method

.method private processOneMsgSt2(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt2:[ message status # st:2 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt2: [  mId invalid  ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 292
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 295
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 296
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 295
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "sending"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt2: [ msg already mark failed or success ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 305
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "success"

    .line 304
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 309
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 308
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "success"

    .line 312
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processOneMsgSt3(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3:[ message status # st:3 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt3: [ mId invalid ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 331
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 335
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 334
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3: [ msg already mark failed ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 344
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "sensitive"

    .line 343
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 348
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 347
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 352
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sensitive"

    .line 351
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processOneMsgSt4(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt4:[ message status # st:4 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    const-string/jumbo v1, "\\d+\\|\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt4: [ mId invalid ][ tunnelMsg.mId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 370
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 374
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 373
    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt3: [ msg already mark failed or success or sensitive ] [ msg status do not send ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 383
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    const-string/jumbo v4, "fail"

    .line 382
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 386
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 387
    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    .line 386
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->appId:Ljava/lang/String;

    .line 391
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "fail"

    .line 390
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public processOneMsgSt1(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Lcom/alipay/mobile/chatsdk/api/MessagePayload;)V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1:[ new message # st:1 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processOneMsgSt1[ msg mk is null ][ mk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string/jumbo v0, "r"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 161
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mFrom:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    .line 162
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->pluginType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->pluginType:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "ALIPAY_MSG"

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v0, "2014120100018252"

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->ext:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    .line 174
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "mFrom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    const-string/jumbo v1, "s"

    iput-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 180
    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 187
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 188
    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    iget-wide v2, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1: [ msg is already in this device ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processOneMsgSt1: [ ext ] [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processOneMsgSt1: [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->mk:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mk:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->isSc:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    .line 208
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSum:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    .line 209
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    .line 210
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mExt:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    .line 211
    iget-wide v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bTime:J

    iput-wide v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 212
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bMsgId:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    .line 213
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    .line 214
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mData:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "success"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 216
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mBox:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    .line 221
    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 226
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, " user set acceptMsg is false ,return,\u76f4\u63a5\u4e22\u5f03\u6d88\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "processOneMsgSt1: [ \u67e5\u8be2\u514d\u6253\u6270\u5f00\u5173\u51fa\u9519 ]"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 231
    :cond_3
    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    const-string/jumbo v2, "[video]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    .line 235
    :cond_4
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-nez v0, :cond_a

    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    const-string/jumbo v1, "ppchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 236
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 237
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 246
    :goto_2
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isImgMsgType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/MessageTypes;->isTextMsgType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    :cond_5
    const-string/jumbo v0, "single"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv1:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "single"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    .line 254
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    .line 256
    const-string/jumbo v0, "y"

    iget-object v1, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    const-string/jumbo v0, "true"

    iget-object v1, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    :cond_6
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->readed:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 261
    :cond_7
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    const-string/jumbo v1, "y"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 262
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_9

    .line 263
    const v0, 0xc350

    iput v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 266
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    .line 267
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "processOneMsgSt1:[ \u63a5\u6536\u5230\u7684\u65b0\u6d88\u606f\u5165\u5e93\u5931\u8d25 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_a
    iget-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 239
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 240
    const-string/jumbo v0, "y"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    goto/16 :goto_2

    .line 242
    :cond_b
    const-string/jumbo v0, "n"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 243
    const-string/jumbo v0, "n"

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    goto/16 :goto_2

    .line 250
    :cond_c
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSendType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv1:Ljava/lang/String;

    .line 251
    iget-object v0, p3, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSendType:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    goto/16 :goto_3

    .line 271
    :cond_d
    long-to-int v0, v0

    iput v0, p2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 274
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto/16 :goto_0
.end method

.method public recvChatMsgFromServer(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 7

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recvChatMsgFromServer:[ syncMessage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    .line 67
    iget-boolean v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->hasMore:Z

    .line 70
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    .line 97
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-class v4, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    .line 79
    iget-object v4, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->toId:Ljava/lang/String;

    .line 80
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 81
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V

    .line 72
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recvMsgFromServer[ parseObject TunnelMessageDown failed ][ Excetion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " ]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v4, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsgFromServer[ parseObject TunnelMessageDown failed ][ Excetion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 97
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    throw v0
.end method
