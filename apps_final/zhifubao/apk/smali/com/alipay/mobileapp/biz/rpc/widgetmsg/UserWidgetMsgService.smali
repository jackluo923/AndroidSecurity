.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ackAndGetWidgetMsgs(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.ackAndGetWidgetMsgs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;"
        }
    .end annotation
.end method

.method public abstract getWidgetMsgs()Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getWidgetMsgs"
    .end annotation
.end method
