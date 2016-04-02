.class public interface abstract Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkMultiRelationShip(Lcom/alipay/mobilerelation/biz/shared/req/MultiCheckRelationShipReq;)Lcom/alipay/mobilerelation/common/service/facade/result/CheckRelationShipMultiResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.checkMulti"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkRelationShip(Lcom/alipay/mobilerelation/core/model/req/NonAccountCommonReq;)Lcom/alipay/mobilerelation/common/service/facade/result/CheckRelationShipResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.check"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAllFriends(Lcom/alipay/mobilerelation/biz/shared/req/GetAllFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/AllFriendsResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.findAllFriends"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAllFriends(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AllFriendsResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.pb.findAllFriends"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getBlackList()Lcom/alipay/mobilerelation/biz/shared/resp/GetBlackListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getBlackList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMultiContacts(Lcom/alipay/mobilerelation/biz/shared/req/MultiFriendsReq;)Lcom/alipay/mobilerelation/biz/shared/resp/MultiFriendsResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getMultiFriends"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMyProfile()Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getMyProfile"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getProfile(Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.getProfile"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract searchContact(Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.find"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract searchContactV2(Lcom/alipay/mobilerelation/biz/shared/req/SearchContactReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SearchContactV2Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.relation.findV2"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
