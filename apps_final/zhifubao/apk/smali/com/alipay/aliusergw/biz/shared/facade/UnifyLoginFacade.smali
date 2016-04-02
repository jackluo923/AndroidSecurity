.class public interface abstract Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;
.super Ljava/lang/Object;
.source "UnifyLoginFacade.java"


# virtual methods
.method public abstract applyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.sms.login.sendSms"
    .end annotation
.end method

.method public abstract bindingAccount(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.bindingAccount"
    .end annotation
.end method

.method public abstract supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.login.supplypass"
    .end annotation
.end method

.method public abstract supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.login.supplysimplepass"
    .end annotation
.end method

.method public abstract taobaoAccountBinding(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.bindAlipayAccount"
    .end annotation
.end method

.method public abstract unifyLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.unifyLogin"
    .end annotation
.end method

.method public abstract verifyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.sms.login.verifySms"
    .end annotation
.end method
