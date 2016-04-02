.class public interface abstract Lcom/alipay/mobilechat/biz/emotion/rpc/api/ChatBackgroundRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAllChatBG(II)Lcom/alipay/mobilechat/biz/emotion/rpc/response/ChatBackgroundResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.chatbackground.select"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
