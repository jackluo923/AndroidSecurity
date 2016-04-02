.class public final Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
.super Ljava/lang/Object;
.source "AssetCacheHelper.java"


# static fields
.field private static a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 65
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 66
    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    .line 67
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 69
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 70
    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 69
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 71
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;
    .locals 4

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 108
    const-string/jumbo v2, "_wealthWidgetHomeData_9_0"

    .line 109
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/a;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/a;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 107
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_wealthAssetAnalyzeClick"

    .line 187
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 186
    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetHomeData_9_0"

    invoke-virtual {v0, p2, v1, p1}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8bbe\u7f6e\u7f13\u5b58\uff0cwealthHomeResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetHomeData_insurance_guide"

    .line 153
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 152
    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetHomeData_hide_amount"

    .line 175
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 174
    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 196
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string/jumbo v3, "_wealthAssetAnalyzeClick"

    .line 201
    new-instance v4, Lcom/alipay/android/widgets/asset/utils/d;

    invoke-direct {v4, p0}, Lcom/alipay/android/widgets/asset/utils/d;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 199
    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    if-nez v0, :cond_0

    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 140
    const-string/jumbo v2, "_wealthWidgetHomeData_insurance_guide"

    .line 141
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/b;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/b;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 139
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    if-nez v0, :cond_0

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 162
    const-string/jumbo v2, "_wealthWidgetHomeData_hide_amount"

    .line 163
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/c;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 161
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 165
    if-nez v0, :cond_0

    move v0, v1

    .line 169
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
