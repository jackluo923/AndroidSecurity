.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/InviteFriendsRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enterGroupByInvitation(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupInvitationReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.enterByInvitation"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract enterGroupByInvitationReturnJSON(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupInvitationReq;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.enterByInvitationJSON"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract invite(Lcom/alipay/mobilechat/biz/group/rpc/request/InviteFriendToGroupReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/InviteFriendToGroupRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.inviteFriend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendInvitations(Lcom/alipay/mobilechat/biz/group/rpc/request/InviteFriendToGroupReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/InviteFriendToGroupRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.sendInvitation"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
