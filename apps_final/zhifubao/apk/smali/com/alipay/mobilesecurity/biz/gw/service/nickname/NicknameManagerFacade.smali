.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract preCheckForNickname()Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.nickname.preCheckForNickname"
    .end annotation
.end method

.method public abstract queryNickname()Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.nickname.queryNickname"
    .end annotation
.end method

.method public abstract updateNickname(Lcom/alipay/mobilesecurity/core/model/nickname/NicknameUpdateReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.nickname.updateNickname"
    .end annotation
.end method
