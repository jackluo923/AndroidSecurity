.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1000
    const-string/jumbo v1, "AliUserLoginFragment"

    const-string/jumbo v2, "\u67e5\u8be2\u4eba\u8138\u5f00\u901a\u72b6\u6001"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v2

    .line 1004
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ali/user/mobile/login/LoginHistoryManager;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1003
    iput-object v2, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-eqz v1, :cond_4

    move v1, v0

    .line 1007
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->useridList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->useridList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 1016
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->useridList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserFaceLoginService;->queryFaceLogin(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dealQueryFaceRes(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;)V

    .line 1027
    :goto_1
    return-void

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 1010
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1011
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->useridList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1019
    :cond_3
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "useridList is null!"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    const-string/jumbo v1, "AliUserLoginFragment"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1022
    :cond_4
    :try_start_1
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "loginHistoryList is null!"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
