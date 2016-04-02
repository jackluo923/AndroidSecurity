.class public Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;
.super Ljava/lang/Object;
.source "ChatSyncCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    const-class v1, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;->LOGTAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveCommand: [ ChatSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveMessage: [ ChatSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveMessage:  [ ChatSyncCallbackImpl ] [ syncMessage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->recvChatMsgFromServer(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 31
    return-void
.end method
