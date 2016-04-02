.class public Lcom/ali/user/mobile/login/rds/RDSWraper;
.super Ljava/lang/Object;
.source "RDSWraper.java"


# instance fields
.field private a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    .line 49
    iput-object p1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/rds/RDSWraper;)Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/rds/RDSWraper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getSafeData(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/taobao/securityjni/SecBody;

    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/taobao/securityjni/SecBody;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v1, v0}, Lcom/taobao/securityjni/SecBody;->getSecBodyData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 240
    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v0, "wua"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "appKey"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string/jumbo v1, "RDSWraper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->enableLog()V

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFocusChange(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/ali/user/mobile/login/rds/RDSWraper$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper$3;-><init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Landroid/view/View$OnFocusChangeListener;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->setMcontext(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string/jumbo v1, "user"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "pageName"

    iget-object v2, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "refPageName"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v1, "appname"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "appver"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "sdkname"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v1, "sdkver"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v1, "tid"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "utdid"

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDidAsync()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v1, "umidToken"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v1, "apdidToken"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "appPackageName"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "appkey"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onPage(Landroid/content/Context;Ljava/util/Map;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initScreenTouch(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper$2;

    invoke-direct {v0, p0, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper$2;-><init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    :cond_0
    return-void
.end method

.method public initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper$1;

    invoke-direct {v0, p0, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper$1;-><init>(Lcom/ali/user/mobile/login/rds/RDSWraper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    return-void
.end method

.method public onControlClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->a:Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    iget-object v1, p0, Lcom/ali/user/mobile/login/rds/RDSWraper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "RDSWraper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
