.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/email/EmailAssociateBankService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract confirmBankInEmail(Ljava/util/List;)Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/BankOparationInfoInEmailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailAssociateBank.confirmBankInEmail"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;)",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/BankOparationInfoInEmailResult;"
        }
    .end annotation
.end method

.method public abstract deleteBankCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/BankOparationInfoInEmailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailAssociateBank.deleteBankCard"
    .end annotation
.end method

.method public abstract findAllBankInfosByEmail(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailAssociateBank.findAllBankInfosByEmail"
    .end annotation
.end method

.method public abstract updateBankCardNo(Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;)Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailAssociateBank.updateBankCardNo"
    .end annotation
.end method
