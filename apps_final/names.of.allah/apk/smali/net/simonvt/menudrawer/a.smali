.class Lnet/simonvt/menudrawer/a;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->b:Z

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->d:Z

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lnet/simonvt/menudrawer/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->a:Z

    return v0
.end method

.method static synthetic b(Lnet/simonvt/menudrawer/a;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a;->c:Z

    return v0
.end method

.method static synthetic c(Lnet/simonvt/menudrawer/a;)Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a;->d:Z

    return v0
.end method

.method static synthetic d(Lnet/simonvt/menudrawer/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->d:Z

    return v0
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/a;->b:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/simonvt/menudrawer/c;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/c;-><init>(Lnet/simonvt/menudrawer/a;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/a;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->a:Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->c:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a;->c:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/simonvt/menudrawer/b;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/b;-><init>(Lnet/simonvt/menudrawer/a;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/a;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
