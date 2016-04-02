.class public Lcom/alipay/android/widgets/asset/AssetWidgetGroup;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;
.implements Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/ViewGroup;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/alipay/asset/common/view/AccountInfoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Ljava/util/Map;

    .line 363
    :goto_0
    return-object v0

    .line 358
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 359
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 363
    goto :goto_0

    .line 360
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 361
    iget-object v3, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-direct {v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>()V

    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setWidgetId(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setMainInfo(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSecondaryInfo(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSchema(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    invoke-virtual {v4, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setExtInfos(Ljava/util/Map;)V

    :cond_3
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 506
    if-eqz p0, :cond_1

    .line 507
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    :cond_1
    return-object v3

    .line 507
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 508
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 514
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 515
    if-eqz v0, :cond_5

    .line 516
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 513
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 516
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 517
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 518
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Z)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->setAmountHidden(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Z)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;)V
    .locals 1

    .prologue
    .line 379
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setMainInfo(Ljava/lang/String;)V

    .line 383
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSecondaryInfo(Ljava/lang/String;)V

    .line 384
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSchema(Ljava/lang/String;)V

    .line 385
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setExtInfos(Ljava/util/Map;)V

    .line 386
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setWidgetId(Ljava/lang/String;)V

    .line 389
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setTitle(Ljava/lang/String;)V

    .line 392
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setIconUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    if-eqz p0, :cond_1

    .line 400
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 401
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    :cond_1
    return-void

    .line 402
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 405
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 406
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 407
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    if-nez v2, :cond_4

    .line 408
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-static {v1, v2}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;)V

    goto :goto_1

    .line 410
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 345
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c(Ljava/lang/String;)Z

    move-result v0

    .line 350
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 422
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 423
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    .line 501
    :goto_0
    return-object v0

    .line 426
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 432
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 470
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    .line 471
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 494
    new-instance v0, Lcom/alipay/android/widgets/asset/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/h;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 501
    goto :goto_0

    .line 428
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 429
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->copy()Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 434
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v5

    .line 435
    if-eqz v5, :cond_6

    .line 436
    invoke-virtual {v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 437
    invoke-virtual {v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-boolean v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    if-nez v0, :cond_8

    .line 438
    invoke-virtual {v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-static {v5, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;)V

    .line 439
    invoke-virtual {v1, v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;)V

    .line 444
    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 445
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 446
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 441
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;)V

    goto :goto_4

    .line 449
    :cond_9
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getIndex()I

    move-result v0

    if-lez v0, :cond_a

    .line 450
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 451
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 452
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 454
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 455
    if-eqz v0, :cond_a

    iget-object v5, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->index:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 457
    :try_start_0
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 458
    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    :cond_a
    :goto_5
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getIndex()I

    move-result v0

    if-lez v0, :cond_2

    .line 465
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 471
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 472
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 474
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-boolean v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    if-nez v0, :cond_3

    .line 475
    new-instance v6, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-direct {v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>()V

    .line 476
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    invoke-static {v6, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;)V

    .line 481
    new-instance v6, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    .line 482
    invoke-virtual {v6, v7}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    .line 484
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->index:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 486
    invoke-virtual {v6, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setIndex(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    :cond_c
    :goto_6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    const-string/jumbo v1, "HOME"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;)V
    .locals 3

    .prologue
    .line 293
    const-string/jumbo v1, "AssetWidgetGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateWealthTab, null result:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez p1, :cond_3

    .line 295
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a()V

    .line 296
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoMap(Ljava/util/Map;Z)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 319
    :cond_1
    :goto_1
    return-void

    .line 293
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "\u62ff\u5230\u670d\u52a1\u7aefrpc\u7ed3\u679c\uff0c\u5237\u65b0tab"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    .line 306
    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->markInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/util/Map;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->dynamicModules:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 308
    iget-object v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicResult;->fixModules:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    .line 309
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoMap(Ljava/util/Map;Z)V

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 314
    if-ne v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onRpcFinish"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v0, "pullrefresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "stopProgressBar"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 332
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 336
    const-string/jumbo v0, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, "return"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    .line 341
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "getIndicator start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->e:I

    .line 103
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->P:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 107
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const-string/jumbo v1, "50000003"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    .line 110
    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->k:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->h:I

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 115
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a()Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    .line 120
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;)V

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v7}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    const-string/jumbo v0, "\u6295\u8d44\u7406\u8d22"

    invoke-virtual {v7, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_YDAY_GAIN"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "\u6628\u65e5\u6536\u76ca"

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_MFUND"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/fund"

    const-string/jumbo v3, "\u4f59\u989d\u5b9d"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_FIXED"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/myfixeddeposit"

    const-string/jumbo v3, "\u62db\u8d22\u5b9d"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_STOCK"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/stock"

    const-string/jumbo v3, "\u80a1\u7968"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_BOLLYWOOD"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/bollywood"

    const-string/jumbo v3, "\u5a31\u4e50\u5b9d"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v7}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_CREDIT"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/credit"

    const-string/jumbo v3, "\u829d\u9ebb\u4fe1\u7528\u5206"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_HUABEI"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/spend"

    const-string/jumbo v3, "\u8682\u8681\u82b1\u5457"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_JIEBEI"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/ecmobile"

    const-string/jumbo v3, "\u8682\u8681\u501f\u5457"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    const-string/jumbo v0, "\u4fe1\u7528\u8d22\u5bcc"

    invoke-virtual {v7, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setTitle(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v7}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_INSURANCE"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/insurance"

    const-string/jumbo v3, "\u6211\u7684\u4fdd\u969c"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setIndex(I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v7}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_CHARITY"

    const-string/jumbo v2, "android-phone-wealth-home/com.alipay.android.phone.wealth.home/charity"

    const-string/jumbo v3, "\u7231\u5fc3\u6350\u8d60"

    const-string/jumbo v4, "\u67e5\u770b\u8be6\u60c5"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    const/16 v0, 0x7d0

    invoke-virtual {v7, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setIndex(I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "WEALTH_HOME_ACC_BALANCE"

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_ACC_BALANCE"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "WEALTH_HOME_BANKCARD"

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_BANKCARD"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "WEALTH_HOME_KABAO"

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_KABAO"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "WEALTH_HOME_TOTAL_ASSET"

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_TOTAL_ASSET"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    .line 124
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;)Z

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "getView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    .line 147
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/widgets/asset/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/e;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->G:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/widgets/asset/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/f;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->D:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoMap(Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onRefresh start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onResume start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 223
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 225
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widgets/asset/g;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widgets/asset/g;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 232
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 228
    :cond_1
    const-string/jumbo v0, "resume"

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onResume end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$drawable;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    goto :goto_1
.end method

.method public onReturn()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onReturn start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "return"

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Landroid/app/Activity;

    .line 86
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 80
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Ljava/lang/String;

    .line 97
    return-void
.end method
