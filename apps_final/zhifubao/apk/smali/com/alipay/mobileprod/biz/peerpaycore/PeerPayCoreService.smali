.class public interface abstract Lcom/alipay/mobileprod/biz/peerpaycore/PeerPayCoreService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract GetPPContactList(Lcom/alipay/mobileprod/biz/peerpaycore/dto/GetPPContactListReq;)Lcom/alipay/mobileprod/biz/peerpaycore/dto/GetPPContactListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.peerpaycore.getPPContactList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract appleyPeerpay(Lcom/alipay/mobileprod/biz/peerpaycore/dto/ApplyPeerPayReq;)Lcom/alipay/mobileprod/biz/peerpaycore/dto/ApplyPeerPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.peerpaycore.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract cancelPeerpay(Lcom/alipay/mobileprod/biz/peerpaycore/dto/CancelPeerPayReq;)Lcom/alipay/mobileprod/biz/peerpaycore/dto/CancelPeerPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.peerpaycore.cancel"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkPeerpayer(Lcom/alipay/mobileprod/biz/peerpaycore/dto/CheckPeerPayerReq;)Lcom/alipay/mobileprod/biz/peerpaycore/dto/CheckPeerPayerResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.peerpaycore.checkPeerPayer"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract refusePeerPay(Lcom/alipay/mobileprod/biz/peerpaycore/dto/RefusePeerPayReq;)Lcom/alipay/mobileprod/biz/peerpaycore/dto/RefusePeerPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.peerpaycore.refuse"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
