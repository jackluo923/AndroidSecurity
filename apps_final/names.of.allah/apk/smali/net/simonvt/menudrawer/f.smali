.class public abstract Lnet/simonvt/menudrawer/f;
.super Lnet/simonvt/menudrawer/MenuDrawer;


# static fields
.field private static final aa:Landroid/view/animation/Interpolator;


# instance fields
.field protected a:I

.field private final ab:Ljava/lang/Runnable;

.field private ac:Ljava/lang/Runnable;

.field private ad:Lnet/simonvt/menudrawer/ad;

.field protected final b:Ljava/lang/Runnable;

.field protected c:Z

.field protected d:I

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:J

.field protected j:Lnet/simonvt/menudrawer/ad;

.field protected k:Landroid/view/VelocityTracker;

.field protected l:I

.field protected m:Z

.field protected n:I

.field protected o:Z

.field protected p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/simonvt/menudrawer/w;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/w;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/f;->aa:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lnet/simonvt/menudrawer/g;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/g;-><init>(Lnet/simonvt/menudrawer/f;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->b:Ljava/lang/Runnable;

    new-instance v0, Lnet/simonvt/menudrawer/h;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/h;-><init>(Lnet/simonvt/menudrawer/f;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->ab:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lnet/simonvt/menudrawer/f;->d:I

    iput v1, p0, Lnet/simonvt/menudrawer/f;->g:F

    iput v1, p0, Lnet/simonvt/menudrawer/f;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/f;->m:Z

    return-void
.end method

.method static synthetic a(Lnet/simonvt/menudrawer/f;)V
    .locals 0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/f;->s()V

    return-void
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 8

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    if-lt p4, v0, :cond_1

    if-ge p4, v3, :cond_1

    if-lt p5, v5, :cond_1

    if-ge p5, v4, :cond_1

    sub-int v4, p4, v0

    sub-int v5, p5, v5

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->Q:Lnet/simonvt/menudrawer/p;

    invoke-interface {v0}, Lnet/simonvt/menudrawer/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/view/View;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lnet/simonvt/menudrawer/f;)V
    .locals 0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/f;->r()V

    return-void
.end method

.method private b(Landroid/view/View;ZIII)Z
    .locals 8

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v1}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    if-lt p4, v0, :cond_1

    if-ge p4, v3, :cond_1

    if-lt p5, v5, :cond_1

    if-ge p5, v4, :cond_1

    sub-int v4, p4, v0

    sub-int v5, p5, v5

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->Q:Lnet/simonvt/menudrawer/p;

    invoke-interface {v0}, Lnet/simonvt/menudrawer/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static c(Landroid/view/View;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->W:F

    float-to-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/ad;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->c()I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->e()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->c()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private s()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/f;->W:F

    float-to-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/ad;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lnet/simonvt/menudrawer/f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lnet/simonvt/menudrawer/i;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/i;-><init>(Lnet/simonvt/menudrawer/f;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->ac:Ljava/lang/Runnable;

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ac:Ljava/lang/Runnable;

    iget-wide v1, p0, Lnet/simonvt/menudrawer/f;->i:J

    invoke-virtual {p0, v0, v1, v2}, Lnet/simonvt/menudrawer/f;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->e()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/f;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    iput-boolean v4, p0, Lnet/simonvt/menudrawer/f;->o:Z

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/VelocityTracker;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/f;->d:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->p()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    if-ne v0, v2, :cond_1

    :cond_3
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/f;->a(Z)V

    goto :goto_0
.end method

.method protected final a(II)V
    .locals 3

    iget v0, p0, Lnet/simonvt/menudrawer/f;->W:F

    float-to-int v0, v0

    sub-int v1, p1, v0

    if-lez v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/f;->setDrawerState(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v2, v0, v1, p2}, Lnet/simonvt/menudrawer/ad;->a(III)V

    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->c()V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/f;->r()V

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/f;->setDrawerState(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v2, v0, v1, p2}, Lnet/simonvt/menudrawer/ad;->a(III)V

    goto :goto_0
.end method

.method protected final a(IIZ)V
    .locals 3

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->e()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->j()V

    iget v0, p0, Lnet/simonvt/menudrawer/f;->W:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_3

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    iget v1, p0, Lnet/simonvt/menudrawer/f;->P:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lnet/simonvt/menudrawer/f;->a(II)V

    goto :goto_1

    :cond_3
    const/high16 v1, 0x44160000    # 600.0f

    int-to-float v0, v0

    iget v2, p0, Lnet/simonvt/menudrawer/f;->E:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/f;->a:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/f;->l:I

    new-instance v0, Lnet/simonvt/menudrawer/ad;

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer;->r:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lnet/simonvt/menudrawer/ad;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    new-instance v0, Lnet/simonvt/menudrawer/ad;

    sget-object v1, Lnet/simonvt/menudrawer/f;->aa:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lnet/simonvt/menudrawer/ad;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->j:Lnet/simonvt/menudrawer/ad;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->a(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/f;->n:I

    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/os/Parcelable;)V

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "net.simonvt.menudrawer.MenuDrawer.menuVisible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->a(Z)V

    :goto_0
    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    goto :goto_0
.end method

.method protected final a(IIII)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/j;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->F:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->a(Landroid/view/View;ZIII)Z

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->a(Landroid/view/View;ZIII)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->F:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;ZIII)Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    sub-int v4, p3, v0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v0

    sub-int v5, p4, v0

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/menudrawer/f;->b(Landroid/view/View;ZIII)Z

    move-result v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Landroid/view/VelocityTracker;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/f;->d:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->F:Z

    return v0
.end method

.method protected c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    sget-boolean v0, Lnet/simonvt/menudrawer/f;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/f;->p:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->p:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/f;->p:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/f;->c:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/f;->k:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ad:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/ad;->e()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    return-void
.end method

.method protected final g()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v7, v1, :cond_0

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->m:Z

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->H:I

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->J:I

    return v0
.end method

.method protected final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/f;->o:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->i()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->c()V

    invoke-direct {p0}, Lnet/simonvt/menudrawer/f;->s()V

    return-void
.end method

.method protected abstract i()V
.end method

.method protected final j()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/f;->o:Z

    return-void
.end method

.method protected final k()Z
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/f;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/f;->n:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->K:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/f;->K:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/a;->a(Z)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/f;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, p1}, Lnet/simonvt/menudrawer/a;->a(Z)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->d()V

    :cond_0
    return-void
.end method

.method public setMenuSize(I)V
    .locals 2

    iput p1, p0, Lnet/simonvt/menudrawer/f;->E:I

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/f;->G:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/f;->E:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/f;->setOffsetPixels(F)V

    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->invalidate()V

    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/f;->m:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/f;->m:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/f;->H:I

    return-void
.end method

.method public setTouchMode(I)V
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/f;->J:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lnet/simonvt/menudrawer/f;->J:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/f;->q()V

    :cond_0
    return-void
.end method
