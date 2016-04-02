.class public Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
.super Ljava/lang/Object;
.source "AssetDynamicDataProcessor.java"


# static fields
.field private static h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

.field private e:Lcom/alipay/mobile/base/config/ConfigService;

.field private f:J

.field private g:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:J

    .line 50
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:D

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 64
    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 66
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 65
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Lcom/alipay/mobile/base/config/ConfigService;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "WEALTHHOME_REQUEST_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->e:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "WEALTHHOME_REQUEST_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 219
    :cond_0
    return-object p0

    .line 208
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 209
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-boolean v1, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->useCache:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    iput-object v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    iput-boolean v2, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V
    .locals 4

    .prologue
    .line 229
    if-eqz p1, :cond_1

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetDynamicDataProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateWealthHomeInfo:isCache="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;)V

    .line 237
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 237
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 240
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    const-string/jumbo v2, "rpc\u5b8c\u6210\u65f6\u7f13\u5b58\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    return-void

    .line 232
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6267\u884c\u9996\u9875Rpc\u8bf7\u6c42\uff1arefreshRpc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-virtual {v0, v4}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->setShowProgressDialog(Z)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->start([Ljava/lang/Object;)V

    .line 159
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    .line 250
    return-void
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 162
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    .line 166
    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    move-result-object v0

    .line 169
    :cond_0
    if-eqz p2, :cond_4

    .line 170
    if-eqz v0, :cond_3

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    iput-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    iput-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    .line 175
    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 189
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V

    .line 190
    return-void

    .line 182
    :cond_3
    iput-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    .line 183
    iput-object v3, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    goto :goto_0

    .line 186
    :cond_4
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9996\u9875Rpc\u8bf7\u6c42\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "pullrefresh"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-wide/16 v0, 0x0

    .line 100
    const-string/jumbo v4, "resume"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->g:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    .line 104
    :cond_2
    iget-wide v4, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:J

    sub-long/2addr v2, v4

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "WealthHome-rpc"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u4e0a\u6b21\u8bf7\u6c42\u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",intervalTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    invoke-interface {v0, p2}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->b(Ljava/lang/String;)V

    .line 110
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "resume"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->f:J

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/android/widgets/asset/rpc/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/widgets/asset/rpc/a;-><init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetDynamicDataProcessor"

    const-string/jumbo v2, "loadCachHomeInfo"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    invoke-direct {p0, v0, v5}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V

    .line 147
    :cond_0
    :goto_0
    return v5

    .line 137
    :cond_1
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetDynamicDataProcessor"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get cache = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-direct {p0, v0, v5}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->d:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;)V

    .line 268
    :cond_0
    return-void
.end method
