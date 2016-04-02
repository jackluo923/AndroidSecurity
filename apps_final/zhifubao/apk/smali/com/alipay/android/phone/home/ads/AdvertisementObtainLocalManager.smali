.class public Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;
.super Ljava/lang/Object;
.source "AdvertisementObtainLocalManager.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->d:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "_KEY_AD_SPACECODE_"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->b:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "TIME_STAMP"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->c:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->e:Landroid/content/SharedPreferences;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "OPENPLATFORM_HOME_ADS"

    .line 48
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->e:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;-><init>()V

    return-void
.end method

.method public static final a()Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/android/phone/home/ads/b;->a()Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move-object v0, v1

    .line 116
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    :try_start_0
    const-class v2, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a(Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v1, v0

    .line 134
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 115
    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_KEY_AD_SPACECODE_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private static a(Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 139
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->adList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 141
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    :cond_1
    return-void

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-wide v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->gmtEnd:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_3

    iget-wide v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->gmtEnd:J

    cmp-long v4, v1, v4

    if-gtz v4, :cond_4

    .line 148
    :cond_3
    iget-wide v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->gmtStart:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_5

    iget-wide v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->gmtStart:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_5

    .line 149
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->adId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " is out of date"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->adId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " is useful"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final b()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;
    .locals 5

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "KEY_GET_HISTORY_CACHE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    sget-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a(Ljava/lang/String;)Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    const-string/jumbo v2, "KEY_GET_HISTORY_CACHE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->adList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-direct {v1}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;-><init>()V

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 310
    iget-object v2, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->spaceCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 311
    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->adList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 321
    :goto_1
    return-object v0

    .line 311
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;

    .line 312
    new-instance v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {v3}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;-><init>()V

    .line 313
    iget-object v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->adId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 314
    iget-object v4, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->hrefUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    .line 315
    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;->content:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    .line 316
    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
