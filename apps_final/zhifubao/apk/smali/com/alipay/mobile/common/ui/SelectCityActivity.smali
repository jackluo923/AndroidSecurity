.class public Lcom/alipay/mobile/common/ui/SelectCityActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "lifepay_citylist"
.end annotation


# static fields
.field public static final BROADCAST_CITY_CHANGE:Ljava/lang/String; = "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

.field public static final BROADCAST_UPDATE_CITYS:Ljava/lang/String; = "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

.field public static final EXTRA_GOCITYLIST_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_PARAM_CITY_LIST:Ljava/lang/String; = "cityList"

.field public static final EXTRA_PARAM_CURRENTCITY_VISIABLE:Ljava/lang/String; = "currentCity_visiable"

.field public static final EXTRA_PARAM_CURRENT_ADCODE:Ljava/lang/String; = "currentAdCode"

.field public static final EXTRA_PARAM_CURRENT_CITY:Ljava/lang/String; = "currentCity"

.field public static final EXTRA_PARAM_CURRENT_PROVINCE:Ljava/lang/String; = "currentProvice"

.field public static final EXTRA_PARAM_HOTCITY_LIST:Ljava/lang/String; = "hotCityList"

.field public static final EXTRA_PARAM_SHOW_HOT_CITY:Ljava/lang/String; = "hotCity_visiable"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "extraTitleName"

.field private static final FORMAT:Ljava/lang/String; = "^[a-z,A-Z].*$"

.field private static final HOT_CITY:Ljava/lang/String; = "\u70ed\u95e8\u57ce\u5e02"

.field public static final ISFROM_FOR_BROADCAST:I = 0x2

.field public static final ISFROM_FROMFORM:I = 0x1

.field public static final SELCTCITY_FROM_CITYLIST:Ljava/lang/String; = "selctcity_from_citylist"

.field public static final SELECT_ADCODE:Ljava/lang/String; = "select_adcode"

.field public static final SELECT_PROVINCE:Ljava/lang/String; = "select_province"

.field private static final TAG:Ljava/lang/String; = "SelectCityActivity"

.field public static catheCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static catheHotCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static currentAdCode:Ljava/lang/String;

.field public static currentCity:Ljava/lang/String;

.field public static currentProvice:Ljava/lang/String;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentCityVisiable:Z

.field private delCacheCities:Z

.field private hotCityVisiable:Z

.field private intentFilter:Landroid/content/IntentFilter;

.field private isFrom:I

.field private locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "friends_myletterlistview"
    .end annotation
.end field

.field protected mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "friends_display"
    .end annotation
.end field

.field protected mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "locationLayout"
    .end annotation
.end field

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar_inputbox_layout_target"
    .end annotation
.end field

.field mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "lifepay_searchNoResult"
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTempCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 81
    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    .line 82
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 128
    iput v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->isFrom:I

    .line 135
    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    .line 137
    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCityVisiable:Z

    .line 139
    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    .line 219
    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->finishThisTellPrePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/ui/SelectCityActivity;Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateHotCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initData()V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    return-object v0
.end method

