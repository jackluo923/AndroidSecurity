.class public Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
.source "AlipayUserLoginFragment.java"


# static fields
.field protected static final MSG_TAOBAO_SSO_TIMEOUT:I = 0x1


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;-><init>()V

    .line 27
    const-string/jumbo v0, "AlipayUserLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected afterVerifyTaobaoSso(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method protected afterViews()V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->afterViews()V

    .line 34
    const-string/jumbo v0, "YWUC-JTTYZH-C38"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "alipayLoginView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->fragment_alipay_user_login:I

    return v0
.end method

.method protected getLoginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "alipay"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    const v0, 0xb000

    if-ne p1, v0, :cond_2

    .line 105
    const v0, 0xb003

    if-eq p2, v0, :cond_0

    .line 107
    const v0, 0xb001

    if-ne p2, v0, :cond_1

    .line 108
    const-string/jumbo v0, "taobao_sso_info"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    .line 109
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 110
    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 112
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 113
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->showInputMethodPannel(Landroid/view/View;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const v0, 0xb004

    if-ne p2, v0, :cond_0

    .line 115
    const-string/jumbo v0, "login_param"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 116
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 117
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->switchLogin:I

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->switchToTaobaoUserLogin(Landroid/os/Bundle;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 127
    const-string/jumbo v0, "6304"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 131
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u627e\u56de\u5bc6\u7801"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 138
    const-string/jumbo v5, "\u91cd\u65b0\u8f93\u5165"

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    .line 131
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 154
    :goto_0
    return v0

    .line 140
    :cond_0
    const-string/jumbo v0, "6305"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 144
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u627e\u56de\u5bc6\u7801"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 151
    const-string/jumbo v5, "\u77e5\u9053\u4e86"

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 152
    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    goto :goto_0
.end method

.method protected openTaobaoSsoInfoActivity(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string/jumbo v1, "taobao_sso_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    const v1, 0xb000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method

.method protected refreshFaceEntry()V
    .locals 3

    .prologue
    .line 228
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->refreshFaceEntry()V

    .line 230
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    .line 232
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setPortraitImage(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    if-eqz p1, :cond_1

    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_default_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/ui/widget/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_default_head:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected setRecentList()V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;->checkTaobaoSsoLogin(Landroid/content/Context;)Z

    move-result v1

    .line 40
    const-string/jumbo v0, "AlipayUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u662f\u5426\u5c1d\u8bd5sso\u767b\u5f55\u7684\u6807\u8bb0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 42
    :goto_0
    const-string/jumbo v2, "AlipayUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u662f\u5426\u6ca1\u6709\u5386\u53f2\u8d26\u6237\u7684\u6807\u8bb0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz v1, :cond_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u6ca1\u6709\u5386\u53f2\u8bb0\u5f55\uff0c\u52a0\u8f7d\u6dd8\u5b9dsso\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->tryTaobaoSsoLogin()V

    .line 51
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setRecentList()V

    .line 52
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected switchToTaobaoUserLogin(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 172
    const-string/jumbo v0, "YWUC-JTTYZH-C11"

    const-string/jumbo v1, "taobao"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v2, "source_accountSelectAccount"

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 180
    const-string/jumbo v3, "login_param"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 182
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string/jumbo v1, "source_accountSelectAccount"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    const-string/jumbo v2, "TAOBAO"

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 192
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->loginContainer:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 193
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "TAOBAO"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 196
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void

    .line 186
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected tryTaobaoSsoLogin()V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u5c1d\u8bd5\u6dd8\u5b9dsso\u4fe1\u4efb\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
