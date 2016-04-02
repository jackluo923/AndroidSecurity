.class public Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AuthorizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APButton;

.field private c:Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->i:Z

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    const-string/jumbo v1, ""

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;

    .line 148
    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/app/AuthorizationApp;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 189
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 190
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->notifyUnlockAuthorizationApp(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->c:Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/authorization/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/authorization/ui/a;-><init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->i:Z

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Lcom/alipay/mobile/authorization/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/authorization/ui/b;-><init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/authorization/ui/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/alipay/mobile/authorization/ui/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/authorization/ui/b;-><init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/authorization/ui/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/alipay/mobile/openplatform/R$layout;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->d:Ljava/lang/String;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "protocol_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "authType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "protocol_url"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->e:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "userId"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->f:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "appId"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->d:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "authType"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->g:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "fromDesktop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->i:Z

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/openplatform/R$string;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/alipay/mobile/authorization/ui/c;

    iget-object v3, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$color;->protocol_link_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/alipay/mobile/authorization/ui/c;-><init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;Lcom/alipay/mobile/framework/MicroApplicationContext;I)V

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x200

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lcom/alipay/mobile/openplatform/R$id;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v0, Lcom/alipay/mobile/authorization/biz/AuthorizationBizImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/authorization/biz/AuthorizationBizImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->c:Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->h:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 264
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 265
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(ZZLjava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->finish()V

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
