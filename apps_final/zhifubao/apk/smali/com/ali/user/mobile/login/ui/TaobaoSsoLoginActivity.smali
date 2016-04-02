.class public Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "TaobaoSsoLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

.field private b:Lcom/ali/user/mobile/login/LoginParam;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 7

    .prologue
    .line 156
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "\u4fdd\u5b58sso\u767b\u5f55\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "alipay"

    iget-object v5, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/LoginHistory;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    const-string/jumbo v3, "alipay"

    invoke-virtual {v1, v2, v3}, Lcom/ali/user/mobile/db/LoginHistoryDao;->deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setSaveHistory(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    if-ne v0, v1, :cond_2

    .line 85
    const-string/jumbo v0, "UC-LOG-150512-03"

    const-string/jumbo v1, "logingoon"

    const-string/jumbo v2, "TaobaoSsoLogin"

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v3, v3, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v4, v4, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->isDirectLogin:Z

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "\u6dd8\u5b9dsso\u4fe1\u4efb\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "\u767b\u5f55\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->showProgress(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->doBackgroundLogin()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "\u4e0d\u652f\u6301\u6dd8\u5b9dsso\u4fe1\u4efb\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const v0, 0xb001

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->finish()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginAnother:I

    if-ne v0, v1, :cond_0

    .line 97
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "\u7528\u6237\u9009\u62e9\u5176\u4ed6\u8d26\u6237\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "UC-LOG-150512-04"

    const-string/jumbo v1, "loginother"

    const-string/jumbo v2, "TaobaoSsoLogin"

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v3, v3, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v4, v4, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const v0, 0xb003

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_taobao_sso_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccount:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->d:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->e:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginAnother:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "taobao_sso_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->headImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/ui/widget/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->headImg:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$drawable;->taobao_head:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    const-string/jumbo v0, "UC-LOG-150512-02"

    const-string/jumbo v1, "loginssopage"

    const-string/jumbo v2, "TaobaoSsoLogin"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "\u6dd8\u5b9dsso\u4fe1\u4efb\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->b:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    const v1, 0xb004

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->finish()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoginSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v0, "TaobaoSsoLoginActivity"

    const-string/jumbo v1, "AliuserLoginContext.getLoginHandler()==null\uff0c\u8fd9\u662f\u4e00\u4e2a\u5f02\u5e38\u6d41\u7a0b"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->dismissProgress()V

    .line 135
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    const-string/jumbo v2, "login_param"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->finish()V

    .line 153
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_0
    new-instance v1, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity$2;-><init>(Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    invoke-interface {v0, p1}, Lcom/ali/user/mobile/context/LoginHandler;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method protected prepareLoginParam()Lcom/ali/user/mobile/login/LoginParam;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    iget-object v1, v1, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->loginToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "taobao"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "withlogintoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->b:Lcom/ali/user/mobile/login/LoginParam;

    .line 125
    return-object v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;->mAppId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
