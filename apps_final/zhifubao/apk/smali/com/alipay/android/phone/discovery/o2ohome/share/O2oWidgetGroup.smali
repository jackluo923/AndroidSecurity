.class public Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"


# static fields
.field private static final CITY_DATA_CACHE_TIME:J = 0x927c0L

.field public static final EXTRA_ADCADE:Ljava/lang/String; = "ext_adCode"

.field public static final EXTRA_ISFROM_SHARE:Ljava/lang/String; = "ext_from_share"

.field public static final EXTRA_LATITUDE:Ljava/lang/String; = "ext_latitude"

.field public static final EXTRA_LONGITUDE:Ljava/lang/String; = "ext_longitude"

.field public static final EXTRA_SEARCH_QUERYINDEX:Ljava/lang/String; = "ext_search_query_index"

.field public static final EXTRA_SEARCH_SESSIONID:Ljava/lang/String; = "ext_search_session_id"

.field public static final METHOD_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "O2oWidgetGroup-share"

.field public static final TIME_PROFILE:Z


# instance fields
.field private apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

.field private categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

.field private cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

.field private cityView:Landroid/widget/TextView;

.field private citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private containerList:Lcom/alipay/mobile/commonui/widget/APListView;

.field private context:Landroid/app/Activity;

.field private headerView:Landroid/widget/LinearLayout;

.field private homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

.field private homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;",
            ">;"
        }
    .end annotation
.end field

.field private hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

.field private hotTitleView:Landroid/widget/LinearLayout;

.field private intentFilter:Landroid/content/IntentFilter;

.field private lastCitysUpdateTimestamp:J

.field private listViewFooter:Landroid/widget/LinearLayout;

.field private loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private loadingView:Landroid/view/View;

.field private locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

.field private mId:Ljava/lang/String;

.field private microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private pageContainer:Landroid/view/ViewGroup;

.field private searchListTemplateId:Ljava/lang/String;

.field protected shareParamReceiverId:Ljava/lang/String;

.field protected shareParamReceiverUserType:Ljava/lang/String;

.field private titleBar:Landroid/widget/RelativeLayout;

.field private uiCity:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 135
    const-string/jumbo v0, "WALLET-O2O@O2OIndexGoodsView"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 137
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 139
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    .line 141
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 143
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    .line 867
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private InitListViewFooter()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listview_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 638
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 642
    if-eqz v0, :cond_0

    .line 643
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->refreshHomePage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->showCityRemindView()V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView()V

    return-void
.end method

