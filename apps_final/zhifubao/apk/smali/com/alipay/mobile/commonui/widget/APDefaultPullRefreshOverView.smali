.class public Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;
.super Lcom/alipay/mobile/commonui/widget/APOverView;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APOverView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APOverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APOverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->framework_pullrefresh_overview:[I

    sget v1, Lcom/alipay/mobile/ui/R$style;->framework_pullrefresh_overview:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getLoadingLogo()Landroid/widget/ImageView;
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->pull_refresh_logo_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoadingShadowView()Landroid/view/View;
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_shadow_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNormalLogo()Landroid/widget/ImageView;
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->pull_refresh_logo_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNormalShadowView()Landroid/view/View;
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_shadow_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNormalView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getOverViewHeight()I
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public init()V
    .locals 9

    const-wide/16 v7, 0xfa

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->j:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3ccc0000    # -180.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->h:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->h:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->h:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->j:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43340000    # 180.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->j:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APOverView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "must set id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->b:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->c:Landroid/widget/ProgressBar;

    sget v0, Lcom/alipay/mobile/ui/R$id;->framework_pullrefresh_indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->framework_pull_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->framework_pull_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->f:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public onLoad()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onOpen()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onOver()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
