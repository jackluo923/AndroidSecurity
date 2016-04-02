.class public Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "WealthHomeRpcExcutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d:Z

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 41
    const-class v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;

    .line 42
    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->setShowNetworkErrorView(Z)V

    .line 43
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method

.method static synthetic a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic b([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs c([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    array-length v0, p0

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static varargs e([Ljava/lang/Object;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 78
    array-length v0, p0

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    check-cast v0, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs f([Ljava/lang/Object;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;
    .locals 5

    .prologue
    .line 83
    new-instance v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;

    invoke-direct {v1}, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;-><init>()V

    .line 84
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 87
    const-string/jumbo v2, "LOGON"

    invoke-static {p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;->source:Ljava/lang/String;

    .line 98
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "WealthHome-rpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WealthHomeRpc:source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;

    invoke-interface {v2, v1}, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeDynamicManager;->queryWealthHomeInfoV90(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_1
    return-object v0

    .line 95
    :cond_1
    const-string/jumbo v0, "HOME"

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoDynamicReq;->source:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->f([Ljava/lang/Object;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome-rpc"

    const-string/jumbo v2, "onRpcException"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome-rpc"

    const-string/jumbo v3, "onRpcFinish"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->hideTipView()V

    const-string/jumbo v1, "LOGON"

    invoke-static {p2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d:Z

    :cond_0
    if-eqz p1, :cond_5

    const-string/jumbo v1, "100"

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "1012"

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const-string/jumbo v1, "1012"

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome-rpc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "familyrelations:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->familyRelations:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/widgets/asset/rpc/c;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/alipay/android/widgets/asset/rpc/c;-><init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;[Ljava/lang/Object;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->e([Ljava/lang/Object;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/alipay/android/widgets/asset/rpc/d;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/android/widgets/asset/rpc/d;-><init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    if-eqz p1, :cond_6

    const-string/jumbo v1, "1010"

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_6
    const-string/jumbo v1, "login"

    invoke-static {p2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "personal"

    invoke-static {p2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->l:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public varargs start([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d:Z

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome-rpc"

    const-string/jumbo v2, "RPC\u6b63\u5728\u6267\u884c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->e([Ljava/lang/Object;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    move-result-object v0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v1, Lcom/alipay/android/widgets/asset/rpc/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/android/widgets/asset/rpc/b;-><init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v0, "LOGON"

    invoke-static {p1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->d:Z

    goto :goto_0
.end method
