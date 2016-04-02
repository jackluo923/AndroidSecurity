.class public Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->a:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a:I

    return p1
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic a(J)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/l;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/util/l;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;Landroid/view/View;)V

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->b:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "pwd_tips"

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->c:Landroid/graphics/Point;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/k;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/ui/quickpay/util/k;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
