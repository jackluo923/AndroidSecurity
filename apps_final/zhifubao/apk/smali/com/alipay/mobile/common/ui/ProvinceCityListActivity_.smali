.class public final Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;
.super Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;
.source "ProvinceCityListActivity_.java"


# instance fields
.field private handler_:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->handler_:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;II)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->refreashList(II)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->initList()V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->processText()V

    return-void
.end method

.method private afterSetContentView_()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->provincecitylist_titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->apTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 42
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->provincecity_local:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 43
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->citylist_listview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->cityList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 44
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->provincecitylist_listview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->init()V

    .line 46
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final initList()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$2;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->init_(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/alipay/android/phone/cityselect/R$layout;->provincecitylist_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->setContentView(I)V

    .line 35
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->onBackPressed()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final processText()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$3;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final refreashList(II)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->handler_:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->afterSetContentView_()V

    .line 52
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->afterSetContentView_()V

    .line 64
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->afterSetContentView_()V

    .line 58
    return-void
.end method
