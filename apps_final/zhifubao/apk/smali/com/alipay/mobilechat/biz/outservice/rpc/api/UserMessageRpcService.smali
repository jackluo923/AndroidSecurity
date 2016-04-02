.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/UserMessageRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract batchMarkChatRead(Ljava/util/List;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.batchmark"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatMarkReadReq;",
            ">;)",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;"
        }
    .end annotation
.end method

.method public abstract batchPullChatSessionResult(Ljava/util/List;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatSessionListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.bpullchats"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/request/PullChatSessionReq;",
            ">;)",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatSessionListResult;"
        }
    .end annotation
.end method

.method public abstract deleteChat(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatDeleteReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.delete"
    .end annotation
.end method

.method public abstract initChats()Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatClientInitResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.initchats"
    .end annotation
.end method

.method public abstract markChatRead(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatMarkReadReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.mark"
    .end annotation
.end method

.method public abstract pullChatSessionResult(Lcom/alipay/mobilechat/biz/outservice/rpc/request/PullChatSessionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatSessionResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.pullchats"
    .end annotation
.end method

.method public abstract pullSessionList(Lcom/alipay/mobilechat/biz/outservice/rpc/request/PullSessionListReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatSessionListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.pullsessions"
    .end annotation
.end method

.method public abstract queryUserChatMessage(Lcom/alipay/mobilechat/biz/outservice/rpc/request/QueryUserChatReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatQueryListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.querychats"
    .end annotation
.end method

.method public abstract sendMessage(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatClientMessageReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatClientMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.sendmessage"
    .end annotation
.end method

.method public abstract shareMessage(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ShareClientMessageReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatClientMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.share"
    .end annotation
.end method

.method public abstract updateChatPermission(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatPermissionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.chatpermission"
    .end annotation
.end method

.method public abstract userChat(Lcom/alipay/mobilechat/biz/outservice/rpc/request/UserSendChatReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatClientMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.chat.send"
    .end annotation
.end method
