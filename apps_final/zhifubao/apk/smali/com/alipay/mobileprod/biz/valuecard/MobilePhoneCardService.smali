.class public interface abstract Lcom/alipay/mobileprod/biz/valuecard/MobilePhoneCardService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract apply(Lcom/alipay/mobileprod/biz/valuecard/dto/ApplyPhoneCardReq;)Lcom/alipay/mobileprod/biz/valuecard/dto/ApplyPhoneCardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.valuecard.phonecard.apply"
    .end annotation
.end method

.method public abstract query(Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardReq;)Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.valuecard.phonecard.query"
    .end annotation
.end method
