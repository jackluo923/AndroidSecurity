.class Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus$1;
.super Ljava/lang/Object;
.source "ChatDbMsgStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQuerySendingMsg()Ljava/util/List;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 49
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatClearAllMsgSendigStatusToFail()I

    move-result v1

    if-gez v1, :cond_1

    .line 50
    # getter for: Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->access$0()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "repairMsgStatus: [ failed: set msg status sending to fail ] "

    .line 50
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v2

    .line 56
    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v4, "fail"

    .line 55
    invoke-virtual {v2, v3, v0, v4}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
