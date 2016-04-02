.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-nez v0, :cond_0

    .line 1044
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "mCurrentSelectedHistory is null!"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1083
    :goto_0
    return-void

    .line 1047
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    .line 1048
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    :cond_1
    const-string/jumbo v0, "AliUserLoginFragment"

    .line 1052
    const-string/jumbo v1, "currentUserId is null! or getAccount is null"

    .line 1051
    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    goto :goto_0

    .line 1055
    :cond_2
    :try_start_2
    new-instance v3, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v3}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 1056
    iput-object v2, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 1057
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 1059
    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v4, v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget v4, v4, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    .line 1057
    invoke-interface {v2, v3, v0, v4}, Lcom/ali/user/mobile/service/UserFaceLoginService;->initFaceLogin(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;I)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1063
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1065
    if-nez v2, :cond_3

    .line 1066
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "initFaceLogin res is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1062
    :catchall_0
    move-exception v0

    .line 1063
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1064
    throw v0

    .line 1070
    :cond_3
    iget-boolean v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->success:Z

    if-eqz v0, :cond_4

    .line 1071
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "initFaceLogin success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->invokeFaceLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_4
    const-string/jumbo v0, "1004"

    .line 1074
    iget-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1075
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "initFaceLogin OVER_FAIL_COUNT"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showOverFailDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1077
    :cond_5
    iget-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1078
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v3, "initFaceLogin fail"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1081
    :cond_6
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "initFaceLogin fail,memo is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
