.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/user/UserOperationService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract findUserStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.user.findUserStatus"
    .end annotation
.end method

.method public abstract findUserStatusV2(Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;)Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.user.findUserStatusByType"
    .end annotation
.end method
