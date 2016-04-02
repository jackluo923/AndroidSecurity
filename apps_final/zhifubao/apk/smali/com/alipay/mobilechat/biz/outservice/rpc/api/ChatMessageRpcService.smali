.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/ChatMessageRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelMessage(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CancelMessageReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.cancleMessage"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendChatMsg(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.sendMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
        value = "no"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
