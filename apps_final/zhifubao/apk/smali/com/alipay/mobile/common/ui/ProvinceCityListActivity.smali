.class public Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ProvinceCityListActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "provincecitylist_layout"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field protected apTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "provincecitylist_titleBar"
    .end annotation
.end field

.field private cacheProvince:Ljava/lang/String;

.field protected cityList:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "citylist_listview"
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentType:I

.field private lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private locationStr:Ljava/lang/String;

.field protected locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "provincecity_local"
    .end annotation
.end field

.field mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

.field private mDistrict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected provinceList:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "provincecitylist_listview"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I

    .line 67
    const-string/jumbo v0, "ProvinceCityListActivity"

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setResultFinish()V

    return-void
.end method

.method static synthetic access$11(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cacheProvince:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cacheProvince:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->isUseMapKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    return-object v0
.end method

.method private initDistrictList()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "120225"

    const-string/jumbo v2, "\u84df\u53bf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "120116"

    const-string/jumbo v2, "\u6ee8\u6d77"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500234"

    const-string/jumbo v2, "\u5f00\u53bf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "310115"

    const-string/jumbo v2, "\u6d66\u4e1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500233"

    const-string/jumbo v2, "\u5fe0\u53bf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500240"

    const-string/jumbo v2, "\u77f3\u67f1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500243"

    const-string/jumbo v2, "\u5f6d\u6c34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500242"

    const-string/jumbo v2, "\u9149\u9633"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    const-string/jumbo v1, "500241"

    const-string/jumbo v2, "\u79c0\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private isUseMapKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setResultFinish()V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string/jumbo v2, "location_province"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v2, "location_city"

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->finish()V

    .line 177
    return-void
.end method


# virtual methods
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
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->initList()V

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->processText()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->apTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$3;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method protected initList()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cityList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cityList:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iput-object p0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->context:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->initDistrictList()V

    .line 76
    return-void
.end method

.method protected processText()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "cnregion4alipay.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 246
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 247
    const/4 v0, 0x0

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 266
    iput-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    .line 269
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->refreashList(II)V

    .line 276
    :goto_1
    return-void

    .line 251
    :cond_1
    const-string/jumbo v4, "_|\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 252
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 254
    if-eqz v0, :cond_2

    .line 255
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 260
    :cond_3
    :try_start_1
    array-length v4, v2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 262
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected refreashList(II)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 210
    iput p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I

    .line 211
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cityList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->setData(Ljava/util/List;II)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->notifyDataSetInvalidated()V

    .line 221
    return-void

    .line 215
    :cond_1
    if-nez p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cityList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

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
