.class public abstract Lnet/simonvt/menudrawer/MenuDrawer;
.super Landroid/view/ViewGroup;


# static fields
.field static final q:Z

.field protected static final r:Landroid/view/animation/Interpolator;

.field protected static final s:Landroid/view/animation/Interpolator;


# instance fields
.field protected A:I

.field protected final B:Landroid/graphics/Rect;

.field protected C:Lnet/simonvt/menudrawer/a;

.field protected D:Lnet/simonvt/menudrawer/a;

.field protected E:I

.field protected F:Z

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:Z

.field protected L:I

.field protected M:F

.field protected N:Z

.field protected O:Landroid/os/Bundle;

.field protected P:I

.field protected Q:Lnet/simonvt/menudrawer/p;

.field protected R:Lnet/simonvt/menudrawer/af;

.field protected S:Landroid/graphics/drawable/Drawable;

.field protected T:Z

.field protected U:Z

.field protected final V:Landroid/graphics/Rect;

.field protected W:F

.field protected Z:Z

.field private a:Z

.field private aa:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private b:Z

.field private final c:Landroid/graphics/Rect;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Lnet/simonvt/menudrawer/o;

.field private g:Landroid/app/Activity;

.field private h:Lnet/simonvt/menudrawer/k;

.field private i:Ljava/lang/Runnable;

.field private j:Lnet/simonvt/menudrawer/a/a;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lnet/simonvt/menudrawer/x;

.field private o:Lnet/simonvt/menudrawer/x;

.field private final p:Landroid/graphics/Rect;

.field protected t:Landroid/graphics/drawable/Drawable;

.field protected u:Z

.field protected v:I

.field protected w:Landroid/graphics/drawable/Drawable;

.field protected x:I

.field protected y:Landroid/graphics/Bitmap;

