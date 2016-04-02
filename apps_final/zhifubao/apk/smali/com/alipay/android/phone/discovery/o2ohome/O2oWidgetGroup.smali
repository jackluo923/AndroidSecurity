.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;
.implements Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;


# static fields
.field private static final CITY_DATA_CACHE_TIME:J = 0x927c0L

.field public static final EXTRA_ADCADE:Ljava/lang/String; = "ext_adCode"

.field public static final EXTRA_LATITUDE:Ljava/lang/String; = "ext_latitude"

.field public static final EXTRA_LONGITUDE:Ljava/lang/String; = "ext_longitude"

.field public static final EXTRA_SEARCH_QUERYINDEX:Ljava/lang/String; = "ext_search_query_index"

.field public static final EXTRA_SEARCH_SESSIONID:Ljava/lang/String; = "ext_search_session_id"

.field public static final METHOD_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "O2oWidgetGroup"

.field public static final TIME_PROFILE:Z


# instance fields
.field private activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

.field private advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

.field private apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

.field private badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

.field private categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

.field private cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

.field private cityView:Landroid/widget/TextView;

.field private citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

.field private containerList:Landroid/widget/ListView;

.field private context:Landroid/app/Activity;

.field private friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

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

.field private hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

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

.field private titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

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
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string/jumbo v0, "20000238"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    .line 141
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 143
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 149
    const-string/jumbo v0, "WALLET-O2O@O2OIndexGoodsView"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 153
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    .line 155
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 157
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    .line 168
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    .line 1096
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    .line 172
    return-void
.end method

