.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/email/EmailAccountRegisterService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract authEmailAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/AuthEmailAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailRegister.authEmailAccount"
    .end annotation
.end method

.method public abstract cancelTask(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailRegister.cancelTask"
    .end annotation
.end method

.method public abstract deleteEmailAccount(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailRegister.deleteEmailAccount"
    .end annotation
.end method

.method public abstract findUserAllRegistedEmails()Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailRegister.findUserAllRegistedEmails"
    .end annotation
.end method

.method public abstract reloadBankInfosByEmail(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/AuthEmailAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.emailRegister.reloadBankInfosByEmail"
    .end annotation
.end method
