.class public final Luk/co/senab/photoview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Luk/co/senab/photoview/r;


# static fields
.field static final a:Z


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/ViewTreeObserver;

.field private h:Landroid/view/GestureDetector;

.field private i:Luk/co/senab/photoview/m;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/RectF;

.field private final n:[F

.field private o:Luk/co/senab/photoview/g;

.field private p:Luk/co/senab/photoview/h;

.field private q:Luk/co/senab/photoview/i;

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Luk/co/senab/photoview/f;

.field private x:I

.field private y:Z

.field private z:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Luk/co/senab/photoview/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Luk/co/senab/photoview/b;->b:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Luk/co/senab/photoview/b;->c:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Luk/co/senab/photoview/b;->d:F

    iput-boolean v3, p0, Luk/co/senab/photoview/b;->e:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/b;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/b;->m:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Luk/co/senab/photoview/b;->n:[F

    const/4 v0, 0x2

    iput v0, p0, Luk/co/senab/photoview/b;->x:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Luk/co/senab/photoview/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {p1}, Luk/co/senab/photoview/b;->b(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    new-instance v0, Luk/co/senab/photoview/n;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/n;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p0, v0, Luk/co/senab/photoview/m;->a:Luk/co/senab/photoview/r;

    iput-object v0, p0, Luk/co/senab/photoview/b;->i:Luk/co/senab/photoview/m;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Luk/co/senab/photoview/c;

    invoke-direct {v2, p0}, Luk/co/senab/photoview/c;-><init>(Luk/co/senab/photoview/b;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Luk/co/senab/photoview/b;->h:Landroid/view/GestureDetector;

    iget-object v0, p0, Luk/co/senab/photoview/b;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    invoke-virtual {p0, v3}, Luk/co/senab/photoview/b;->b(Z)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    new-instance v0, Luk/co/senab/photoview/o;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/o;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Luk/co/senab/photoview/p;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/p;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Luk/co/senab/photoview/b;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Luk/co/senab/photoview/b;->m:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Luk/co/senab/photoview/b;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/b;->r:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    int-to-float v4, v2

    div-float v4, v1, v4

    int-to-float v5, v3

    div-float v5, v0, v5

    iget-object v6, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    iget-object v4, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    invoke-direct {p0}, Luk/co/senab/photoview/b;->m()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Luk/co/senab/photoview/d;->a:[I

    iget-object v1, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Luk/co/senab/photoview/b;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1}, Luk/co/senab/photoview/b;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Luk/co/senab/photoview/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/b;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static b(FFF)V
    .locals 2

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom should be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom should be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 3

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Luk/co/senab/photoview/PhotoView;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Luk/co/senab/photoview/b;->o:Luk/co/senab/photoview/g;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Luk/co/senab/photoview/b;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/b;->o:Luk/co/senab/photoview/g;

    :cond_1
    return-void
.end method

.method private static b(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Luk/co/senab/photoview/PhotoView;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Luk/co/senab/photoview/b;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private c(FFF)V
    .locals 7

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Luk/co/senab/photoview/e;

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->g()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/e;-><init>(Luk/co/senab/photoview/b;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Luk/co/senab/photoview/b;)V
    .locals 0

    invoke-direct {p0}, Luk/co/senab/photoview/b;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Luk/co/senab/photoview/b;->l()V

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->j()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private l()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->j()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v6, v5

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_2

    sget-object v6, Luk/co/senab/photoview/d;->a:[I

    iget-object v7, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    int-to-float v5, v5

    sub-float v0, v5, v0

    div-float/2addr v0, v8

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    sget-object v1, Luk/co/senab/photoview/d;->a:[I

    iget-object v5, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    int-to-float v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v8

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    :goto_2
    const/4 v2, 0x2

    iput v2, p0, Luk/co/senab/photoview/b;->x:I

    :goto_3
    iget-object v2, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_0
    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :pswitch_1
    int-to-float v5, v5

    sub-float v0, v5, v0

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    goto :goto_1

    :cond_2
    iget v0, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v5

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    int-to-float v0, v5

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v5

    goto :goto_1

    :pswitch_2
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    :pswitch_3
    int-to-float v1, v2

    sub-float/2addr v1, v4

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Luk/co/senab/photoview/b;->x:I

    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_3

    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    int-to-float v1, v2

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    iput v2, p0, Luk/co/senab/photoview/b;->x:I

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Luk/co/senab/photoview/b;->x:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->j()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->b(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Luk/co/senab/photoview/b;->l()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v1, p0, Luk/co/senab/photoview/b;->g:Landroid/view/ViewTreeObserver;

    iput-object v1, p0, Luk/co/senab/photoview/b;->o:Luk/co/senab/photoview/g;

    iput-object v1, p0, Luk/co/senab/photoview/b;->p:Luk/co/senab/photoview/h;

    iput-object v1, p0, Luk/co/senab/photoview/b;->q:Luk/co/senab/photoview/i;

    iput-object v1, p0, Luk/co/senab/photoview/b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(F)V
    .locals 2

    iget v0, p0, Luk/co/senab/photoview/b;->c:F

    iget v1, p0, Luk/co/senab/photoview/b;->d:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/b;->b(FFF)V

    iput p1, p0, Luk/co/senab/photoview/b;->b:F

    return-void
.end method

.method public final a(FF)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Luk/co/senab/photoview/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoViewAttacher"

    const-string v1, "onDrag: dx: %.2f. dy: %.2f"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Luk/co/senab/photoview/b;->a(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Luk/co/senab/photoview/b;->k()V

    iget-boolean v1, p0, Luk/co/senab/photoview/b;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Luk/co/senab/photoview/b;->i:Luk/co/senab/photoview/m;

    invoke-virtual {v1}, Luk/co/senab/photoview/m;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Luk/co/senab/photoview/b;->x:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Luk/co/senab/photoview/b;->x:I

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    iget v1, p0, Luk/co/senab/photoview/b;->x:I

    if-ne v1, v5, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public final a(FFF)V
    .locals 5

    sget-boolean v0, Luk/co/senab/photoview/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoViewAttacher"

    const-string v1, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/photoview/b;->a(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->g()F

    move-result v0

    iget v1, p0, Luk/co/senab/photoview/b;->d:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Luk/co/senab/photoview/b;->k()V

    :cond_2
    return-void
.end method

.method public final a(FFFF)V
    .locals 6

    sget-boolean v0, Luk/co/senab/photoview/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoViewAttacher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFling. sX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Vx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Vy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/photoview/b;->a(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Luk/co/senab/photoview/f;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/f;-><init>(Luk/co/senab/photoview/b;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    iget-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Luk/co/senab/photoview/f;->a(IIII)V

    iget-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/photoview/b;->r:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->i()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Luk/co/senab/photoview/d;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Luk/co/senab/photoview/g;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/photoview/b;->o:Luk/co/senab/photoview/g;

    return-void
.end method

.method public final a(Luk/co/senab/photoview/h;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/photoview/b;->p:Luk/co/senab/photoview/h;

    return-void
.end method

.method public final a(Luk/co/senab/photoview/i;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/photoview/b;->q:Luk/co/senab/photoview/i;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/co/senab/photoview/b;->e:Z

    return-void
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Luk/co/senab/photoview/b;->l()V

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->j()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    iget v0, p0, Luk/co/senab/photoview/b;->b:F

    iget v1, p0, Luk/co/senab/photoview/b;->d:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/b;->b(FFF)V

    iput p1, p0, Luk/co/senab/photoview/b;->c:F

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/co/senab/photoview/b;->y:Z

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->i()V

    return-void
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Luk/co/senab/photoview/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->a()V

    :cond_1
    return-object v0
.end method

.method public final c(F)V
    .locals 2

    iget v0, p0, Luk/co/senab/photoview/b;->b:F

    iget v1, p0, Luk/co/senab/photoview/b;->c:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/b;->b(FFF)V

    iput p1, p0, Luk/co/senab/photoview/b;->d:F

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Luk/co/senab/photoview/b;->b:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Luk/co/senab/photoview/b;->c:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Luk/co/senab/photoview/b;->d:F

    return v0
.end method

.method public final g()F
    .locals 2

    iget-object v0, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/b;->n:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Luk/co/senab/photoview/b;->n:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final h()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/b;->z:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Luk/co/senab/photoview/b;->y:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Luk/co/senab/photoview/b;->b(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/b;->m()V

    goto :goto_0
.end method

.method protected final j()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Luk/co/senab/photoview/b;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/b;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Luk/co/senab/photoview/b;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Luk/co/senab/photoview/b;->k:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->g()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Luk/co/senab/photoview/b;->c:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget v0, p0, Luk/co/senab/photoview/b;->c:F

    invoke-direct {p0, v0, v1, v2}, Luk/co/senab/photoview/b;->c(FFF)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget v3, p0, Luk/co/senab/photoview/b;->c:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    iget v3, p0, Luk/co/senab/photoview/b;->d:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Luk/co/senab/photoview/b;->d:F

    invoke-direct {p0, v0, v1, v2}, Luk/co/senab/photoview/b;->c(FFF)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget v0, p0, Luk/co/senab/photoview/b;->b:F

    invoke-direct {p0, v0, v1, v2}, Luk/co/senab/photoview/b;->c(FFF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onGlobalLayout()V
    .locals 6

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Luk/co/senab/photoview/b;->y:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget v5, p0, Luk/co/senab/photoview/b;->s:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/b;->u:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/b;->v:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/b;->t:I

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/b;->a(Landroid/graphics/drawable/Drawable;)V

    iput v1, p0, Luk/co/senab/photoview/b;->s:I

    iput v2, p0, Luk/co/senab/photoview/b;->t:I

    iput v3, p0, Luk/co/senab/photoview/b;->u:I

    iput v4, p0, Luk/co/senab/photoview/b;->v:I

    :cond_1
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/b;->p:Luk/co/senab/photoview/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->b()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    iget-object v0, p0, Luk/co/senab/photoview/b;->p:Luk/co/senab/photoview/h;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/b;->q:Luk/co/senab/photoview/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/co/senab/photoview/b;->q:Luk/co/senab/photoview/i;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-interface {v0}, Luk/co/senab/photoview/i;->a()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Luk/co/senab/photoview/b;->y:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Luk/co/senab/photoview/b;->h:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/b;->h:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    :cond_1
    iget-object v1, p0, Luk/co/senab/photoview/b;->i:Luk/co/senab/photoview/m;

    if-eqz v1, :cond_2

    iget-object v1, p0, Luk/co/senab/photoview/b;->i:Luk/co/senab/photoview/m;

    invoke-virtual {v1, p2}, Luk/co/senab/photoview/m;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    :cond_2
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    invoke-virtual {v1}, Luk/co/senab/photoview/f;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Luk/co/senab/photoview/b;->w:Luk/co/senab/photoview/f;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/photoview/b;->g()F

    move-result v1

    iget v2, p0, Luk/co/senab/photoview/b;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->b()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Luk/co/senab/photoview/e;

    invoke-virtual {p0}, Luk/co/senab/photoview/b;->g()F

    move-result v2

    iget v3, p0, Luk/co/senab/photoview/b;->b:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/e;-><init>(Luk/co/senab/photoview/b;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
