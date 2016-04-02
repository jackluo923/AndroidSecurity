.class public interface abstract Lcom/alipay/mobileprod/biz/contact/ContactService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addContactUser(Lcom/alipay/mobileprod/biz/contact/dto/ContactAddReq;)Lcom/alipay/mobileprod/biz/contact/dto/ContactAddResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.addContact"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract addContactValidate(Lcom/alipay/mobileprod/biz/contact/dto/ContactAddValidateReq;)Lcom/alipay/mobileprod/biz/contact/dto/ContactAddValidateResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.addContactValidate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract delContactUser(Lcom/alipay/mobileprod/biz/contact/dto/ContactRemoveReq;)Lcom/alipay/mobileprod/biz/contact/dto/ContactRemoveResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.removeContact"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryContactByAcct(Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByAcctReq;)Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByAcctResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.queryuserinfobyacct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryContactByMobile(Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByMobileReq;)Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByMobileResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.queryuserinfobymobile"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryContactProfileInfo(Lcom/alipay/mobileprod/biz/contact/dto/GetProfileReq;)Lcom/alipay/mobileprod/biz/contact/dto/GetProfileResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.getProfile"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryUserInfoByCardNo(Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByCardNoReq;)Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByCardNoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.queryUserInfoByCardNo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateAlias(Lcom/alipay/mobileprod/biz/contact/dto/UpdateAliasReq;)Lcom/alipay/mobileprod/biz/contact/dto/UpdateAliasResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.updateAlias"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validateReceiverName(Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameReq;)Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.contact.validatereceivename"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
