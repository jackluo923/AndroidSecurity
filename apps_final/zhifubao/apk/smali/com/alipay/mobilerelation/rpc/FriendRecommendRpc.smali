.class public interface abstract Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enableFriend()Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.enableFriend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMobileContactList()Lcom/alipay/mobilerelation/rpc/response/MobileContactListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.getMobileContact"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract markRecommend()Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.markRecommend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
