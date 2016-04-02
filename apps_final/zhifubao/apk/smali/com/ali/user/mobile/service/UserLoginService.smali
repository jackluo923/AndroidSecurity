.class public interface abstract Lcom/ali/user/mobile/service/UserLoginService;
.super Ljava/lang/Object;
.source "UserLoginService.java"


# virtual methods
.method public abstract applyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
.end method

.method public abstract supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
.end method

.method public abstract supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
.end method

.method public abstract taobaoAccountBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;
.end method

.method public abstract unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
.end method

.method public abstract unifyLoginWithGW(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
.end method

.method public abstract verifyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
.end method
