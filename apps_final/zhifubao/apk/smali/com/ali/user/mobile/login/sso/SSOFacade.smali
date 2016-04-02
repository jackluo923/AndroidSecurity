.class public Lcom/ali/user/mobile/login/sso/SSOFacade;
.super Ljava/lang/Object;
.source "SSOFacade.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

.field private c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->a:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getRpcProxy(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->b:Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    .line 49
    new-instance v0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C27sso"

    invoke-direct {v0, p1, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 50
    return-void
.end method

.method private static a()J
    .locals 5

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v0, "http://api.wapa.taobao.com/rest/api2.do?v=*&api=mtop.common.getTimestamp"

    invoke-static {v0}, Lcom/ali/user/mobile/util/HttpUtil;->doHttpRequest(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 141
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "ret"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    const-string/jumbo v2, "SUCCESS::\u63a5\u53e3\u8c03\u7528\u6210\u529f"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 154
    :goto_0
    return-wide v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v1, "SSOFacade.login"

    const-string/jumbo v2, "\u4e0eMTOP\u670d\u52a1\u7aef\u65f6\u95f4\u540c\u6b65\u51fa\u73b0\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 160
    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    const-string/jumbo v2, "SSO"

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v2, "DEV"

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v2, "TIME"

    invoke-virtual {v1, v2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v2, "IMEI"

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v2, "IMSI"

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v2, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    .line 169
    const/4 v3, 0x1

    iput v3, v2, Lcom/taobao/securityjni/tools/DataContext;->category:I

    .line 170
    const/4 v3, 0x0

    iput v3, v2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    .line 171
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    .line 175
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SSOFacade.login"

    const-string/jumbo v5, "\u751f\u6210\u5b89\u5168\u7b7e\u540d,\u5165\u53c2,ssoToken:%s, taobaoDeviceId:%s, timeStamp:%s, imei:%s, imsi:%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 176
    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    .line 175
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/taobao/securityjni/SecretUtil;

    invoke-direct {v3, v0}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    .line 179
    invoke-virtual {v3, v1, v2}, Lcom/taobao/securityjni/SecretUtil;->getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "SSOFacade.login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u6210\u529f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string/jumbo v1, "SSOFacade.login"

    const-string/jumbo v2, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u5931\u8d25,ssoToken:%s,taobaoDeviceId:%s,timeStamp:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/login/sso/SSOInfo;Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;
    .locals 8

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 109
    new-instance v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->userId:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->deviceId:Ljava/lang/String;

    .line 112
    iput-object p3, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->productId:Ljava/lang/String;

    .line 113
    iput-object p4, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->productVersion:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->imei:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->imsi:Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "android"

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->systemType:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->did:Ljava/lang/String;

    .line 118
    if-eqz p5, :cond_0

    .line 119
    iget-object v1, p5, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->alipaySsoToken:Ljava/lang/String;

    .line 121
    :cond_0
    if-eqz p6, :cond_1

    .line 122
    iget-object v1, p6, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;->taobaoSsoToken:Ljava/lang/String;

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->b:Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;->createSsoToken(Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;)Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;

    move-result-object v7

    .line 125
    if-nez v7, :cond_3

    .line 126
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    .line 128
    :cond_2
    const-string/jumbo v2, "N"

    :goto_0
    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "createSSoToken"

    const-string/jumbo v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 133
    :goto_1
    return-object v0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, ""

    iget-boolean v2, v7, Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenResult;->success:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "createSSoToken"

    const-string/jumbo v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;
    .locals 9

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 55
    new-instance v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;-><init>()V

    .line 56
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->loginId:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->alipaySsoToken:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->did:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->productId:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->productVersion:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "android"

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;->systemType:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->b:Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;->verifySsoToken(Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenRequest;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v7

    .line 64
    if-nez v7, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "verifySSoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, v7

    .line 72
    :goto_1
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, v7, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->success:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_2
    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "verifySSoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "verifySSoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;
    .locals 9

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 79
    new-instance v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;

    invoke-direct {v6}, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;-><init>()V

    .line 80
    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->taobaoNick:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->taobaoSSoToken:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->deviceId:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/ali/user/mobile/login/sso/SSOFacade;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->timeStamp:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->imei:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->imsi:Ljava/lang/String;

    .line 86
    iget-object v1, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->taobaoSSoToken:Ljava/lang/String;

    iget-object v2, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->deviceId:Ljava/lang/String;

    iget-object v3, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->timeStamp:Ljava/lang/String;

    iget-object v4, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->imei:Ljava/lang/String;

    iget-object v5, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->imsi:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/login/sso/SSOFacade;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->tokenSign:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->sdkVersion:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->productId:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;->productVersion:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->b:Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;

    invoke-interface {v0, v6}, Lcom/ali/user/mobile/login/sso/facade/CreateTaobaoSsoTokenFacade;->verifyTaobaoSsoToken(Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenReq;)Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;

    move-result-object v7

    .line 92
    if-nez v7, :cond_1

    .line 93
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "verifyTaobaoSsoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v7

    .line 100
    :goto_2
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, v7, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->resultCode:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/ali/user/mobile/login/sso/model/VerifyTaobaoSsoTokenRes;->success:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_3
    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "verifyTaobaoSsoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 99
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOFacade;->c:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "verifyTaobaoSsoToken"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 95
    :cond_2
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
