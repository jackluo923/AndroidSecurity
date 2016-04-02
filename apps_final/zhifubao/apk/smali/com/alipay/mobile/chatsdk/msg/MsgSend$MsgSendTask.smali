.class Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;
.super Ljava/lang/Object;
.source "MsgSend.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field cnt:I

.field msgJson:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

.field tryTimes:I

.field tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/chatsdk/msg/MsgSend;Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;I)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    .line 138
    iput p3, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tryTimes:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->cnt:I

    .line 140
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->msgJson:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    # getter for: Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MsgSendTask#run:[ tryTimes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string/jumbo v2, " ][ cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ msgJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->msgJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->cnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->cnt:I

    iget v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tryTimes:I

    if-lt v0, v1, :cond_0

    .line 151
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    const-string/jumbo v2, "fail"

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(ILjava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->appId:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->getMsgmIdbyTunnelmId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "fail"

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->tunnelMsg:Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelSendMsg(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;->msgJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->sendMsg(Ljava/lang/String;)V

    goto :goto_0
.end method
