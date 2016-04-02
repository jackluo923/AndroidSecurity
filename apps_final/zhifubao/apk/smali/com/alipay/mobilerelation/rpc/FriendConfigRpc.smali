.class public interface abstract Lcom/alipay/mobilerelation/rpc/FriendConfigRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract batchUpdateRealNameBlackList(Ljava/util/List;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.batchUpdateRealNameBlackList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;"
        }
    .end annotation
.end method

.method public abstract queryRealNameBlackList()Ljava/util/List;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.queryRealNameBlackList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
