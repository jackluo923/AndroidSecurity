.class abstract Lcom/millennialmedia/android/MMLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/millennialmedia/android/InlineVideoView$TransparentFix;
.implements Lcom/millennialmedia/android/MMAd;


# static fields
.field static final BOTTOM_CENTER:Ljava/lang/String; = "bottom-center"

.field static final BOTTOM_LEFT:Ljava/lang/String; = "bottom-left"

.field static final BOTTOM_RIGHT:Ljava/lang/String; = "bottom-right"

.field static final CENTER:Ljava/lang/String; = "center"

.field private static final CLOSE_AREA_SIZE:I = 0x32

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field static final TOP_CENTER:Ljava/lang/String; = "top-center"

.field static final TOP_LEFT:Ljava/lang/String; = "top-left"

.field static final TOP_RIGHT:Ljava/lang/String; = "top-right"

.field private static appInit:Z


# instance fields
.field adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field blackView:Landroid/view/View;

.field closeAreaView:Landroid/view/View;

.field private diagnosticDetector:Landroid/view/GestureDetector;

.field goalId:Ljava/lang/String;

.field inlineVideoLayout:Landroid/widget/RelativeLayout;

.field inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

.field isResizing:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMLayout;->initLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V

    return-void
.end method

.method private initInlineVideoTransparentFix()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private internalSetCloseArea(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xe

    const/16 v5, 0xb

    const/high16 v4, 0x42480000    # 50.0f

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v4, v0

    float-to-int v2, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "top-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    new-instance v2, Lcom/millennialmedia/android/MMLayout$3;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMLayout$3;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "top-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_3
    const-string v0, "bottom-left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_4
    const-string v0, "bottom-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_5
    const-string v0, "bottom-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_6
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method


# virtual methods
.method public addBlackView()V
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/android/MMLayout;->initInlineVideoTransparentFix()V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method addInlineVideo()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    const v1, 0x35391858

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/MMLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$4;-><init>(Lcom/millennialmedia/android/MMLayout;Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method closeAreaTouched()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalize() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    return-void
.end method

.method fullScreenVideoLayout()V
    .locals 0

    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    :cond_2
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/InlineVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

    return-void
.end method

.method protected final initLayout(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "Initializing MMLayout."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->checkPermissions(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->checkActivity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/millennialmedia/android/MMLayout$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMLayout$1;-><init>(Lcom/millennialmedia/android/MMLayout;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

    sget-boolean v0, Lcom/millennialmedia/android/MMLayout;->appInit:Z

    if-nez v0, :cond_0

    const-string v0, "********** Millennial Device Id *****************"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const-string v0, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const-string v0, "*************************************************"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->cleanCache(Landroid/content/Context;)V

    sput-boolean v5, Lcom/millennialmedia/android/MMLayout;->appInit:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "There was an exception initializing the MMAdView. %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method isVideoPlayingStreaming()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlayingStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "No network available, can\'t load overlay."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMAdImplController;->loadWebContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "No network available, can\'t load overlay."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MMAd missing id from getId(). Performance will be affected for configuration changes."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->isResizing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDetachedFromWindow for"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/MMLayout;->isResizing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v3, "MMAdImplId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v3, "MMAdImplLinkedId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRestoreInstanceState replacing adImpl-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const-string v0, "inlineVideoViewGson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->getInlineParams(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMLayout;->initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    :cond_0
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState saving - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "MMAdImplId"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "MMAdImplLinkedId"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    :cond_0
    const-string v1, "inlineVideoViewGson"

    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getGsonState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->diagnosticDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->resumeVideo()V

    :cond_0
    :goto_0
    const-string v0, "Window Focus Changed. For %s, Window in focus?: %b Controllers: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->controllersToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableVisible()V

    :cond_1
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-boolean v4, v0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window Focus Changed.removing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidHidden()V

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->pauseVideo()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->setMraidViewableHidden()V

    goto :goto_1
.end method

.method pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->pauseVideo()V

    :cond_0
    return-void
.end method

.method playVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->playVideo()V

    :cond_0
    return-void
.end method

.method public removeBlackView()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->blackView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method removeCloseTouchDelegate()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->closeAreaView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method removeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->removeVideo()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    :cond_0
    return-void
.end method

.method repositionVideoLayout()V
    .locals 0

    return-void
.end method

.method resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->resumeVideo()V

    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method setCloseArea(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/MMLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMLayout$2;-><init>(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImpl;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->setVideoSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->stopVideo()V

    :cond_0
    return-void
.end method
