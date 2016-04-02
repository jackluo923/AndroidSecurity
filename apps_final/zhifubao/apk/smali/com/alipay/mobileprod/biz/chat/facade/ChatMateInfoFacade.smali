.class public interface abstract Lcom/alipay/mobileprod/biz/chat/facade/ChatMateInfoFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bannerCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.chat.bannerCallBack"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMateInfo(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/chat/model/ChatMateInfo;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.chat.queryMateInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
