.class public final Lcom/millennialmedia/android/MMAdView;
.super Lcom/millennialmedia/android/MMLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field static final DEFAULT_RESIZE_PARAM_VALUES:I = -0x32

.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2


# instance fields
.field height:I

.field oldHeight:I

.field oldWidth:I

.field refreshAnimationimageView:Landroid/widget/ImageView;

.field transitionType:I

.field view:Lcom/millennialmedia/android/MMAdView$ResizeView;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, -0x32

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v1, -0x32

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    iput v3, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Creating MMAdView from XML layout."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz p2, :cond_3

    const-string v0, "http://millennialmedia.com/android/schema"

    const-string v1, "apid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/millennialmedia/android/MMLayout;->setApid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v2, "ignoreDensityScaling"

    invoke-interface {p2, v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    const-string v1, "height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->width:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "age"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "children"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "education"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "ethnicity"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "gender"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "income"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "keywords"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "orientation"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "marital"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "politics"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "vendor"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v2, "zip"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    :cond_2
    const-string v1, "goalId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdImpl;->xmlLayout:Z

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    :goto_1
    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->initEclipseAd(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized attachToWindow(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
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

.method private callSetTranslationX(I)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setTranslationX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method private callSetTranslationY(I)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setTranslationY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method private declared-synchronized detachFromParent(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
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

.method private getAdInternal()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->requestAd()V

    :cond_0
    return-void
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    const/16 v1, -0x32

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "b"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initEclipseAd(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/net/URL;

    const-string v2, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method private setUnresizeParameters()V
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    :cond_0
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic addBlackView()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    return-void
.end method

.method final closeAreaTouched()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->unresizeToDefault()V

    return-void
.end method

.method public final getAd()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->getAd(Lcom/millennialmedia/android/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    goto :goto_0
.end method

.method public final getAd(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    return-void
.end method

.method public final bridge synthetic getApid()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getIgnoresDensityScaling()Z
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const v1, 0x121f0dbe

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    iget-boolean v1, p1, Lcom/millennialmedia/android/DTOResizeParameters;->allowOffScreen:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateOnScreenBounds()V

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    invoke-direct {p0, p0}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->setUnresizeParameters()V

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    iget-object v0, p1, Lcom/millennialmedia/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized handleUnresize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->removeCloseTouchDelegate()V

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    const/16 v0, -0x32

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    const/16 v0, -0x32

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z

    :cond_2
    const v0, -0xffff01

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On click for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adimpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Lcom/millennialmedia/android/MMLayout;->onLayout(ZIIII)V

    const-string v0, "AdView onLayout changed%b int left %d int top %d int right %d int bottom %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    :cond_1
    return-void
.end method

.method public final bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic removeBlackView()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    return-void
.end method

.method public final bridge synthetic setApid(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    return-void
.end method

.method public final bridge synthetic setIgnoresDensityScaling(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public final bridge synthetic setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public final bridge synthetic setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method

.method public final setTransitionType(I)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    return-void
.end method
