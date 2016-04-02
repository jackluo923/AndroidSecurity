.class public interface abstract Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.friendRequest"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract batchAddFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendBatchReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.batchFriendRequest"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract handleRelation(Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.handleFriendship"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setBlacked(Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setBlacked"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setFriendConfig(Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setFriendConfig"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setRemarkName(Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setRemarkName"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setStarred(Lcom/alipay/mobilerelation/biz/shared/req/SetStarredReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.setStarred"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract upload(Lcom/alipay/mobilerelation/core/model/mobile/UploadMobileContact;Z)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.upload"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
