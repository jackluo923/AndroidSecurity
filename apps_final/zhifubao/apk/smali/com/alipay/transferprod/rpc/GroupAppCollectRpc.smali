.class public interface abstract Lcom/alipay/transferprod/rpc/GroupAppCollectRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createBatchPayOrder(Lcom/alipay/transferprod/rpc/req/CreateBatchPayOrderReq;)Lcom/alipay/transferprod/rpc/result/BatchPayOrderCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.createBatchPayOrder"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createDetailMsg(Lcom/alipay/transferprod/rpc/req/CreateDetailMsgReq;)Lcom/alipay/transferprod/rpc/result/DetailMessageCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.createDetailMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createGroupCollectBatch(Lcom/alipay/transferprod/rpc/req/BatchCreateReq;)Lcom/alipay/transferprod/rpc/result/BatchCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.createGroupCollectBatch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBatchDetails(Lcom/alipay/transferprod/rpc/req/BatchDetailQueryReq;)Lcom/alipay/transferprod/rpc/result/BatchDetailInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.queryBatchDetails"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBatchDetailsByBatchNo(Ljava/lang/String;)Lcom/alipay/transferprod/rpc/result/BatchDetailInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.queryBatchDetailsByBatchNo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBatchDetailsByTransferNo(Ljava/lang/String;)Lcom/alipay/transferprod/rpc/result/BatchDetailInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.queryBatchDetailsByTransferNo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract shareAndRiskCheck(Lcom/alipay/transferprod/rpc/req/ShareAndRiskCheckReq;)Lcom/alipay/transferprod/rpc/result/ShareAndRiskCheckRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.group.shareAndRiskCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
