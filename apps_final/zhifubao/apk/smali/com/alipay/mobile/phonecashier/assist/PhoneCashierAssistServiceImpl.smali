.class public Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;
.super Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;
.source "PhoneCashierAssistServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserInfo()Ljava/util/Map;
    .locals 5

    .prologue
    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 58
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string/jumbo v4, "extern_token"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v2, "logonId"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v2, "userId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-object v1
.end method

.method public getUserInfoSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 40
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 41
    const-string/jumbo v1, ""

    .line 43
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhoneCashierBootManager"

    const-string/jumbo v3, "user not login"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isQihooGuardOpened()Z
    .locals 1

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 122
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQihooInstalled()Z
    .locals 1

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooInstalled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public readBankCard(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 82
    const-class v2, Lcom/alipay/android/phone/scancode/export/ScanService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 83
    new-instance v2, Lcom/alipay/android/phone/scancode/export/ScanRequest;

    invoke-direct {v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest;-><init>()V

    sget-object v3, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->CARD:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setScanType(Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v2

    .line 84
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setSourceId(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;-><init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanService;->scan(Lcom/alipay/android/phone/scancode/export/ScanRequest;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V

    .line 103
    return-void
.end method

.method public readQihooSMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->readQihooSMS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public requestMspData(Ljava/util/Map;)Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;-><init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/util/Map;)V

    .line 175
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;-><init>(Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;)V

    .line 176
    new-instance v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;

    invoke-direct {v2}, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;-><init>()V

    .line 177
    const-string/jumbo v0, "namespace"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nsp:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, "api_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nm:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->params:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "api_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_ver:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "auth_key"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->auth_key:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "tplVersion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ver:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "user_agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ua:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->session:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->tid:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "imei"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imei:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "imsi"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imsi:Ljava/lang/String;

    .line 188
    invoke-virtual {v2}, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->build()Lcom/alipay/mobilecashier/service/rpc/MspReq;

    move-result-object v2

    .line 190
    const-string/jumbo v3, "alipay.security.security.dispatch"

    .line 192
    const-string/jumbo v0, "dispatchtype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-class v0, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;

    .line 195
    invoke-interface {v0, v2}, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;->dispatch(Lcom/alipay/mobilecashier/service/rpc/MspReq;)Lcom/alipay/mobilecashier/service/rpc/MspRes;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 202
    :goto_0
    new-instance v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;

    invoke-direct {v0}, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->mspParam:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nsp:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nm:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->params:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_ver:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->code:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->err_msg:Ljava/lang/String;

    .line 217
    return-object v0

    .line 197
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 199
    const-class v0, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;

    .line 200
    invoke-interface {v0, v2}, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;->dispatch(Lcom/alipay/mobilecashier/service/rpc/MspReq;)Lcom/alipay/mobilecashier/service/rpc/MspRes;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0
.end method