.method private InitListViewFooter()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listview_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 805
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 806
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 809
    if-eqz v0, :cond_0

    .line 810
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$7;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setSearchBarHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomePageFromCache()V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initHomeRpcExecutor()V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initContainerListView()V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->registerSyncProcessor()V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method static synthetic access$18(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->callbackCategoryCellClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    return-void
.end method

.method static synthetic access$20(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    return-object v0
.end method

.method static synthetic access$21(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    return-void
.end method

.method static synthetic access$22(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateRpcDataOfFriend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$23(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->refreshHomePage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$25(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-void
.end method

.method static synthetic access$27(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->showCityRemindView()V

    return-void
.end method

.method static synthetic access$28(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView()V

    return-void
.end method

.method static synthetic access$29(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-object v0
.end method

.method static synthetic access$30(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setSearchBarHintText()V

    return-void
.end method

.method static synthetic access$31(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method

.method static synthetic access$32(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->callCitySelect(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$34(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-object v0
.end method

.method static synthetic access$35(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    return-wide v0
.end method

.method static synthetic access$36(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startGetCities()V

    return-void
.end method

.method static synthetic access$37(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;J)V
    .locals 0

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastCitysUpdateTimestamp:J

    return-void
.end method

.method static synthetic access$38(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-void
.end method

.method static synthetic access$39(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    return-void
.end method

.method static synthetic access$40(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    return-void
.end method

.method static synthetic access$41(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-void
.end method

.method static synthetic access$43(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    return-object v0
.end method

.method private callCitySelect(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1034
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-nez v0, :cond_1

    .line 1040
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 1041
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 1043
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    const-class v2, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    .line 1044
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1045
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 1046
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 1048
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1062
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 1063
    const-class v3, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;

    .line 1061
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    const-string/jumbo v0, "extraTitleName"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->select_city_title:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string/jumbo v0, "from"

    .line 1066
    const/4 v3, 0x2

    .line 1065
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "O2oWidgetGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[\u4f20\u9012\u53c2\u6570\u7ed9\u57ce\u5e02\u63a7\u4ef6] adCode: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " cityName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v3, "currentCity"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string/jumbo v3, "currentAdCode"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const/high16 v0, 0x20000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    const-string/jumbo v3, "hotCity_visiable"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    const-string/jumbo v0, "cityList"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1075
    const-string/jumbo v0, "hotCityList"

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1078
    const-string/jumbo v0, "currentCity_visiable"

    .line 1077
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    if-eqz p1, :cond_5

    .line 1081
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1091
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1093
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "registerReceiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 1049
    new-instance v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v3}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 1050
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 1051
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 1052
    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 1053
    const-string/jumbo v4, "h"

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1073
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1084
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1087
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 1088
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 1086
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private callbackCategoryCellClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    .line 1235
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheCategory(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 1238
    :cond_0
    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    .line 1117
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->intentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 2

    .prologue
    .line 1158
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1160
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 1158
    return-object v0
.end method

.method private getSearchSessionInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 794
    const-string/jumbo v0, ""

    .line 795
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

    .line 796
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_search_has_switch=YES"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    :cond_0
    return-object v0
.end method

.method private initAdvertisementView()V
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-nez v0, :cond_0

    .line 1166
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$13;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$13;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 1173
    :cond_0
    return-void
.end method

.method private initContainerListView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->container_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    .line 277
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAnimationCacheEnabled(Z)V

    .line 280
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 281
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 285
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 290
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 291
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setOnCellViewClick(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V

    .line 298
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    .line 299
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 301
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 303
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 301
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 306
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 311
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initAdvertisementView()V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listheader_hot:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->InitListViewFooter()V

    .line 324
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v4, v1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    .line 325
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    return-void
.end method

.method private initHomeRpcExecutor()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 553
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    .line 671
    :cond_0
    return-void
.end method

.method private initLocationMgr()V
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 1211
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 1213
    :cond_0
    return-void
.end method

.method private initPullRefreshView()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->pull_refresh_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 331
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 358
    return-void
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 832
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 833
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 856
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->selector_my:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 858
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$9;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 866
    new-instance v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;)V

    .line 867
    const-string/jumbo v1, "mineIcon"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->attachNewFlagView(Landroid/view/View;)V

    .line 869
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 870
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 869
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    .line 871
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 874
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->city:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    .line 875
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$10;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    return-void
.end method

.method private isHomePageHasContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 674
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 383
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcExcutor:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->start(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->updateAdvertisement()V

    .line 391
    :cond_1
    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadHomePageFromCache()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadCacheData()V

    .line 449
    return-void
.end method

.method private pullRefreshFinished()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "loadingView GONE"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 408
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private refreshHomePage(Ljava/util/Map;)V
    .locals 6
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
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 416
    if-eqz p1, :cond_1

    .line 417
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refreshHomePage(tempRet) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 425
    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    aput-object v3, v1, v2

    .line 426
    :goto_1
    if-lt v0, v5, :cond_2

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clearData()V

    .line 433
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 435
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->showAdvertisement()V

    .line 441
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 442
    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    const-string/jumbo v3, "refreshHomePage(tempRet) : tempRet is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_2
    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    .line 428
    aget-object v2, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private registerSyncProcessor()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;)V

    .line 272
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->registerSync()V

    .line 273
    return-void
.end method

.method private setSearchBarHintText()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 892
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 893
    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :cond_0
    return-void
.end method

.method private setSearchBarHintText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 903
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 904
    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    :cond_0
    return-void
.end method

.method private setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1218
    const-string/jumbo v0, "\u5e02"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1221
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    .line 1222
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 1224
    const/4 v0, 0x3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    :cond_2
    return-void
.end method

.method private showCityRemindView()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method

.method private startGetCities()V
    .locals 1

    .prologue
    .line 911
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 973
    return-void
.end method

.method private startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    goto :goto_0
.end method

.method private updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    .locals 3

    .prologue
    .line 739
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    .line 743
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;->data:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 744
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "updateActivityView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;->data:Ljava/util/Map;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->startTimerHandler(Ljava/util/Map;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 751
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->stopTimer()V

    goto :goto_0
.end method

.method private updateCategoryView()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_0

    .line 756
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    goto :goto_0
.end method

.method private updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 763
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 764
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->clearCategoryData()V

    .line 765
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->buildLbsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getSearchSessionInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setActionExpandParam(Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 768
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v2, "menus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 769
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup"

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

    .line 771
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->getPageSize()I

    move-result v2

    .line 772
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    div-int/2addr v3, v2

    .line 773
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v2, v3, v0

    move v0, v1

    .line 774
    :goto_1
    if-lt v0, v2, :cond_2

    .line 778
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 779
    if-lez v2, :cond_3

    .line 780
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 791
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 773
    goto :goto_0

    .line 775
    :cond_2
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pageNo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->add(Ljava/lang/Object;)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_2

    .line 788
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 703
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v3, "updateHotItemsView"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    .line 709
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 710
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 711
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 718
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_listheader_hottitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 721
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    :cond_1
    const-string/jumbo v0, ""

    .line 732
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 733
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

    .line 735
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->setTemplates(Ljava/util/List;Ljava/lang/String;)V

    .line 736
    return-void

    .line 712
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 713
    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-direct {v4, v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 714
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private updateRpcDataOfFriend()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    iget-boolean v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->bHasRedHot:Z

    if-nez v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v2

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-nez v0, :cond_2

    move v2, v3

    .line 457
    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v1, "menus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move v1, v2

    .line 468
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 469
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "tag"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "tag"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FRIEND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 471
    const-string/jumbo v0, "ext_showRedHot"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    iget-boolean v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->bHasRedHot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->friendImage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 473
    const-string/jumbo v0, "ext_imageUrlNew"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$FriendSync;->friendImage:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheCategory(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    move v2, v3

    .line 479
    goto/16 :goto_0

    .line 474
    :cond_4
    const-string/jumbo v0, "ext_imageUrlNew"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    const-string/jumbo v0, "ext_imageUrlNew"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 468
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->unregisterBroadcast(Landroid/content/Context;)V

    .line 1025
    :cond_0
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
    .line 1017
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "getIndicator begin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_tab_bar_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 201
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v2

    .line 203
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->tab_flag:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 204
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 208
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->tab_description:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 209
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->o2o_tab_name:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 211
    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->tab_bar_o2o:I

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    .line 213
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 212
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initLocationMgr()V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    const-string/jumbo v3, "getIndicator end"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object v0
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

    .line 691
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 692
    check-cast p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 693
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

    .line 694
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup"

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

    .line 695
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

    .line 696
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->templateId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 699
    :cond_0
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_home_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->framework_loading:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initTitleBar()V

    .line 241
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initPullRefreshView()V

    .line 244
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 267
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onFoodCategoryDataChange(Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V
    .locals 4

    .prologue
    .line 489
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->getBizData()Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FRIEND"

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sync: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1013
    return-void
.end method

.method public onReturn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 982
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "onReturn"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 986
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 987
    if-eqz v0, :cond_0

    .line 988
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->getFromBackFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->setFromBackFlag(Z)V

    .line 994
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->isNeedRefresh()Z

    move-result v0

    if-nez v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->updateAdvertisement()V

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 1001
    :cond_2
    invoke-direct {p0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 1002
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "onReturn HomeRpcExcutor.start()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    .line 182
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 177
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    .line 192
    return-void
.end method
