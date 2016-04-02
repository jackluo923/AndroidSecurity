.class public interface abstract Lcom/alipay/mobileprod/biz/contact/facade/ContactConfigServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUuid()Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.getUuid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract switchNoPasswordPayProtocol(Lcom/alipay/mobileprod/biz/contact/dto/SwitchNoPasswordPayProtocolReq;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.switchNoPasswordPayProtocol"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
