.class public interface abstract Lcom/alipay/mobileprod/biz/group/sharepay/rpc/SharepayService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createGroup(Lcom/alipay/mobileprod/biz/group/sharepay/req/CreateGroupReq;)Lcom/alipay/mobileprod/biz/group/sharepay/res/CreateGroupRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.createGroup"
    .end annotation
.end method

.method public abstract generateCodeIndex(Lcom/alipay/mobileprod/biz/group/sharepay/req/GenerateCodeIndexReq;)Lcom/alipay/mobileprod/biz/group/sharepay/res/GenerateCodeIndexRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.generateCodeIndex"
    .end annotation
.end method

.method public abstract generateSignSerial()Lcom/alipay/mobileprod/biz/group/sharepay/res/GenerateSerialRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.generateSignSerial"
    .end annotation
.end method

.method public abstract joinGroup(Lcom/alipay/mobileprod/biz/group/sharepay/req/JoinGroupReq;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.joinGroup"
    .end annotation
.end method

.method public abstract listBill(Lcom/alipay/mobileprod/biz/group/sharepay/req/ListBillReq;)Lcom/alipay/mobileprod/biz/group/sharepay/res/ListBillRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.listBill"
    .end annotation
.end method

.method public abstract queryProdInfo()Lcom/alipay/mobileprod/biz/group/sharepay/res/ProdInfoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.queryProdInfo"
    .end annotation
.end method

.method public abstract usableLines(Lcom/alipay/mobileprod/biz/group/sharepay/req/UsableLinesReq;)Lcom/alipay/mobileprod/biz/group/sharepay/res/UsableLinesRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.sharepay.usableLines"
    .end annotation
.end method
