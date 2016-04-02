.class public Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAppsItemAdapter.java"


# static fields
.field public static c:I

.field private static final g:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/view/LayoutInflater;

.field protected d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field private h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

.field private i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private j:Lcom/alipay/android/phone/home/ui/BannerView;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private n:I

.field private final o:F

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    .line 69
    const/16 v0, 0xf

    sput v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    .line 66
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Landroid/os/Handler;

    .line 68
    iput v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    .line 70
    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:F

    .line 71
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 76
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    .line 66
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Landroid/os/Handler;

    .line 68
    iput v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    .line 70
    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:F

    .line 71
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 81
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    .line 82
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i()V

    .line 83
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    sput v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init, banner_gap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->h()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e6b851f    # 0.23f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    .line 110
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 112
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/BannerView;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setBannerClickListener(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V

    .line 158
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 159
    const/4 v1, -0x1

    iget v2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    .line 158
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 160
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;
    .locals 5

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 630
    :goto_0
    return-object v0

    .line 623
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 624
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 5

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    if-nez v0, :cond_2

    .line 719
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 720
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v0

    .line 723
    :cond_0
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 724
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p2, v0

    .line 753
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 754
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "from app name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->c(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 757
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/manager/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/manager/i;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_1
    return-void

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    if-eqz v0, :cond_4

    .line 727
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    .line 728
    add-int/lit8 p1, p1, -0x2

    .line 731
    :cond_3
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    .line 732
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    if-eqz v0, :cond_1

    .line 735
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_6

    .line 736
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ge p1, v0, :cond_6

    .line 737
    add-int/lit8 p1, p1, -0x2

    .line 743
    :cond_5
    :goto_2
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_7

    .line 744
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ge p2, v0, :cond_7

    .line 745
    add-int/lit8 p2, p2, -0x2

    goto/16 :goto_0

    .line 738
    :cond_6
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 739
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_5

    .line 740
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v0, p1, v0

    add-int/lit8 p1, v0, -0x2

    goto :goto_2

    .line 746
    :cond_7
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 747
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 748
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v0, p2, v0

    add-int/lit8 p2, v0, -0x2

    goto/16 :goto_0

    .line 764
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    .line 771
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 177
    return-void
.end method

.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 793
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 794
    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 103
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStrategicFlag, flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    .line 92
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    return v0
.end method

.method public final b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    if-nez v1, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v1, :cond_2

    .line 228
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 230
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v1

    .line 260
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_0

    .line 237
    :cond_3
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-lt p1, v1, :cond_2

    .line 238
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-ne p1, v1, :cond_4

    .line 240
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_4
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_0

    .line 243
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v1, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 248
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 251
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 252
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_6

    .line 253
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v1, p1, v1

    add-int/lit8 p1, v1, -0x2

    goto :goto_1

    .line 255
    :cond_6
    add-int/lit8 p1, p1, -0x2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->startLoop(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public final b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 660
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 651
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 650
    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 653
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    .line 116
    if-eqz p1, :cond_1

    .line 117
    new-instance v0, Lcom/alipay/android/phone/home/manager/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/manager/f;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->hasAdverts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setAdverts(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->notifyBannerViewPager()V

    .line 140
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    .line 165
    return-void
.end method

.method public final c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5

    .prologue
    .line 668
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addItem, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",ismovable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    const/4 v1, 0x0

    .line 675
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 681
    :goto_1
    if-eqz v0, :cond_3

    .line 682
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 675
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 676
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5

    .prologue
    .line 689
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateitem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x0

    .line 691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 700
    :goto_1
    if-eqz v0, :cond_0

    .line 701
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 702
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 707
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 694
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 695
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 705
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 775
    const/4 v0, 0x1

    .line 777
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->e:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 210
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 211
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    .line 210
    div-int/2addr v0, v1

    .line 212
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    .line 210
    mul-int/2addr v0, v1

    .line 213
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    .line 216
    :cond_0
    return v0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 208
    :cond_2
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d:I

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    int-to-long v0, p1

    .line 283
    :goto_0
    return-wide v0

    .line 280
    :cond_0
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v0, :cond_1

    .line 281
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v0

    .line 283
    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ne p1, v1, :cond_2

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-le p1, v1, :cond_0

    .line 189
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 190
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 191
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-nez v0, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j()V

    .line 296
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    .line 316
    :cond_1
    :goto_1
    return-object p2

    .line 292
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->startLoop(Z)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Z

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 298
    if-nez p2, :cond_1

    .line 299
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 302
    iget v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 306
    if-nez p2, :cond_1

    .line 307
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 311
    iget v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:I

    .line 310
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_2

    .line 316
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v8

    if-eqz p2, :cond_1f

    instance-of v0, p2, Lcom/alipay/android/phone/home/manager/AppItemView;

    if-nez v0, :cond_1f

    const/4 p2, 0x0

    move-object v7, p2

    :goto_3
    if-nez v7, :cond_8

    new-instance v7, Lcom/alipay/android/phone/home/manager/AppItemView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/alipay/android/phone/home/manager/AppItemView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-direct {v1}, Lcom/alipay/android/phone/home/manager/ViewHolder;-><init>()V

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->g:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->b:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->a:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->F:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/PieProgressView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->c:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->p:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->E:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->x:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->e:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/AdCornerView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->I:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->J:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v8, :cond_7

    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTag(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/phone/home/manager/ViewHolder;

    if-eqz v8, :cond_9

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    :cond_9
    move-object v0, v7

    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v0, v8}, Lcom/alipay/android/phone/home/manager/AppItemView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    const-string/jumbo v2, "getView, app==null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    move-object p2, v7

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getView, app!=null, convertview visibility:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const-string/jumbo v1, "50001000"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setWidgetId(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v8}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    move-object v0, v7

    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->addObserver(Ljava/util/Observer;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setWidgetId(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#AppCenter#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "20000081"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v0, "50001000"

    :cond_c
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setMoreBadgeViewStyleMsg()V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    :goto_7
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_8
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_d
    :goto_9
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "indexStage"

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    :goto_a
    invoke-static {v6, v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;I)V

    :goto_b
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->b(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V

    :goto_c
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, v8}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "adsID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setAdvertText(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    :goto_d
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    :goto_e
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->isLockMode()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_1e

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_f
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#AppCenter#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setWidgetId(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v8}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    move-object v0, v7

    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->addObserver(Ljava/util/Observer;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setWidgetId(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_11
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    move v3, v0

    :goto_f
    const-string/jumbo v0, "indexStage"

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/alipay/android/phone/home/manager/g;

    invoke-direct {v1, p0, v8, v6}, Lcom/alipay/android/phone/home/manager/g;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    invoke-static {v6, v3}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;I)V

    invoke-virtual {v8, v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadGifImage(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    move v3, v0

    goto :goto_f

    :cond_18
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-string/jumbo v1, "indexStage"

    invoke-virtual {v8, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_b

    :cond_19
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1a
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_1b
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1c
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto/16 :goto_e

    :cond_1d
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto/16 :goto_e

    :cond_1e
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_1f
    move-object v7, p2

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x5

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
