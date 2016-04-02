.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final adSpaceId:Ljava/lang/String; = "o2o_homepage"


# instance fields
.field private advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private hasAd:Z

.field private linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "Advertisement-o2o"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    .line 21
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    const/4 v1, -0x1

    .line 34
    const/4 v2, -0x2

    .line 32
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V

    .line 44
    const-wide/16 v2, 0x14

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->initAdvertisementView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;Z)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->onNotifyShowAD(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    return-object v0
.end method

.method private addSplitLineBottom(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 101
    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->split_line:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_0
    return-void
.end method

.method private addSplitLineTop(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->split_line:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_0
    return-void
.end method

.method private initAdvertisementView(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->addSplitLineTop(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    const/4 v1, -0x1

    .line 55
    const/4 v2, -0x2

    .line 53
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v2, "o2o_homepage"

    new-instance v3, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 73
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->addSplitLineBottom(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    return-void
.end method

.method private onNotifyShowAD(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    .line 82
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->showAdvertisement()V

    .line 83
    return-void
.end method


# virtual methods
.method public abstract isNeedShowAdvertisement()Z
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public showAdvertisement()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hasAd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isNeedShowAdvertisement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "linearLayout.setVisibility(View.VISIBLE)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "linearLayout.setVisibility(View.GONE)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAdvertisement()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->advertisementView:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method
