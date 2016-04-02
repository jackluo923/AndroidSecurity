.class public Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;
.super Ljava/lang/Object;


# static fields
.field public static final TAOBAO_SSO_MTOP_APP_KEY_DEV:Ljava/lang/String; = "4272"

.field public static final TAOBAO_SSO_MTOP_APP_KEY_ONLINE:Ljava/lang/String; = "12501616"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

.field private static volatile d:Z

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSecSign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {p6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p6}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v2, "SSO"

    invoke-virtual {v1, v2, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "DEV"

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "TIME"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMEI"

    invoke-virtual {v1, v2, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "IMSI"

    invoke-virtual {v1, v2, p5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/taobao/securityjni/tools/DataContext;-><init>(I[B)V

    const/4 v3, 0x1

    iput v3, v2, Lcom/taobao/securityjni/tools/DataContext;->category:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/taobao/securityjni/tools/DataContext;->type:I

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TaobaoSsoLoginUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u751f\u6210\u5b89\u5168\u7b7e\u540d,\u5165\u53c2,ssoToken:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",taobaoDeviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",timeStamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",imei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/taobao/securityjni/SecretUtil;

    invoke-direct {v3, v0}, Lcom/taobao/securityjni/SecretUtil;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v3, v1, v2}, Lcom/taobao/securityjni/SecretUtil;->getExternalSign(Ljava/util/LinkedHashMap;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u6210\u529f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    const-string/jumbo v3, "\u751f\u6210\u5b89\u5168\u7b7e\u540d\u5931\u8d25,ssoToken:%s,taobaoDeviceId:%s,timeStamp:%s,imei:%s,imsi:%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSsoToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ali/user/mobile/login/sso/SSOManager;->createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static doHttpRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->c:Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TaobaoSsoLoginUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "http\u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    new-instance v1, Lcom/taobao/securityjni/StaticDataStore;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey(Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4ece\u65e0\u7ebf\u4fdd\u9556\u83b7\u53d6\u5230\u7684appkey\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "4272"

    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->f:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "12501616"

    goto :goto_1
.end method

.method public static getParsedNickName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getParsedSsoToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSsoLoginWrapper(Landroid/content/Context;)Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;
    .locals 4

    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->g:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getSsoRequestParam(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;-><init>(Lcom/ali/user/mobile/login/sso/SSORequestParam;)V

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;-><init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)V

    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->g:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    :cond_0
    sget-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->g:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    return-object v0
.end method

.method public static getSsoRequestParam(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSORequestParam;
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/SSORequestParam;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;->ttid:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static isTaobaoSsoLogin(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->isTaobaoSsoLogin(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaobaoSsoLogin(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000034"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logout()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    const-string/jumbo v3, "\u767b\u51fasso\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v2

    const-string/jumbo v0, "0"

    if-eqz v2, :cond_0

    const-string/jumbo v0, "1"

    :cond_0
    invoke-static {p1, v0}, Landroid/taobao/service/appdevice/util/MTopUtils;->setMTopUrlType(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/taobao/service/appdevice/AppDeviceTokenManager;->getInstance()Landroid/taobao/service/appdevice/AppDeviceTokenManager;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->setDeviceUTDID(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "701339@zhifubao_android_7.1.2"

    invoke-interface {v2, p1, v1, v3}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->setAppTTID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TaobaoSsoLoginUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5c1d\u8bd5\u751f\u6210\u6dd8\u5b9ddeviceId\uff0c\u5165\u53c2,utdid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",appKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mTopUrlType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",ttid:701339@zhifubao_android_7.1.2"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1}, Landroid/taobao/service/appdevice/IAppDeviceTokenManager;->getAppDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u6dd8\u5b9ddeviceId\u6210\u529f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    const-string/jumbo v3, "\u83b7\u53d6\u6dd8\u5b9ddeviceId\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseTaobaoSsoToken(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    sput-boolean v6, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getSsoLoginWrapper(Landroid/content/Context;)Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->getSsoUserInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TaobaoSsoLoginUtils"

    const-string/jumbo v2, "\u6ca1\u6709\u89e3\u6790\u5230taobaoAccountType"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TaobaoSsoLoginUtils"

    const-string/jumbo v2, "sso token\u89e3\u6790\u5b8c\u6210,sso token:%s,nickName:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    sget-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    return v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    invoke-virtual {v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TaobaoSsoLoginUtils"

    const-string/jumbo v2, "\u89e3\u6790\u5230taobaoAccountType,parsedNickName:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u89e3\u6790\u6dd8\u7cfbsso token\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u89e3\u6790\u6dd8\u7cfbsso token\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->e:Z

    goto :goto_2
.end method

.method public static syncTimeStamp()J
    .locals 5

    :try_start_0
    const-string/jumbo v0, "http://api.wapa.taobao.com/rest/api2.do?v=*&api=mtop.common.getTimestamp"

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->doHttpRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ret"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SUCCESS::\u63a5\u53e3\u8c03\u7528\u6210\u529f"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TaobaoSsoLoginUtils"

    const-string/jumbo v3, "\u4e0eMTOP\u670d\u52a1\u7aef\u65f6\u95f4\u540c\u6b65\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static writeSsoToken(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->writeSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static writeSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getSsoLoginWrapper(Landroid/content/Context;)Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p0, p2, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TaobaoSsoLoginUtils"

    const-string/jumbo v4, "\u5199\u5165sso token\uff0c\u7ed3\u679c\u4e3a:%s,nickName:%s,ssoToken:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TaobaoSsoLoginUtils"

    const-string/jumbo v4, "\u5199\u5165sso token\u5931\u8d25"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method
