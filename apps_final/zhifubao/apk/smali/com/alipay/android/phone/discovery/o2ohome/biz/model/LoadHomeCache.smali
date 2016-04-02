.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"


# instance fields
.field private callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

.field private category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

.field private context:Landroid/app/Activity;

.field private promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

.field private recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

.field private recommendTemplateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommendTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    return-void
.end method


# virtual methods
.method public asyncLoadCacheData()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public asyncSaveCacheCategory(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setCityInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;)V

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asyncSaveCacheData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->setCityInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->setPromoInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->setMrp(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTemplateInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommendTemplateId:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommendTemplateId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateJson:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    return-object v1
.end method
