.class Lcom/millennialmedia/android/AdViewOverlayView;
.super Lcom/millennialmedia/android/MMLayout;


# instance fields
.field private mraidCloseButton:Landroid/widget/Button;

.field mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

.field overlayActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayActivity;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDone:Z

.field settings:Lcom/millennialmedia/android/OverlaySettings;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayActivity;Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const/16 v0, 0x3ad6

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "i"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v2, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restoring configurationinstance w/ controller= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v1, v1, Lcom/millennialmedia/android/OverlaySettings;->height:I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v1, v1, Lcom/millennialmedia/android/OverlaySettings;->width:I

    if-eqz v1, :cond_8

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v3, v3, Lcom/millennialmedia/android/OverlaySettings;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v4, v4, Lcom/millennialmedia/android/OverlaySettings;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3d800000    # 0.0625f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v3, v3, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setPadding(IIII)V

    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-wide v2, v2, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    iput-wide v2, v1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    :cond_3
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V

    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->getIsTransparent()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v7}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v7}, Lcom/millennialmedia/android/MMAdImpl;->setBackgroundColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->enableHardwareAccel()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    :cond_5
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->animateView()V

    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->getUseCustomClose()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->setUseCustomClose(Z)V

    return-void

    :cond_7
    const-string v1, "Null configurationinstance "

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v6}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v6}, Lcom/millennialmedia/android/MMAdImpl;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V

    return-void
.end method

.method private animateView()V
    .locals 11

    const v4, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v0

    const-string v3, "slideup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v1}, Lcom/millennialmedia/android/OverlaySettings;->getTransitionDurationInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v0

    const-string v3, "slidedown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->getTransition()Ljava/lang/String;

    move-result-object v0

    const-string v2, "explode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd    # 1.1f

    const v5, 0x3dcccccd    # 0.1f

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-string v0, "Explode"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v1
.end method

.method private initMRaidCloseButton(Landroid/content/Context;F)Landroid/widget/Button;
    .locals 6

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12d

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;-><init>(ZF)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/AdViewOverlayView;->getCloseAreaParams(F)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;

    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;-><init>(Landroid/widget/Button;IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method

.method private initProgressBar()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private removeProgressBar()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    :cond_0
    return-void
.end method


# virtual methods
.method addInlineVideo()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    return-void
.end method

.method attachWebViewToLink()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->attachWebViewFromOverlay(Lcom/millennialmedia/android/MMAdImpl;)V

    :cond_0
    return-void
.end method

.method bringMraidCloseToFront()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    :cond_0
    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$2;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method finishOverlayWithAnimation()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Ad overlay closed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$3;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdViewOverlayView$3;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method fullScreenVideoLayout()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    return-void
.end method

.method getNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving getNonConfigurationInstance for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$1;)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    iput-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iput-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->settings:Lcom/millennialmedia/android/OverlaySettings;

    return-object v0
.end method

.method getWebContent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdImplController;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method inlineConfigChange()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    :cond_0
    return-void
.end method

.method repositionVideoLayout()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->inlineVideoView:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->bringMraidCloseToFront()V

    return-void
.end method

.method setUseCustomClose(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/OverlaySettings;->setUseCustomClose(Z)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseDrawable:Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    goto :goto_0
.end method
