.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/face/FaceManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyToken(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.applyToken"
    .end annotation
.end method

.method public abstract closeFaceLogin(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.closeFaceLogin"
    .end annotation
.end method

.method public abstract openFaceLogin(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.openFaceLogin"
    .end annotation
.end method

.method public abstract queryFaceEntrance(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.queryFaceEntrance"
    .end annotation
.end method

.method public abstract queryFaceInfo(Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;)Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.faceManager.queryFaceInfo"
    .end annotation
.end method
