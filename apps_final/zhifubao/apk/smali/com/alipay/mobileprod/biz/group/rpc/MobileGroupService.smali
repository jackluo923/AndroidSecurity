.class public interface abstract Lcom/alipay/mobileprod/biz/group/rpc/MobileGroupService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createGroupPreCheck(Ljava/lang/String;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.createGroupPreCheck"
    .end annotation
.end method

.method public abstract inviteFriends(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/core/model/BaseRespVO;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.inviteFriends"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobileprod/core/model/BaseRespVO;"
        }
    .end annotation
.end method
