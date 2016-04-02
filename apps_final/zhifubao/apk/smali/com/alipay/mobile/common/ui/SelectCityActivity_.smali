.class public final Lcom/alipay/mobile/common/ui/SelectCityActivity_;
.super Lcom/alipay/mobile/common/ui/SelectCityActivity;
.source "SelectCityActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->handler_:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/common/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->updatDatas(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->loadCitys()V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 47
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->lifepay_searchNoResult:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 48
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->friends_myletterlistview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    .line 49
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->locationLayout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 50
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->search_bar_inputbox_layout_target:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 51
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->friends_display:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->init()V

    .line 53
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final initView()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public final loadCitys()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$3;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->init_(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/alipay/android/phone/cityselect/R$layout;->lifepay_citylist:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->setContentView(I)V

    .line 40
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->onBackPressed()V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->afterSetContentView_()V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->afterSetContentView_()V

    .line 71
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->afterSetContentView_()V

    .line 65
    return-void
.end method

.method public final updatDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
