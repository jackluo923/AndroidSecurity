.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/GroupRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createGroupAndShareQrCode()Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.createAndQrcode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createGroupQrcode(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupQrcodeCreateReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupQrcodeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.qrcode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteMember(Lcom/alipay/mobilechat/biz/group/rpc/request/DeleteMemberReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.deleteMember"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyGroupConfig(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupConfigModifyReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.modifyGroupConfig"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyGroupName(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupUpdateReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.modify.groupName"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAllJoinedGroup(J)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.queryAllJoinedGroup"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryGroupInfo(Lcom/alipay/mobilechat/biz/group/rpc/request/QueryGroupInfoReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract stopGroupQrcode(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupStopQrcodeReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.stopQrcode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
