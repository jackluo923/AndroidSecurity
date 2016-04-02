.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;
.super Ljava/lang/Object;
.source "DynamicReleaseProcessor.java"


# static fields
.field public static final SP_NAME:Ljava/lang/String; = "DynamicRelease"

.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/HandlerThread;

.field private p:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->j:Z

    .line 80
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    .line 84
    iput v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    .line 91
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;

    .line 93
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->p:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 94
    invoke-static {p1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    .line 95
    invoke-static {p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 96
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 97
    return-void
.end method

.method private a()Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 218
    .line 220
    :try_start_0
    new-instance v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;

    invoke-direct {v2}, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;-><init>()V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->osVersion:Ljava/lang/String;

    .line 224
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->phoneBrand:Ljava/lang/String;

    .line 225
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->phoneModel:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->clientId:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getAccessPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->network:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productId:Ljava/lang/String;

    .line 230
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productId:Ljava/lang/String;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productVersion:Ljava/lang/String;

    .line 235
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productVersion:Ljava/lang/String;

    .line 239
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v4, "DynamicRelease"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ReleaseCode"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    .line 241
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "releaseVersion from logging:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    :goto_0
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 249
    const-string/jumbo v0, "0"

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->g:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->channel:Ljava/lang/String;

    .line 253
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->channel:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 254
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->channel:Ljava/lang/String;

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->userId:Ljava/lang/String;

    .line 258
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->userId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->userId:Ljava/lang/String;

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->extraInfo:Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryDynamicReleaseInfo:productId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",productVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->productVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",releaseVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",phoneBrand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->phoneBrand:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",phoneModel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->phoneModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",osVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->network:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->channel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",extInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->extraInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V

    invoke-direct {v0, v3}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    .line 315
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 316
    const-class v3, Lcom/alipay/mobileappcommon/biz/rpc/repair/ClientRepairFacade;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/ClientRepairFacade;

    invoke-interface {v0, v2}, Lcom/alipay/mobileappcommon/biz/rpc/repair/ClientRepairFacade;->getClientRepairInfo(Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;)Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;

    move-result-object v0

    .line 321
    :goto_1
    return-object v0

    .line 244
    :cond_6
    iget-object v0, v2, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairReq;->releaseVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "releaseVersion is not match:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 539
    .line 542
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v3, "channel.config"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 544
    :try_start_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 545
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 546
    const-string/jumbo v3, "release_version"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    .line 548
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 559
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 567
    :goto_1
    return-object v0

    .line 553
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 559
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 567
    :cond_1
    :goto_3
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 551
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_4
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "readInitReleaseVersion fail"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 553
    if-eqz v1, :cond_2

    .line 555
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 559
    :cond_2
    :goto_5
    if-eqz v0, :cond_1

    .line 561
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 563
    :catch_1
    move-exception v0

    goto :goto_3

    .line 553
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_6
    if-eqz v2, :cond_3

    .line 555
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 559
    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    .line 561
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 563
    :cond_4
    :goto_8
    throw v0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v2

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_8

    .line 553
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    .line 551
    :catch_9
    move-exception v1

    move-object v1, v2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->a()Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->success:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryDynamicReleaseInfo:memo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->memo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rollback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->rollback:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",releaseVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->releaseVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",forceUpgrade="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->forceUpgrade:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->rollback:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v2, "DynamicRelease"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ReleaseCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->releaseVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->forceUpgrade:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->j:Z

    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->patchList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->patchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->bundleList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->bundleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v2, 0x6

    iget-object v3, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->patchList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->bundleList:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->bundleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;->bundleList:Ljava/util/List;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    const-string/jumbo v1, "Start"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Ljava/util/List;)V
    .locals 9

    .prologue
    .line 45
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prepareBundle:fileName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",fileUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",fileMd5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileMd5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;

    iget-object v1, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileName:Ljava/lang/String;

    iget-object v2, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->fileMd5:Ljava/lang/String;

    const-string/jumbo v5, "bundle"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;

    iget-object v2, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->patchName:Ljava/lang/String;

    iget-object v3, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->patchUrl:Ljava/lang/String;

    iget-object v4, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->patchContent:Ljava/lang/String;

    iget-object v5, v6, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;->patchMd5:Ljava/lang/String;

    const-string/jumbo v6, "bundlepatch"

    invoke-direct/range {v1 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, ".action.dynamicrelease.bundlereplace"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "bundleList"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "releaseCode"

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "forceUpgrade"

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->rollback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, ".action.dynamicrelease.rollback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "releaseCode"

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)Lcom/alipay/mobile/common/transport/http/HttpManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->p:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;
    .locals 3

    .prologue
    .line 100
    const-class v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    .line 103
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finish:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    const-string/jumbo v1, "Finish"

    invoke-static {v0, v1, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    :cond_0
    iput v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    .line 146
    iput-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    .line 147
    iput-boolean v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->j:Z

    .line 148
    iput-boolean v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->l:Z

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 154
    :cond_1
    return-void
.end method

.method protected hotpatch(Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;)V
    .locals 6

    .prologue
    .line 484
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->fileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->fileContent:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->md5:Ljava/lang/String;

    const-string/jumbo v5, "hotpatch"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 489
    const-string/jumbo v1, "1"

    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/hotpatch/Hotpatch;->loadPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 491
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "hotpatch:fileName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",fileUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",md5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->md5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",isSuccess="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.LOAD_HOTPATCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 510
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sava releaseCode isOnlyHotpatch"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v2, "DynamicRelease"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ReleaseCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 523
    :cond_1
    return-void

    .line 501
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, ".action.dynamicrelease.hotpatch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    const-string/jumbo v2, "isOnlyHotpatch"

    iget-boolean v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->k:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    const-string/jumbo v2, "releaseCode"

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v2, "filePath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string/jumbo v0, "md5"

    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->i:Ljava/lang/String;

    const-string/jumbo v2, "Fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public isMainProcess()Z
    .locals 4

    .prologue
    .line 526
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 527
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 528
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 530
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->d:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->e:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->f:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->g:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->h:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public start(Z)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x4

    .line 116
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DynamicReleaseProcessor is busy, status is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->b:Landroid/content/Context;

    const-string/jumbo v1, "DynamicRelease"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "LastCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 125
    sub-long v5, v3, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    if-nez p1, :cond_1

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, v3, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isForce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "LastCheckTime"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->n:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
