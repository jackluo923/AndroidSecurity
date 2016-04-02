.class Lcom/adsdk/sdk/mraid/MraidDisplayController;
.super Lcom/adsdk/sdk/mraid/MraidAbstractController;


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x32

.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "MraidDisplayController"

.field private static final MAX_NUMBER_DAYS_IN_MONTH:I = 0x1f

.field private static final VIEWABILITY_TIMER_MILLIS:J = 0xbb8L


# instance fields
.field private mAdContainerLayout:Landroid/widget/FrameLayout;

.field private mAdWantsCustomCloseButton:Z

.field private mCheckViewabilityTask:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field protected mDensity:F

.field private mExpansionLayout:Landroid/widget/RelativeLayout;

.field private final mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewable:Z

.field private final mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

.field private mOrientationBroadcastReceiver:Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;

.field private final mOriginalRequestedOrientation:I

.field private mPlaceholderView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mViewIndexInParent:I

.field private mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidAbstractController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOriginalRequestedOrientation:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->createAdContainerLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->createExpansionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->createPlaceholderView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initialize()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidDisplayController;)I
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidDisplayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->showUserToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->downloadImage(Ljava/lang/String;)V

    return-void
.end method

.method private dayNumberToDayOfMonthString(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, -0x1f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid day of month "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dayNumberToDayOfWeekString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid day of week "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "SU"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "MO"

    goto :goto_0

    :pswitch_2
    const-string v0, "TU"

    goto :goto_0

    :pswitch_3
    const-string v0, "WE"

    goto :goto_0

    :pswitch_4
    const-string v0, "TH"

    goto :goto_0

    :pswitch_5
    const-string v0, "FR"

    goto :goto_0

    :pswitch_6
    const-string v0, "SA"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private downloadImage(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getPictureStoragePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$4;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private expandLayouts(Landroid/view/View;II)V
    .locals 4

    const/4 v3, -0x1

    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-ge p3, v0, :cond_1

    move p3, v0

    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$6;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$6;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getPictureStoragePath()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private initialize()V
    .locals 2

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->LOADING:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeScreenMetrics()V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeViewabilityTimer()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method private initializeScreenMetrics()V
    .locals 8

    const/4 v2, 0x0

    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    int-to-double v1, v1

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v4

    div-double v4, v6, v4

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    int-to-double v0, v0

    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private initializeViewabilityTimer()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeScreenMetrics()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->createWithSize(II)Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    sget-object v2, Lcom/adsdk/sdk/mraid/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/adsdk/sdk/mraid/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "frequency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "interval"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const-string v4, "daily"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "FREQ=DAILY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INTERVAL="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "weekly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "FREQ=WEEKLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INTERVAL="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "daysInWeek"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BYDAY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "monthly"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "FREQ=MONTHLY;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v1, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INTERVAL="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "daysInMonth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BYMONTHDAY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method private resetViewToDefaultState()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->requestLayout()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewIndexInParent:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setOrientationLockEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOriginalRequestedOrientation:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MraidDisplayController"

    const-string v1, "Unable to modify device orientation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showUserDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Save Image"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download image to Picture gallery?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;

    invoke-direct {v2, p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showUserToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController$3;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private swapViewWithPlaceholderView()V
    .locals 6

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewIndexInParent:I

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsdk/sdk/mraid/MraidView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adsdk/sdk/mraid/MraidView;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v4

    if-eq v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing start and description fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "title"

    const-string v2, "description"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "start"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "beginTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "end"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "eventLocation"

    const-string v2, "location"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "summary"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "description"

    const-string v2, "summary"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "availability"

    const-string v0, "transparency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "transparent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "rrule"

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: start is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x3f

    new-array v2, v0, [Z

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1f

    aget-boolean v5, v2, v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->dayNumberToDayOfMonthString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v8, [Z

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_0
    array-length v2, v5

    if-lt v0, v2, :cond_0

    array-length v0, v5

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v2, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_1

    move v2, v1

    :cond_1
    aget-boolean v6, v4, v2

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->dayNumberToDayOfWeekString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aput-boolean v6, v4, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkViewable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected close()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->resetViewToDefaultState()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setOrientationLockEnabled(Z)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView$MraidListener;->onClose(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ViewState;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setVisibility(I)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    goto :goto_0
.end method

.method createAdContainerLayout()Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCalendarEvent(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/mraid/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MraidDisplayController"

    const-string v1, "no calendar app installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Action is unsupported on this device - no calendar app installed"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MraidDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create calendar: invalid parameters "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_2
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "MraidDisplayController"

    const-string v1, "could not create calendar event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "could not create calendar event"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "MraidDisplayController"

    const-string v1, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method createExpansionLayout()Landroid/widget/RelativeLayout;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createPlaceholderView()Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method protected expand(Ljava/lang/String;IIZZ)V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionStyle:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p4}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->useCustomClose(Z)V

    invoke-direct {p0, p5}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setOrientationLockEnabled(Z)V

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->swapViewWithPlaceholderView()V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    if-eqz p1, :cond_3

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v3, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v4, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$2;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mTwoPartExpansionView:Lcom/adsdk/sdk/mraid/MraidView;

    :cond_3
    int-to-float v1, p2

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->expandLayouts(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    :cond_5
    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListener;->onExpand(Lcom/adsdk/sdk/mraid/MraidView;)V

    goto/16 :goto_0
.end method

.method protected getCurrentPosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getCurrentPosition"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method protected getDefaultPosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getDefaultPosition"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method protected getMaxSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getMaxSize"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method protected getScreenSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getScreenSize"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method protected initializeJavaScriptState()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;->createWithSize(II)Lcom/adsdk/sdk/mraid/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->createWithViewable(Z)Lcom/adsdk/sdk/mraid/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperties(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->DEFAULT:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidStateProperty;->createWithViewState(Lcom/adsdk/sdk/mraid/MraidView$ViewState;)Lcom/adsdk/sdk/mraid/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeSupportedFunctionsProperty()V

    return-void
.end method

.method protected initializeSupportedFunctionsProperty()V
    .locals 4

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    new-instance v2, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    invoke-direct {v2}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;-><init>()V

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isTelAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->withTel(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    move-result-object v2

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isSmsAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->withSms(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    move-result-object v2

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->withCalendar(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    move-result-object v2

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isInlineVideoAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->withInlineVideo(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    move-result-object v2

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/adsdk/sdk/mraid/MraidSupportsProperty;->withStorePicture(Z)Lcom/adsdk/sdk/mraid/MraidSupportsProperty;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    return-void
.end method

.method protected isExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mViewState:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ViewState;->EXPANDED:Lcom/adsdk/sdk/mraid/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeCloseButtonEnabled(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    sget-object v2, Lcom/adsdk/sdk/mraid/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    sget-object v2, Lcom/adsdk/sdk/mraid/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidDisplayController$7;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$7;-><init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected showUserDownloadImageAlert(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    const-string v0, "MoPub"

    const-string v1, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->showUserDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Downloading image to Picture gallery..."

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->showUserToast(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->downloadImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showVideo(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected useCustomClose(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