.method static synthetic access$16(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APListView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText()V

    return-void
.end method

.method static synthetic access$18(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V

    return-void
.end method

.method static synthetic access$20(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getShareParamString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->callCitySelect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$22(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-object v0
.end method

.method static synthetic access$23(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    return-wide v0
.end method

.method static synthetic access$24(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->startGetCities()V

    return-void
.end method

.method static synthetic access$25(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;J)V
    .locals 0

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    return-void
.end method

.method static synthetic access$26(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-void
.end method

.method static synthetic access$27(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-void
.end method

.method static synthetic access$29(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-object v0
.end method

.method static synthetic access$30(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-void
.end method

.method static synthetic access$31(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method private callCitySelect(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 805
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-nez v0, :cond_1

    .line 811
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 812
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 814
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    const-class v2, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    .line 815
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 817
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 819
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 833
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 834
    const-class v3, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    .line 832
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 835
    const-string/jumbo v0, "extraTitleName"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->select_city_title:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string/jumbo v0, "from"

    .line 837
    const/4 v3, 0x2

    .line 836
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "O2oWidgetGroup-share"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[\u4f20\u9012\u53c2\u6570\u7ed9\u57ce\u5e02\u63a7\u4ef6] adCode: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " cityName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string/jumbo v3, "currentCity"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string/jumbo v3, "currentAdCode"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const/high16 v0, 0x20000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    const-string/jumbo v3, "hotCity_visiable"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 845
    const-string/jumbo v0, "cityList"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 846
    const-string/jumbo v0, "hotCityList"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 849
    const-string/jumbo v0, "currentCity_visiable"

    .line 848
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 851
    if-eqz p1, :cond_5

    .line 852
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 862
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 864
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup-share"

    const-string/jumbo v2, "registerReceiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 820
    new-instance v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v3}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 821
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 822
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 823
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 824
    const-string/jumbo v4, "h"

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 844
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 855
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 858
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 859
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 857
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    .line 888
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 2

    .prologue
    .line 929
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 931
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 929
    return-object v0
.end method

.method private getSearchSessionInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    const-string/jumbo v0, ""

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_search_session_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v1, :cond_0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_search_has_switch=YES"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_0
    return-object v0
.end method

.method private getShareParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    const-string/jumbo v0, ""

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_from_share=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&chatUserId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&chatUserType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    return-object v0
.end method

.method private initContainerListView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->container_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setScrollingCacheEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setAnimationCacheEnabled(Z)V

    .line 205
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 210
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 215
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 217
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 220
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 222
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 220
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listheader_hot:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->InitListViewFooter()V

    .line 234
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v4, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    .line 235
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setShareParamUserId(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setShareParamUserType(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    return-void
.end method

.method private initHomeRpcExecutor()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 377
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    .line 490
    :cond_0
    return-void
.end method

.method private isHomePageHasContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 493
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->start(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 298
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadHomePageFromCache()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadCacheData()V

    .line 345
    return-void
.end method

.method private pullRefreshFinished()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup-share"

    const-string/jumbo v2, "loadingView GONE"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    goto :goto_0
.end method

.method private refreshHomePage(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 318
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V

    .line 321
    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    aput-object v3, v1, v2

    .line 322
    :goto_0
    if-lt v0, v4, :cond_1

    .line 328
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->clearData()V

    .line 329
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 332
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 338
    return-void

    .line 323
    :cond_1
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 324
    aget-object v2, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setSearchBarHintText()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 718
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 719
    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    :cond_0
    return-void
.end method

.method private setSearchBarHintText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 729
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_0
    return-void
.end method

.method private setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 976
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 977
    const-string/jumbo v0, "\u5e02"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 980
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    .line 981
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 983
    const/4 v0, 0x3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 986
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    :cond_2
    return-void
.end method

.method private showCityRemindView()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 926
    return-void
.end method

.method private startGetCities()V
    .locals 1

    .prologue
    .line 737
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 799
    return-void
.end method

.method private startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1

    .line 277
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    goto :goto_0
.end method

.method private updateCategoryView()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    goto :goto_0
.end method

.method private updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 566
    if-eqz p1, :cond_1

    .line 567
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v2, "menus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 568
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 569
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 589
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->clearCategoryData()V

    .line 590
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->buildLbsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getShareParamString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getSearchSessionInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setActionExpandParam(Ljava/lang/String;)V

    .line 592
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 593
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v2, "menus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 594
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup-share"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCategoryView, menus count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->getPageSize()I

    move-result v2

    .line 597
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    div-int/2addr v3, v2

    .line 598
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    add-int v2, v3, v0

    move v0, v1

    .line 599
    :goto_2
    if-lt v0, v2, :cond_6

    .line 603
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_2

    .line 604
    if-lez v2, :cond_7

    .line 605
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 616
    :cond_2
    :goto_3
    return-void

    .line 570
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 571
    if-eqz v0, :cond_0

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :goto_4
    const-string/jumbo v3, "alipay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "target=classify"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 582
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 598
    goto :goto_1

    .line 600
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pageNo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->add(Ljava/lang/Object;)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 608
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_3

    .line 613
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method private updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup-share"

    const-string/jumbo v3, "updateHotItemsView"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    .line 524
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 525
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 526
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 533
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_listheader_hottitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 536
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    :cond_1
    const-string/jumbo v0, ""

    .line 547
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&recommendId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setTemplates(Ljava/util/List;Ljava/lang/String;)V

    .line 551
    return-void

    .line 527
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 528
    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-direct {v4, v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method protected getTemplateInfo(Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 506
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 507
    check-cast p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 508
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup-share"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "templateId: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " templateJson: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateJson:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateJson:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 514
    :cond_0
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_home_view_share:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->framework_loading:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initLocationMgr()V
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$10;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$10;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 970
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 972
    :cond_0
    return-void
.end method

.method public initLogicData()V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initLocationMgr()V

    .line 184
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomePageFromCache()V

    .line 188
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initHomeRpcExecutor()V

    .line 190
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initContainerListView()V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 198
    return-void
.end method

.method public initPullRefreshView()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->pull_refresh_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 270
    return-void
.end method

.method public initTitlebar()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    .line 665
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 666
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->city:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    .line 701
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$7;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    .line 162
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 158
    return-void
.end method
