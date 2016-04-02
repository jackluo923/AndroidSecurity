.class public interface abstract Lcom/alipay/mmmbbbxxx/d/a;
.super Ljava/lang/Object;
.source "MsgboxOperateFacade.java"


# virtual methods
.method public abstract operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.webplatform.statusbar.msgbox.operateByMsgIdList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mmmbbbxxx/d/b;"
        }
    .end annotation
.end method

.method public abstract operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.webplatform.statusbar.msgbox.operateByType"
    .end annotation
.end method
