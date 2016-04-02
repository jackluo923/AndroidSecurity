.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;
.super Lcom/ali/user/mobile/webview/WebViewActivity;
.source "AliUserRegisterWebview.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_webview"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;-><init>()V

    .line 41
    const-string/jumbo v0, "_ap_action=registerActive"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "activeUserValid.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->b:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "email="

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 137
    const-string/jumbo v0, "AliUserRegisterWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53bb\u767b\u9646, account:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v2, ",isClear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iput-object p1, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    iput-object p2, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 148
    :cond_1
    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    if-eqz p3, :cond_2

    .line 150
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->finish()V

    .line 154
    :cond_2
    const-string/jumbo v1, "from_register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->dismissProgress()V

    .line 196
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string/jumbo v0, "AliUserRegisterWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u90ae\u7bb1\u6ce8\u518c\u7ed3\u679c,resultStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->resultStatus:I

    .line 202
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 203
    const-class v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    const-string/jumbo v2, "showOptionalInfo"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->showOptionalInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "agreementURL"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->agreementURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "optionStatus"

    iget-boolean v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->optionStatus:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "token"

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->finish()V

    goto :goto_0

    .line 213
    :cond_1
    const/16 v1, 0xbc2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xbc1

    if-ne v0, v1, :cond_3

    .line 214
    :cond_2
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->reregister:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$2;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;)V

    move-object v0, p0

    move-object v6, v5

    .line 214
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    const/16 v1, 0xbc3

    if-ne v0, v1, :cond_4

    .line 222
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->dologin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    move-object v0, p0

    move-object v6, v5

    .line 222
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    const-string/jumbo v2, ""

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->memo:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v6, v5

    move-object v7, v5

    .line 230
    invoke-virtual/range {v1 .. v7}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected doEmailRegister(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 177
    const-string/jumbo v0, "AliUserRegisterWebview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f00\u59cb\u90ae\u7bb1\u6ce8\u518c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->showProgress(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ali/user/mobile/service/UserRegisterService;->verifyEmailAndVerification(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->dismissProgress()V

    .line 184
    throw v0
.end method

.method protected exitDialog()V
    .locals 7

    .prologue
    .line 251
    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->webview_back_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->yes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$4;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;)V

    .line 259
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->no:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 251
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 260
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected goRegister()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "AliUserRegisterWebview"

    const-string/jumbo v1, "\u53bb\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method protected initBackButton()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->title_back:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v0, "AliUserRegisterWebview"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "nick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mNick:Z

    .line 53
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mNick:Z

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->exitDialog()V

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected openDialog(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    return-void
.end method

.method protected overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->urlHelper:Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;

    invoke-virtual {v0, p2}, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;->checkWebviewBridge(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :cond_0
    iput-boolean v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->allowReadTitle:Z

    .line 78
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/util/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    :cond_1
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string/jumbo v1, "_ap_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string/jumbo v6, "msg"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 93
    :goto_0
    const-string/jumbo v2, "setNick"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string/jumbo v7, "token"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 97
    const-string/jumbo v0, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string/jumbo v0, "AliUserRegisterWebview"

    const-string/jumbo v1, "action = login"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0, v8}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    move v0, v3

    .line 128
    :goto_2
    return v0

    .line 100
    :cond_3
    const-string/jumbo v0, "registerActive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    const-string/jumbo v0, "AliUserRegisterWebview"

    const-string/jumbo v1, "action = registerActive"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->doEmailRegister(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_4
    const-string/jumbo v0, "openDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v0, "AliUserRegisterWebview"

    const-string/jumbo v1, "action = openDialog"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->openDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 111
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    const-string/jumbo v1, "AliUserRegisterWebview"

    const-string/jumbo v2, "setNick = true"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v4, v0, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v3

    .line 114
    goto :goto_2

    .line 118
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 119
    iput-boolean v8, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->allowReadTitle:Z

    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    .line 122
    goto :goto_2

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {p0, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->doEmailRegister(Ljava/lang/String;)V

    .line 128
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 264
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->mAppId:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
