.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/phone/PhoneBillManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getPhoneBills()Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.phone.queryPhoneBills"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract refreshMobileInfo()Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.phone.refreshMobileInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
