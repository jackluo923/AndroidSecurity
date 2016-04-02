.class public Lcom/ali/user/mobile/common/api/AliUserLogin;
.super Ljava/lang/Object;
.source "AliUserLogin.java"


# static fields
.field private static a:Lcom/ali/user/mobile/login/OnLoginCaller;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/ali/user/mobile/service/UserLoginService;

.field private d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->c:Lcom/ali/user/mobile/service/UserLoginService;

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 434
    :try_start_0
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$8;

    invoke-direct {v2, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$8;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    .line 435
    invoke-virtual {v1, v0, p2, p1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u6dd8\u5b9dsso\u767b\u5f55\u5931\u8d25,\u4f7f\u7528\u8d26\u5bc6\u767b\u5f55"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 457
    invoke-virtual {p0, v3, p1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 390
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 391
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    .line 392
    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 393
    iput-object p3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 395
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$7;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/common/api/AliUserLogin$7;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/LoginParam;)V

    .line 428
    const-string/jumbo v0, "aliuser.ssoAutoLogin"

    .line 395
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 429
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginStart()V

    :cond_0
    invoke-static {p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/ali/user/mobile/common/api/AliUserLogin$5;

    invoke-direct {v3, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V
    .locals 9

    .prologue
    const/16 v8, -0x3ea

    const/4 v7, 0x0

    .line 317
    new-instance v1, Lcom/ali/user/mobile/login/sso/SSOInfo;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/sso/SSOInfo;-><init>()V

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->accountType:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->photoUrl:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->shareApp:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iget-wide v2, p2, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    iput-wide v2, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->tokenTimestamp:J

    invoke-static {p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u9a8c\u8bc1sso\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0, v8}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    :cond_0
    invoke-virtual {p0, v7, p1, v7}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "AliUserLogin"

    const-string/jumbo v3, "\u9a8c\u8bc1sso\u7ed3\u679c\uff0cret:%s, msg:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->memo:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->success:Z

    if-eqz v2, :cond_2

    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v2, "\u9a8c\u8bc1sso token\u6210\u529f\uff0c\u8fdb\u884c\u514d\u767b"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alipay"

    const-string/jumbo v2, "withlogintoken"

    invoke-direct {p0, v1, v0, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "1002"

    iget-object v3, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "AliUserLogin"

    const-string/jumbo v3, "\u9a8c\u8bc1sso token\u9700\u8981\u7528\u6237\u6388\u6743"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v2}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginUserConfirm()V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string/jumbo v0, "&loginId="

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&appName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&callbackUrl=https://www.alipay.com/webviewbridge%3Fsource%3Dsso"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "?loginId="

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u9a8c\u8bc1sso token\u5931\u8d25\uff0c\u542f\u52a8\u8d26\u5bc6\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0, v8}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    :cond_6
    invoke-virtual {p0, v7, p1, v7}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/service/UserLoginService;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->c:Lcom/ali/user/mobile/service/UserLoginService;

    return-object v0
.end method

.method static synthetic access$7()Lcom/ali/user/mobile/login/OnLoginCaller;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/ali/user/mobile/common/api/AliUserLogin;->a:Lcom/ali/user/mobile/login/OnLoginCaller;

    return-object v0
.end method

.method public static registOnLoginCaller(Landroid/content/Context;Lcom/ali/user/mobile/login/OnLoginCaller;)V
    .locals 0

    .prologue
    .line 77
    sput-object p1, Lcom/ali/user/mobile/common/api/AliUserLogin;->a:Lcom/ali/user/mobile/login/OnLoginCaller;

    .line 78
    invoke-static {p1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setLoginCaller(Lcom/ali/user/mobile/login/OnLoginCaller;)V

    .line 79
    return-void
.end method


# virtual methods
.method public bindTaobao(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bindTaobao - param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Landroid/content/Context;)V

    .line 147
    const-string/jumbo v2, "aliuser.bindTaobao"

    .line 114
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public forgotLoginPassword(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "forgotLoginPassword"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$2;

    invoke-direct {v1, p0, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin$2;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V

    .line 210
    const-string/jumbo v2, "aliuser.forgotpwd"

    .line 158
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    return-void
.end method

.method protected openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    :cond_0
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 224
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public setupAlipaySsoLogin(Landroid/content/Context;Lcom/ali/user/mobile/login/sso/SSOLoginCaller;)V
    .locals 3

    .prologue
    .line 270
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "setupAlipaySsoLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$4;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$4;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    .line 282
    const-string/jumbo v2, "aliuserlogin.callAlipaySsoLogin"

    .line 272
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method public setupLogin(Landroid/content/Context;ZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "ssologin:%s, needUI:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Landroid/content/Context;Z)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, v5, p1, v5}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setupNormalLogin(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 235
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupNormalLogin - param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public setupTaobaoSsoLogin(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupSsoLogin - needUI:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin$3;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V

    .line 257
    const-string/jumbo v2, "aliuserlogin.callTaobaoSsoLogin"

    .line 247
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    return-void
.end method

.method protected ssoLogin(Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$9;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 491
    return-void
.end method
