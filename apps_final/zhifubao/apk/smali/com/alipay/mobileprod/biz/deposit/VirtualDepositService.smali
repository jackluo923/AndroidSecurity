.class public interface abstract Lcom/alipay/mobileprod/biz/deposit/VirtualDepositService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract confirmDeposit(Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;)Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.deposit.confirmDeposit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryItemDetail(Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailReq;)Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.deposit.queryItemDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract tbLoginAndItemInit(Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitReq;)Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.deposit.tbLoginAndItemInit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