.field protected z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    new-instance v0, Lnet/simonvt/menudrawer/ai;

    invoke-direct {v0}, Lnet/simonvt/menudrawer/ai;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->r:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:Landroid/app/Activity;

    iput p2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    sget v0, Lnet/simonvt/menudrawer/z;->menuDrawerStyle:I

    invoke-direct {p0, p1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v3, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->c:Landroid/graphics/Rect;

    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:I

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:I

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->K:Z

    new-instance v0, Lnet/simonvt/menudrawer/l;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/l;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->i:Ljava/lang/Runnable;

    const/16 v0, 0x258

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    new-instance v0, Lnet/simonvt/menudrawer/m;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/m;-><init>(Lnet/simonvt/menudrawer/MenuDrawer;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->aa:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p0, p1, v3, p2}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lnet/simonvt/menudrawer/r;Lnet/simonvt/menudrawer/x;I)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Lnet/simonvt/menudrawer/r;->b:Lnet/simonvt/menudrawer/r;

    if-ne p1, v0, :cond_0

    new-instance v0, Lnet/simonvt/menudrawer/aj;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/aj;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    :goto_0
    iput p3, v2, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    invoke-direct {v2, p2}, Lnet/simonvt/menudrawer/MenuDrawer;->setPosition(Lnet/simonvt/menudrawer/x;)V

    sget v0, Lnet/simonvt/menudrawer/aa;->md__drawer:I

    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setId(I)V

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown menu mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/simonvt/menudrawer/r;->c:Lnet/simonvt/menudrawer/r;

    if-ne p1, v0, :cond_2

    new-instance v0, Lnet/simonvt/menudrawer/t;

    invoke-direct {v0, p0, p3}, Lnet/simonvt/menudrawer/t;-><init>(Landroid/app/Activity;I)V

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    if-eq p2, v1, :cond_1

    sget-object v1, Lnet/simonvt/menudrawer/x;->e:Lnet/simonvt/menudrawer/x;

    if-ne p2, v1, :cond_5

    :cond_1
    invoke-virtual {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    move-object v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/simonvt/menudrawer/ag;

    invoke-direct {v0, p0, p3}, Lnet/simonvt/menudrawer/ag;-><init>(Landroid/app/Activity;I)V

    sget-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    if-eq p2, v1, :cond_3

    sget-object v1, Lnet/simonvt/menudrawer/x;->e:Lnet/simonvt/menudrawer/x;

    if-ne p2, v1, :cond_4

    :cond_3
    invoke-virtual {v0, p0}, Lnet/simonvt/menudrawer/MenuDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    :cond_4
    move-object v2, v0

    goto :goto_0

    :pswitch_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_1
    return-object v2

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, v2, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->c()V

    return-void
.end method

.method static synthetic b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Lnet/simonvt/menudrawer/k;

    iget-boolean v2, v1, Lnet/simonvt/menudrawer/k;->h:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Lnet/simonvt/menudrawer/k;

    iget v0, v0, Lnet/simonvt/menudrawer/k;->c:F

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:F

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Lnet/simonvt/menudrawer/k;

    iget-boolean v0, v0, Lnet/simonvt/menudrawer/k;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lnet/simonvt/menudrawer/k;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v1, Lnet/simonvt/menudrawer/k;->e:I

    if-ge v2, v3, :cond_1

    int-to-float v2, v2

    iget v3, v1, Lnet/simonvt/menudrawer/k;->f:F

    mul-float/2addr v2, v3

    iget-object v3, v1, Lnet/simonvt/menudrawer/k;->i:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, v1, Lnet/simonvt/menudrawer/k;->a:F

    iget v4, v1, Lnet/simonvt/menudrawer/k;->g:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v1, Lnet/simonvt/menudrawer/k;->c:F

    goto :goto_0

    :cond_1
    iget v2, v1, Lnet/simonvt/menudrawer/k;->b:F

    iput v2, v1, Lnet/simonvt/menudrawer/k;->c:F

    iput-boolean v0, v1, Lnet/simonvt/menudrawer/k;->h:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->d()V

    goto :goto_1
.end method

.method private d()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void
.end method

.method private getIndicatorStartPos()I
    .locals 2

    sget-object v0, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPosition(Lnet/simonvt/menudrawer/x;)V
    .locals 1

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Lnet/simonvt/menudrawer/x;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Lnet/simonvt/menudrawer/x;

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/MenuDrawer;->setFocusable(Z)V

    sget-object v0, Lnet/simonvt/menudrawer/ac;->MenuDrawer:[I

    sget v1, Lnet/simonvt/menudrawer/z;->menuDrawerStyle:I

    sget v2, Lnet/simonvt/menudrawer/ab;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0xf0

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    :goto_0
    const/4 v3, 0x5

    invoke-virtual {p0, v8}, Lnet/simonvt/menudrawer/MenuDrawer;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    const/16 v3, 0x8

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->b:Z

    const/16 v3, 0xa

    const/16 v4, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(I)V

    :cond_1
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:I

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Z:Z

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lnet/simonvt/menudrawer/x;->a(I)Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setPosition(Lnet/simonvt/menudrawer/x;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lnet/simonvt/menudrawer/s;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    sget v3, Lnet/simonvt/menudrawer/aa;->md__menu:I

    invoke-virtual {v0, v3}, Lnet/simonvt/menudrawer/a;->setId(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v2}, Lnet/simonvt/menudrawer/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lnet/simonvt/menudrawer/s;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    sget v2, Lnet/simonvt/menudrawer/aa;->md__content:I

    invoke-virtual {v0, v2}, Lnet/simonvt/menudrawer/a;->setId(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lnet/simonvt/menudrawer/d;

    invoke-direct {v0, v5}, Lnet/simonvt/menudrawer/d;-><init>(B)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->t:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lnet/simonvt/menudrawer/k;

    sget-object v1, Lnet/simonvt/menudrawer/MenuDrawer;->r:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lnet/simonvt/menudrawer/k;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Lnet/simonvt/menudrawer/k;

    return-void

    :cond_2
    iput-boolean v6, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a:Z

    goto/16 :goto_0
.end method

.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:Landroid/os/Bundle;

    return-void
.end method

.method public abstract a(Z)V
.end method

.method protected final a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract b(I)V
.end method

.method public abstract b()Z
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    float-to-int v3, v0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Z:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->l()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    sget v3, Lnet/simonvt/menudrawer/aa;->mdActiveViewPosition:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iget v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->U:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    sget-object v3, Lnet/simonvt/menudrawer/MenuDrawer;->s:Landroid/view/animation/Interpolator;

    sub-float v0, v2, v0

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-int v5, v4

    int-to-float v4, v3

    mul-float/2addr v0, v4

    float-to-int v6, v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:I

    sget-object v0, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v7

    invoke-virtual {v7}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_3
    sget-object v7, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v8

    invoke-virtual {v8}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    :goto_4
    iget-object v5, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object v0, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2

    move v0, v1

    :goto_5
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:Z

    if-eqz v2, :cond_9

    int-to-float v2, v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_9
    add-int v2, v0, v3

    move v3, v0

    move v4, v1

    move v0, v2

    move v2, v1

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:Z

    if-eqz v3, :cond_a

    int-to-float v3, v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->M:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    :cond_a
    add-int/2addr v2, v0

    move v3, v1

    move v4, v0

    move v0, v1

    goto/16 :goto_3

    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v2

    sub-int v4, v2, v5

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v0

    sub-int v3, v0, v6

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->c(Landroid/view/View;)I

    move-result v4

    add-int v2, v4, v5

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->d(Landroid/view/View;)I

    move-result v3

    add-int v0, v3, v6

    goto/16 :goto_4

    :pswitch_6
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Lnet/simonvt/menudrawer/x;

    sget-object v1, Lnet/simonvt/menudrawer/x;->d:Lnet/simonvt/menudrawer/x;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lnet/simonvt/menudrawer/a;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->b:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Z:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    sget-object v0, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->d:Landroid/view/View;

    return-object v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method protected getPosition()Lnet/simonvt/menudrawer/x;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lnet/simonvt/menudrawer/al;->e(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lnet/simonvt/menudrawer/n;->a:[I

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Lnet/simonvt/menudrawer/x;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->n:Lnet/simonvt/menudrawer/x;

    :goto_0
    return-object v0

    :pswitch_0
    if-ne v0, v3, :cond_0

    sget-object v0, Lnet/simonvt/menudrawer/x;->c:Lnet/simonvt/menudrawer/x;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    goto :goto_0

    :pswitch_1
    if-ne v0, v3, :cond_1

    sget-object v0, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/simonvt/menudrawer/x;->c:Lnet/simonvt/menudrawer/x;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method protected l()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/n;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v1}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v1}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v1}, Lnet/simonvt/menudrawer/al;->c(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v1}, Lnet/simonvt/menudrawer/al;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->V:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->a()V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Z)V

    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->aa:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->aa:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lnet/simonvt/menudrawer/aa;->mdMenu:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    :cond_0
    sget v0, Lnet/simonvt/menudrawer/aa;->mdContent:I

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-virtual {p1}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a:Z

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->v:I

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowColor(I)V

    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Lnet/simonvt/menudrawer/x;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    iput-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Lnet/simonvt/menudrawer/x;

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOffsetPixels(F)V

    :cond_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    if-ne p1, v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/af;->a(Z)V

    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;

    invoke-direct {v1, v0}, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->O:Landroid/os/Bundle;

    iput-object v0, v1, Lnet/simonvt/menudrawer/MenuDrawer$SavedState;->a:Landroid/os/Bundle;

    return-object v1
.end method

.method public abstract p()V
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected final q()V
    .locals 2

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->H:I

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->I:I

    goto :goto_0
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iput v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->A:I

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->b:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->L:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->N:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->h:Lnet/simonvt/menudrawer/k;

    iput-boolean v2, v0, Lnet/simonvt/menudrawer/k;->h:Z

    const/16 v1, 0x320

    iput v1, v0, Lnet/simonvt/menudrawer/k;->e:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnet/simonvt/menudrawer/k;->d:J

    const/4 v1, 0x0

    iput v1, v0, Lnet/simonvt/menudrawer/k;->a:F

    iput v3, v0, Lnet/simonvt/menudrawer/k;->b:F

    iput v3, v0, Lnet/simonvt/menudrawer/k;->g:F

    iget v1, v0, Lnet/simonvt/menudrawer/k;->e:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, v0, Lnet/simonvt/menudrawer/k;->f:F

    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->c()V

    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->b:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->b:Z

    invoke-direct {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->d()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->e:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, p1, v0}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->g:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Z:Z

    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupUpIndicator(Activity) has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz p1, :cond_2

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method protected setDrawerState(I)V
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:I

    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->G:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Lnet/simonvt/menudrawer/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Lnet/simonvt/menudrawer/o;

    invoke-interface {v0, p1}, Lnet/simonvt/menudrawer/o;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->a:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropShadowColor(I)V
    .locals 5

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    const v1, 0xffffff

    and-int/2addr v1, p1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->u:Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->x:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->P:I

    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->d:Landroid/view/View;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->d:Landroid/view/View;

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->removeAllViews()V

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1, p1, v0}, Lnet/simonvt/menudrawer/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method protected setOffsetPixels(F)V
    .locals 6

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    float-to-int v2, v0

    float-to-int v3, p1

    iput p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/af;->a(F)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:I

    move v1, v0

    :goto_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:I

    if-eq v1, v0, :cond_0

    iput v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->k:I

    iget-object v4, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-boolean v0, v4, Lnet/simonvt/menudrawer/a/a;->c:Z

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v0, v5, :cond_4

    iget-object v0, v4, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    iget-object v4, v4, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    check-cast v0, Lnet/simonvt/menudrawer/a/c;

    iget-object v5, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v0, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->b(I)V

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->F:Z

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->E:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Lnet/simonvt/menudrawer/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Lnet/simonvt/menudrawer/o;

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_0

    iget-object v0, v4, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    iget-object v4, v4, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    invoke-static {v0, v4, v1}, Lnet/simonvt/menudrawer/a/d;->a(Ljava/lang/Object;Landroid/app/Activity;I)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/o;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->f:Lnet/simonvt/menudrawer/o;

    return-void
.end method

.method public setOnInterceptMoveEventListener(Lnet/simonvt/menudrawer/p;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->Q:Lnet/simonvt/menudrawer/p;

    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Lnet/simonvt/menudrawer/af;

    invoke-direct {v2, p1}, Lnet/simonvt/menudrawer/af;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    invoke-static {p0}, Lnet/simonvt/menudrawer/al;->e(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/af;->a(Z)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-boolean v1, v0, Lnet/simonvt/menudrawer/a/a;->c:Z

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/simonvt/menudrawer/a/c;

    iget-object v1, v0, Lnet/simonvt/menudrawer/a/c;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lnet/simonvt/menudrawer/a/c;->c:Ljava/lang/reflect/Method;

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/c;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:I

    :goto_2
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a/d;->c(Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lnet/simonvt/menudrawer/a/a;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-boolean v2, v0, Lnet/simonvt/menudrawer/a/a;->c:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lnet/simonvt/menudrawer/a/c;

    iget-object v2, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->S:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->T:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/MenuDrawer;->j:Lnet/simonvt/menudrawer/a/a;

    iget-object v2, p0, Lnet/simonvt/menudrawer/MenuDrawer;->R:Lnet/simonvt/menudrawer/af;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->l:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Lnet/simonvt/menudrawer/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    iget-object v1, v0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    iget-object v0, v0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a/d;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lnet/simonvt/menudrawer/MenuDrawer;->m:I

    goto :goto_1
.end method
