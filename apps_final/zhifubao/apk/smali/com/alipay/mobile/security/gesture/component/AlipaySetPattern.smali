.class public Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/security/gesture/component/LockView;

.field private g:Lcom/alipay/mobile/commonui/widget/APButton;

.field private h:Landroid/view/animation/Animation;

.field private i:Ljava/lang/Runnable;

.field protected mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AlipaySetPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/o;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "AlipaySetPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/o;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "AlipaySetPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/o;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipaySetPattern"

    const-string/jumbo v2, "inflate(R.layout.alipay_pattern_set)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/e;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/a/d;->x:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/a/d;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    sget v0, Lcom/alipay/mobile/a/d;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    sget v0, Lcom/alipay/mobile/a/d;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/q;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/q;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/f;->H:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockIndicator;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->y:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;Ljava/lang/String;)V
    .locals 3

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->l:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/CycleInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/a/f;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsCheckError(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipaySetPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipaySetPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    goto :goto_1
.end method


# virtual methods
.method public TryToSetPattern(ZZLcom/alipay/mobile/framework/app/ui/BaseActivity;)V
    .locals 6

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipaySetPattern"

    const-string/jumbo v2, "TryToSetPattern"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipaySetPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "density: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipaySetPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lockview width: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/f;->B:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/p;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/p;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/r;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/r;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->showBackButton()V

    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsSetGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/s;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/s;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/v;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->hideBackButton()V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setIsShowSkipButton(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->a(Z)V

    return-void
.end method

.method public setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;

    return-void
.end method
