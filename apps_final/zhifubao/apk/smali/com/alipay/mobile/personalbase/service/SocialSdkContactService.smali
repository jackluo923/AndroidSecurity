.class public abstract Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "SocialSdkContactService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFriend(Landroid/os/Bundle;)I
.end method

.method public abstract addFriendDialog(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;)V
.end method

.method public abstract addFriendDialogBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAddFriendCallback()V
.end method

.method public abstract clearCallback()V
.end method

.method public abstract clearContactPickerCallback()V
.end method

.method public abstract clearContactPickerCallbackOp()V
.end method

.method public abstract enableFriendTabAsync()V
.end method

.method public abstract getAddFriendCallback()Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;
.end method

.method public abstract getContactPickerCallback()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;
.end method

.method public abstract getContactPickerCallbackOp()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;
.end method

.method public abstract getMyInfoChangedListener()Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;
.end method

.method public abstract getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSignatureNet()Ljava/lang/String;
.end method

.method public abstract isContactsUploadPermitted(Ljava/lang/String;)Z
.end method

.method public abstract isMobileListLoaded()Z
.end method

.method public abstract loadContactModule()V
.end method

.method public abstract markFriendOrGroupTop(ILjava/lang/String;Z)Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkContactService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkContactService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public abstract openPersonalProfilePage(Landroid/os/Bundle;)V
.end method

.method public abstract openSignaturePage()V
.end method

.method public abstract permitContactsUpload(Ljava/lang/String;)V
.end method

.method public abstract pickFromContactsList()V
.end method

.method public abstract queryAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
.end method

.method public abstract queryAccountInGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
.end method

.method public abstract queryAllMembersByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAndLoadStrangerProfile(Ljava/util/List;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryPushInfoForSocial(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
.end method

.method public abstract queryRecentFriends()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryWelcomeList()Ljava/util/List;
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

.method public abstract refreshContactModule()V
.end method

.method public abstract removeRecentListExternal(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectMultiAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectMultiAccountWithInput(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectMultiMemberFromGroup(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectSingleAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectSingleMemberFromGroup(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectSingleMobileRecord(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract selectSingleRecentAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract setMyInfoChangedListener(Lcom/alipay/mobile/framework/service/ext/contact/SelfInfoCallback;)V
.end method

.method public abstract setSignature(Ljava/lang/String;)V
.end method

.method public abstract setUpNewChatRoom(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
.end method

.method public abstract startQuery(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
.end method

.method public abstract startQuery(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
.end method

.method public abstract startQueryNoRemind(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;)V
.end method

.method public abstract tryToLoadMobileList()V
.end method

.method public abstract tryToRefreshJoinedGroup()V
.end method

.method public abstract tryToRefreshMyFriends()V
.end method

.method public abstract updateRecentListExternal(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V
.end method
