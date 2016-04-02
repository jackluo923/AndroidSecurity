.class public interface abstract Lcom/alipay/mobile/look/biz/rpc/EmotionQueryRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryEmotion(Lcom/alipay/mobile/look/biz/rpc/EmotionQueryRequest;)Lcom/alipay/mobile/look/biz/rpc/EmotionQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.emotion.queryEmotion"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTemplate(Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryRequest;)Lcom/alipay/mobile/look/biz/rpc/EmotionTemplateQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.emotion.queryTemplate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
