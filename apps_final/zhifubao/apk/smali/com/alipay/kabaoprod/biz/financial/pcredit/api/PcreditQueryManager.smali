.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/pcredit/api/PcreditQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAccountInfo(Z)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.queryAccountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBillDetail(Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillDetailReq;)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.querybilldetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBillList(Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.querybilllist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPcreditProdInfo()Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.queryPcreditProdInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
