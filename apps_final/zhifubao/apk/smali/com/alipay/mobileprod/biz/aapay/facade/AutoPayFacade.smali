.class public interface abstract Lcom/alipay/mobileprod/biz/aapay/facade/AutoPayFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract pay(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/aapay/model/client/AutoPayResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.aapay.autoPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
