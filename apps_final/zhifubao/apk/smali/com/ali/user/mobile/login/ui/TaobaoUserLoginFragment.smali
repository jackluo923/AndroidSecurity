.class public Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
.source "TaobaoUserLoginFragment.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;-><init>()V

    .line 20
    const-string/jumbo v0, "TaobaoUserLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 5

    .prologue
    .line 25
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->afterViews()V

    .line 27
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    const-string/jumbo v0, "YWUC-JTTYZH-C48"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "taobaoLoginView"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->fragment_taobaouser_login:I

    return v0
.end method

.method protected getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getSafeData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->taobaoEnvJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v1, "TaobaoUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getLoginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "taobao"

    return-object v0
.end method

.method protected hideLoginHistory()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->switchLogin:I

    if-ne v0, v1, :cond_0

    .line 94
    const-string/jumbo v0, "YWUC-JTTYZH-C10"

    const-string/jumbo v1, "alipay"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->popLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 75
    const-string/jumbo v0, "6304"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->dismissProgress()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 79
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u91cd\u65b0\u8f93\u5165"

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 88
    :goto_0
    return v0

    .line 81
    :cond_0
    const-string/jumbo v0, "6305"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->dismissProgress()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 85
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    goto :goto_0
.end method

.method protected saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 56
    new-instance v0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method protected setPortraitImage(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->taobao_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 124
    return-void
.end method

.method protected showLoginHistory()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void
.end method
