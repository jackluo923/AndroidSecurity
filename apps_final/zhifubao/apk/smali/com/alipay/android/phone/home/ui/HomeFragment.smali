.class public Lcom/alipay/android/phone/home/ui/HomeFragment;
.super Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;
.implements Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field protected i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field private final l:Landroid/content/Context;

.field private m:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

.field private n:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private o:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private r:Lcom/alipay/android/phone/home/ui/HeaderView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private v:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

.field private final w:Landroid/os/Handler;

.field private x:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final y:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/alipay/android/phone/home/ui/z;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/home/ui/z;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    .line 125
    iput-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 268
    new-instance v0, Lcom/alipay/android/phone/home/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aa;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->y:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    .line 421
    new-instance v0, Lcom/alipay/android/phone/home/ui/ac;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ac;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 450
    new-instance v0, Lcom/alipay/android/phone/home/ui/ae;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ae;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "constructor"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    .line 77
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->x:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->x:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->m:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->x:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->n:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->x:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setFadingEdgeLength(I)V

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setOverScrollMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->U:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HeaderView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->r:Lcom/alipay/android/phone/home/ui/HeaderView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->A:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    new-instance v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->t:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/home/ui/NearAnimHelper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->v:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "initHomeAppGrid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, p0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Lcom/alipay/android/phone/home/ui/ag;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/ag;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->i:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->enableEditMode(II)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->refreshAppListData()V

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "initDefaultBanner"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a()Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->b()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->m:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V

    .line 84
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->h:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 83
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HeaderAreaLayout"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    .line 167
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->unregisteLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->v:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iput-boolean v2, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 636
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/home/ui/al;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/phone/home/ui/al;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/ui/NearAnimHelper;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->v:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 3

    .prologue
    .line 481
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "has no ad clear ads"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->y:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->reportUserRank(Z)Z

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->b()V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;-><init>()V

    iput-object p1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "store logo size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->o:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-object v4, p0

    move v6, v5

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    iput-object p1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 561
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getTopScreenAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 562
    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getTopScreenAppsFromLocal  size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 565
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    :cond_1
    return-void

    .line 564
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 566
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getTopScreenAppsFromLocal  app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000689"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 569
    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->u:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 570
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v3, "O2ORemoteInfo setStoreInfoFromAppCenter "

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/android/phone/home/ui/aj;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aj;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->C:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000056"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 574
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->L:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 575
    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->j:I

    .line 574
    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V

    .line 576
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->M:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 578
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->M:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 581
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 582
    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->d:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 584
    :cond_6
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "10000007"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->O:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 586
    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->k:I

    .line 585
    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFragment;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V

    .line 587
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 588
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->P:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 589
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 591
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->M:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 592
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 593
    sget v3, Lcom/alipay/android/phone/openplatform/R$string;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ai;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ai;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    :cond_0
    return-void
.end method

.method public onBannerAdClick(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 640
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " ad click and upload later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->n:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "CLICK"

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->N:I

    if-ne v0, v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->jumpToSaoyisao()V

    .line 224
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->K:I

    if-ne v0, v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->jumpToSaomafu()V

    .line 227
    const-string/jumbo v0, "20000056"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->A:I

    if-ne v0, v1, :cond_0

    .line 231
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->c()V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    .line 233
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 237
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 238
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 239
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 240
    const-string/jumbo v4, "u"

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v0, "dt"

    const-string/jumbo v4, "\u6d3b\u52a8\u8be6\u60c5"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v0, "st"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string/jumbo v0, "pe"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string/jumbo v0, "sb"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string/jumbo v0, "le"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 247
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 247
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto/16 :goto_0

    .line 250
    :cond_3
    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->u:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->u:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onDestroy()V

    .line 404
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->m:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->m:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V

    .line 407
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onDetachedFromWindow()V

    .line 498
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 501
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 502
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "onDraw"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onDraw(Landroid/graphics/Canvas;)V

    .line 291
    return-void
.end method

.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 707
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onError "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 702
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onProcess "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedRefreshHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 389
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->refreshHomeAppsData()V

    .line 394
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshAds"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "getHomeAds"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->n:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->j:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->n:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b()V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->r:Lcom/alipay/android/phone/home/ui/HeaderView;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->r:Lcom/alipay/android/phone/home/ui/HeaderView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HeaderView;->onRefresh()V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "home onReturn send broadcast"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.alipay.mobile.RETURN_TO_HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "home broadcast content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v4, v4, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "iconurl"

    iget-object v3, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "jumpurl"

    iget-object v3, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "desc"

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 399
    :cond_4
    return-void
.end method

.method public onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 3

    .prologue
    .line 649
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "O2ORemoteInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/an;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/an;-><init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 692
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onSucc "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->p:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;

    .line 694
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iput-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFragment$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    .line 696
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 698
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onVisibilityChanged(Landroid/view/View;I)V

    .line 490
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 491
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 493
    :cond_0
    return-void
.end method

.method protected whenRefreshApplistData()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isStrategicTemplate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Z)V

    .line 374
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isStrategicTemplate(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isStrategicTemplate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method
