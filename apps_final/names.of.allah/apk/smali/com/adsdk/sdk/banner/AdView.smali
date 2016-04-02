.class public Lcom/adsdk/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final CUSTOM_EVENT_RELOAD_INTERVAL:I = 0x1e

.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1


# instance fields
.field private MRAIDFrame:Landroid/widget/FrameLayout;

.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private adspaceHeight:I

.field private adspaceStrict:Z

.field private adspaceWidth:I

.field private animation:Z

.field private customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

.field private customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

.field private customEventBannerView:Landroid/view/View;

.field private includeLocation:Z

.field private isInternalBrowser:Z

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadContentThread:Ljava/lang/Thread;

.field private mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private publisherId:Ljava/lang/String;

.field private reloadTimer:Ljava/util/Timer;

.field private request:Lcom/adsdk/sdk/AdRequest;

.field private requestURL:Ljava/lang/String;

.field private response:Lcom/adsdk/sdk/AdResponse;

.field private final showContent:Ljava/lang/Runnable;

.field private telephonyPermission:I

.field private final updateHandler:Landroid/os/Handler;

.field private userAge:I

.field private userGender:Lcom/adsdk/sdk/Gender;

.field private xml:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "publisherId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "request_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "animation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    goto :goto_1

    :cond_5
    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    goto :goto_1

    :cond_6
    const-string v4, "adspaceStrict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    goto :goto_1

    :cond_7
    const-string v4, "adspaceWidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    goto :goto_1

    :cond_8
    const-string v4, "adspaceHeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean p6, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    iput-object p6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->showContent()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    return-object v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V

    return-void
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdResponse;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private addMRAIDBannerView()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createCustomAdListener(Lcom/adsdk/sdk/AdListener;)Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$7;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/banner/AdView$7;-><init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdListener;)V

    return-object v0
.end method

.method private createMraidListener(Lcom/adsdk/sdk/AdListener;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$8;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/banner/AdView$8;-><init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdListener;)V

    return-object v0
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdRequest;->setAndroidIMEI(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAndroidID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getAndroidAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAndroidAdId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebKit UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK built UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->userAge:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAge(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setKeywords(Ljava/util/List;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceHeight(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceWidth(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceStrict(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setDeviceId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    const-string v0, "ADSDK"

    const-string v1, "SDK Version:5.2.0"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->registerScreenStateBroadcastReceiver()V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/banner/AdView;->telephonyPermission:I

    invoke-static {p1}, Lcom/adsdk/sdk/Util;->prepareAndroidAdId(Landroid/content/Context;)V

    return-void
.end method

.method private loadContent()V
    .locals 2

    const-string v0, "ADSDK"

    const-string v1, "load content"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$3;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$4;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private loadCustomEventBanner()V
    .locals 9

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    :goto_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEvent;

    move-object v5, v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/adsdk/sdk/customevents/CustomEvent;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-virtual {v5}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    iget v7, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v8, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    const-string v1, "Failed to create Custom Event Banner."

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-virtual {v5}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12c

    const/16 v7, 0x32

    invoke-virtual/range {v1 .. v7}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private notifyLoadAdFailed(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$6;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/banner/AdView$6;-><init>(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNoAd()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$5;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    new-instance v0, Lcom/adsdk/sdk/banner/AdView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$2;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showContent()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    iget v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    iget v4, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    iget-boolean v5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    iget-object v6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/AdResponse;IIZLcom/adsdk/sdk/AdListener;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V

    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/banner/AdView;->createMraidListener(Lcom/adsdk/sdk/AdListener;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    :cond_8
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    goto :goto_0
.end method

.method private startReloadTimer()V
    .locals 5

    const-string v0, "ADSDK"

    const-string v1, "start reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/adsdk/sdk/banner/ReloadTask;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/ReloadTask;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRefreshRate()I
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isInternalBrowser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return v0
.end method

.method public loadNextAd()V
    .locals 2

    const-string v0, "ADSDK"

    const-string v1, "load next ad"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "ADSDK"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    const-string v0, "ADSDK"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    :goto_0
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ADSDK"

    const-string v1, "cancel reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ADSDK"

    const-string v2, "unable to cancel reloadTimer"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-nez v0, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 2

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->createMraidListener(Lcom/adsdk/sdk/AdListener;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->createCustomAdListener(Lcom/adsdk/sdk/AdListener;)Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    return-void
.end method

.method public setAdspaceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    return-void
.end method

.method public setAdspaceStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    return-void
.end method

.method public setAdspaceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    return-void
.end method

.method public setInternalBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->keywords:Ljava/util/List;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->userAge:I

    return-void
.end method

.method public setUserGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->userGender:Lcom/adsdk/sdk/Gender;

    return-void
.end method