.method private finishThisTellPrePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 633
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 634
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 638
    :cond_0
    sput-object p2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 639
    sput-object p1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    .line 640
    sput-object p3, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 641
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    if-eqz v0, :cond_1

    .line 642
    sput-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    .line 643
    sput-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 646
    const-string/jumbo v1, "select_province"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v1, "selctcity_from_citylist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string/jumbo v1, "select_adcode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setResult(ILandroid/content/Intent;)V

    .line 650
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SelectCityActivity"

    const-string/jumbo v2, "finishThisTellPrePage:after setResult"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->isFrom:I

    if-ne v0, v3, :cond_2

    .line 653
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 654
    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string/jumbo v1, "select_province"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string/jumbo v1, "selctcity_from_citylist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string/jumbo v1, "select_adcode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 660
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SelectCityActivity"

    const-string/jumbo v2, "finishThisTellPrePage: sendBroadcast"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->finish()V

    .line 664
    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private initCityListFromLocal(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 372
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 373
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 374
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 379
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 400
    :goto_1
    return-object v0

    .line 380
    :cond_1
    new-instance v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    invoke-direct {v3}, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;-><init>()V

    .line 381
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 382
    :goto_2
    array-length v6, v5

    if-lt v1, v6, :cond_3

    .line 387
    array-length v1, v5

    if-lt v1, v9, :cond_0

    .line 388
    const/4 v1, 0x0

    aget-object v1, v5, v1

    iput-object v1, v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 389
    const/4 v1, 0x1

    aget-object v1, v5, v1

    iput-object v1, v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 390
    array-length v1, v5

    const/4 v6, 0x3

    if-lt v1, v6, :cond_2

    .line 391
    const/4 v1, 0x2

    aget-object v1, v5, v1

    iput-object v1, v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 393
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 383
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 384
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "num "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private initData()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 415
    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 421
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v0, :cond_1

    move v2, v3

    .line 422
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 434
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v3

    .line 435
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v3

    .line 480
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_9

    .line 485
    return-void

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "\u70ed\u95e8\u57ce\u5e02"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v1, "\u70ed\u95e8\u57ce\u5e02"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "\u70ed\u95e8\u57ce\u5e02"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v4, "\u70ed\u95e8\u57ce\u5e02"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 437
    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 441
    const-string/jumbo v0, "^[a-z,A-Z].*$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 445
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 447
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 454
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v4, "#"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 481
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 480
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method private updateCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 2

    .prologue
    .line 270
    .line 271
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    .line 274
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 275
    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    goto :goto_0
.end method

.method private updateHotCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 297
    .line 298
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 301
    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 304
    iput-boolean v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 586
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 312
    sget v2, Lcom/alipay/android/phone/cityselect/R$layout;->lifepay_citylistview_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    const/4 v4, 0x0

    .line 311
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 317
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extraTitleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v2, "extraTitleName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->showCityList()V

    .line 324
    return-void
.end method

.method protected initView()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setListB(Ljava/util/List;)V

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setOnItemClickListener(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 504
    sget v1, Lcom/alipay/android/phone/cityselect/R$id;->friends_item_header_text:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 505
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 506
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->LifePay_cityListCurrentCity:I

    .line 505
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 509
    sget v1, Lcom/alipay/android/phone/cityselect/R$id;->friends_item:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 508
    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 511
    iget v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->isFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 512
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 515
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->lbs_fail:I

    .line 514
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/ui/CityListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 563
    sget v2, Lcom/alipay/android/phone/cityselect/R$layout;->lifepay_citylistview_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    .line 562
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 574
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->dismissProgressDialog()V

    .line 576
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCityVisiable:Z

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 582
    return-void

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/cityselect/R$string;->LifePay_LocationFail:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    goto/16 :goto_1

    .line 540
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$7;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected loadCitys()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 344
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 349
    sget v1, Lcom/alipay/android/phone/cityselect/R$raw;->cities_from_gaode:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v1

    .line 351
    iget-boolean v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 352
    :cond_0
    sget v0, Lcom/alipay/android/phone/cityselect/R$raw;->hot_cities:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v0

    .line 355
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->updatDatas(Ljava/util/List;Ljava/util/List;)V

    .line 356
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 723
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    if-eqz v0, :cond_0

    .line 724
    sput-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    .line 725
    sput-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 727
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    const-string/jumbo v0, "from"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->isFrom:I

    .line 155
    const-string/jumbo v0, "currentCity"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "currentAdCode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "currentProvice"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "cityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "cityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    if-eqz v2, :cond_0

    .line 162
    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    .line 163
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 165
    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    .line 166
    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 167
    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 181
    :cond_0
    const-string/jumbo v0, "currentCity_visiable"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCityVisiable:Z

    .line 183
    const-string/jumbo v0, "hotCity_visiable"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    .line 185
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 186
    :cond_1
    sget v0, Lcom/alipay/android/phone/cityselect/R$raw;->hot_cities:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 188
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hotCityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string/jumbo v0, "hotCityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    if-eqz v1, :cond_3

    .line 192
    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    .line 193
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 195
    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 196
    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->delCacheCities:Z

    .line 202
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 595
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 599
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCityVisiable:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/CityListAdapter;->setIsSearchResult(Z)V

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    .line 628
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->setIsSearchResult(Z)V

    .line 614
    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    .line 613
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/util/Cityfilter;->getMatchedContact(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 615
    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 616
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->requestFocusFromTouch()Z

    .line 622
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setSelection(I)V

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected showCityList()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->loadCitys()V

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initData()V

    .line 334
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startLocation()V
    .locals 3

    .prologue
    .line 668
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    .line 669
    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 671
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->lbs_fail:I

    .line 670
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    :goto_0
    return-void

    .line 675
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V

    .line 714
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method

.method protected updatDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    sput-object p1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    .line 362
    sput-object p2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    .line 364
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initData()V

    .line 365
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    .line 367
    return-void
.end method
