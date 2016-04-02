.class Lcom/millennialmedia/android/MMWebView;
.super Landroid/webkit/WebView;


# static fields
.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "interface"

.field static final PROPERTY_BANNER_TYPE:Ljava/lang/String; = "PROPERTY_BANNER_TYPE"

.field static final PROPERTY_EXPANDING:Ljava/lang/String; = "PROPERTY_EXPANDING"

.field static final PROPERTY_STATE:Ljava/lang/String; = "PROPERTY_STATE"


# instance fields
.field creatorAdImplId:J

.field currentUrl:Ljava/lang/String;

.field volatile isExpanding:Z

.field volatile isUserClosedResize:Z

.field private mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

.field volatile mraidState:Ljava/lang/String;

.field oldHeight:I

.field oldWidth:I

.field volatile requiresPreAdSizeFix:Z

.field final tapDetector:Landroid/view/GestureDetector;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 6

    const/16 v2, -0x32

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMWebView$1;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    iput v2, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    iput v2, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting isExpanding in constructor to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMWebView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMWebView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lcom/millennialmedia/android/MMWebView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMWebView$1;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    iput-wide p2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    const-string v0, "Assigning WebView internal id: %d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x3ad7

    iget-wide v2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMWebView;->setMediaPlaybackRequiresUserGesture(Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mWebChromeClient:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/millennialmedia/android/MMWebView$2;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMWebView$2;-><init>(Lcom/millennialmedia/android/MMWebView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->canScroll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    return v0
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    const/16 v1, -0x32

    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2

    new-instance v1, Lcom/millennialmedia/android/MMWebView$5;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMWebView$5;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_0
.end method

.method disableAllAcceleration()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Remove allAcceleration"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method enableHardwareAcceleration()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Enabled hardwareAcceleration"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method enableSoftwareAcceleration()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Remove allAcceleration"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method declared-synchronized getActivity()Landroid/app/Activity;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBanner()Lcom/millennialmedia/android/MMAdView;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMMAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMMLayout()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method isCurrentParent(J)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Id check for parent: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " versus "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v4, v0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method isMraidResized()Z
    .locals 2

    const-string v0, "resized"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOriginalUrl(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isParentBannerAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadUrl @@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onPauseWebViewVideo()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResumeWebViewVideo()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->getLocationInWindow([I)V

    new-instance v1, Lcom/millennialmedia/android/DTOAdViewLayout;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/millennialmedia/android/DTOAdViewLayout;-><init>(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:MMJS.sdk.setAdSize("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v2}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->requestFocus()Z

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Ad clicked: action=%d x=%f y=%f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method removeFromParent()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setAdProperties(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:MMJS.sdk.setAdProperties("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableSoftwareAcceleration()V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setMraidDefault()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setState(\'default\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    return-void
.end method

.method setMraidExpanded()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing state to EXPANDED for ---- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---- of creatorId ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const-string v0, "javascript:MMJS.sdk.setState(\'expanded\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "expanded"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    return-void
.end method

.method setMraidHidden()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setState(\'hidden\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "hidden"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    return-void
.end method

.method setMraidPlacementTypeInline()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'inline\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method setMraidPlacementTypeInterstitial()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'interstitial\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method setMraidReady()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.ready();"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New DTOResizeParameters = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/MMWebView$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/MMWebView$6;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setMraidViewableHidden()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method setMraidViewableVisible()V
    .locals 1

    const-string v0, "javascript:MMJS.sdk.setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const-string v1, "Received ad with base url %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :cond_2
    invoke-static {p3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3, p1}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v1, Lcom/millennialmedia/android/MMWebView$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/MMWebView$4;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string v1, "MMJS is not downloaded"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    const-string v1, "Received ad with base url %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->isTransitionAnimated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_3
    iget-boolean v1, p3, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v1, Lcom/millennialmedia/android/MMWebView$3;

    invoke-direct {v1, p0, p3, v0, p1}, Lcom/millennialmedia/android/MMWebView$3;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const-string v1, "MMJS is not downloaded"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MMWebView originally from("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") MRaidState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    new-instance v1, Lcom/millennialmedia/android/MMWebView$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/MMWebView$7;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 3
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

    const-string v1, "PROPERTY_BANNER_TYPE"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PROPERTY_STATE"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PROPERTY_EXPANDING"

    iget-wide v1, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
