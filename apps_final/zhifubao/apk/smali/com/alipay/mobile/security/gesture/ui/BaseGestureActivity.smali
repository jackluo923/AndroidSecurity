.class public abstract Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field protected b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

.field public d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field protected e:Z

.field protected f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

.field protected g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "BaseGestureActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/app/Dialog;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000006"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method private static d()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-56"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "loginTrace"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method private static e()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    const-string/jumbo v2, "\u53d1\u9001\u5b89\u5168\u9000\u51fa\u6d88\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onValidateLoginPwdFail state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method protected final a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->removeUserGestureData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onValidateSixPwdFail state"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    new-instance v2, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;

    invoke-direct {v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;-><init>()V

    invoke-virtual {v2, p1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setLogonId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "BaseGestureActivity"

    const-string/jumbo v5, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletTid(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "BaseGestureActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f walletTid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "BaseGestureActivity"

    const-string/jumbo v4, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setClientId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImsi(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "BaseGestureActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;->logout(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseGestureActivity"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e()V

    throw v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reflect startApp sourceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "doStartApp"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->h:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/g;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/security/gesture/ui/g;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;Z)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->loginPwdValidate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;ZZ)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "allowBack"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "source_gesture"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "gestureswitchaccount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseGestureActivity"

    const-string/jumbo v3, "showLoginApp set NeedAuthGesture false, NeedVerifyGesture true"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->clearLoginUserInfo()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e:Z
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000169"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000181"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    const-string/jumbo v2, "finish all gesture apps"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v1, "logonId"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseGestureActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finish all gesture apps error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseGestureActivity"

    const-string/jumbo v3, "\u6dfb\u52a0\u8d26\u6237\u8df3\u8f6c\u767b\u5f55\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseGestureActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finish activity error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method protected a(Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setToggleButtonStatus state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsFromInside()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "hideaccount"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/b;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/a/f;->q:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/c;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected a(ZZ)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onValidateSuccess state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Landroid/app/Dialog;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "currentUserLoginState"

    const-string/jumbo v2, "false"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    const-string/jumbo v2, "goLogin(logonId)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    const-string/jumbo v2, "\u5fd8\u8bb0\u624b\u52bf\u5bc6\u7801\uff0c\u8df3\u8f6c\u767b\u5f55\u524d\uff0c\u6e05\u9664\u7528\u6237\u7684\u514d\u767b\u6807\u8bb0\u548c\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    const-string/jumbo v0, "false###goLogin-\u5fd8\u8bb0\u5bc6\u7801OR\u624b\u52bf\u9519\u8bef\u8d85\u9650\u5236"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "setAutoLogin=false###goLogin-\u5fd8\u8bb0\u5bc6\u7801OR\u624b\u52bf\u9519\u8bef\u8d85\u9650\u5236"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "0"

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUserInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b()V

    invoke-virtual {p0, p1, v5, v5}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseGestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loginId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v4, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    new-instance v4, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;

    invoke-direct {v4}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v1, "simple"

    invoke-virtual {v4, v1}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setPasswordType(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->validateSimplePassword(Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->dismissProgressDialog()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(ZZ)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->dismissProgressDialog()V

    if-eqz p2, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method protected final b(ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsFromInside()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "hideaccount"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/d;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/d;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;Z)V

    const-string/jumbo v3, "\u8bf7\u8f93\u5165\u624b\u673a\u652f\u4ed8\u5bc6\u7801"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/e;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/f;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->show()V

    return-void
.end method

.method protected final c()V
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->K:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->L:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/a;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/a;-><init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v0, p0

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "setAutoLogin"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd kk:mm:ss:SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    const-string/jumbo v3, "securityapp"

    const-string/jumbo v4, "security"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final c(ZLjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->I:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, p2, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected final d(ZLjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
