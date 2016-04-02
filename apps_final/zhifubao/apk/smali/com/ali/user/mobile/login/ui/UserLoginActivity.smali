.class public Lcom/ali/user/mobile/login/ui/UserLoginActivity;
.super Lcom/ali/user/mobile/base/BaseFragmentActivity;
.source "UserLoginActivity.java"


# instance fields
.field protected mFragmentClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected mFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsLoginSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected commitFragment2Background(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 110
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginContainer:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 112
    return-void
.end method

.method public finishAndNotify()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->dismissProgress()V

    .line 173
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 174
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->finish()V

    .line 180
    return-void
.end method

.method protected getAliuserLoginFragment()Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginFragmentClazz()Ljava/lang/Class;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "UserLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u914d\u7f6e\u7684\u767b\u5f55fragment:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v1, "UserLoginActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 88
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLoginFragment(Ljava/lang/String;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLoginFragment - name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onBackKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 192
    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->finishAndNotify()V

    .line 204
    :goto_0
    return v0

    .line 195
    :cond_0
    if-ne v1, v0, :cond_1

    .line 196
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->isAppDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u767b\u9646fragment\u5207\u6362\u6709\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "\u767b\u9646fragment\u5207\u6362\u6709\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 204
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_user_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->setContentView(I)V

    .line 45
    invoke-static {v3}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 46
    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 47
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    .line 50
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openFragmentByAppId(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "UserLoginActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->onBackKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    invoke-static {v1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 58
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 60
    const-string/jumbo v0, "from_register"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openFragmentByAppId(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method protected openFragmentByAppId(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openLoginFragment(Landroid/os/Bundle;)V

    .line 99
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected openLoginFragment(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getAliuserLoginFragment()Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->commitFragment2Background(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 105
    return-void
.end method

.method public putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putLoginFragment - name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",fragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Lcom/ali/user/mobile/context/AliuserLoginContext;->pushLoginHandler(Lcom/ali/user/mobile/context/LoginHandler;)V

    .line 118
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 209
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mAppId:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
