.class public interface abstract Lcom/alipay/mobileprod/biz/aapay/facade/AAPayHistoryQueryFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryDetail(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.queryAAPayHistoryDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayOrderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRecentBatch()Ljava/util/List;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.queryAAPayHistoryBatch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayBatchInfo;",
            ">;"
        }
    .end annotation
.end method
