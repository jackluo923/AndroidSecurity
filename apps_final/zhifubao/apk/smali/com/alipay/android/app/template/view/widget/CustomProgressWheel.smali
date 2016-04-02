.class public Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;
.super Landroid/view/View;
.source "CustomProgressWheel.java"


# static fields
.field private static final z:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:D

.field private h:D

.field private i:F

.field private j:Z

.field private k:J

.field private final l:J

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/RectF;

.field private r:F

.field private s:J

.field private t:Z

.field private u:F

.field private v:F

.field private w:Z

.field private x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->z:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0x1c

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    .line 39
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    .line 40
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->d:I

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->e:I

    .line 45
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    .line 48
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    .line 49
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    .line 52
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    .line 53
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->l:J

    .line 56
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    .line 57
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 68
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 75
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 76
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 77
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 409
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->y:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/16 v0, 0x1c

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    .line 39
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    .line 40
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->d:I

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->e:I

    .line 45
    iput-boolean v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    .line 48
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    .line 49
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    .line 50
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    .line 52
    const-wide/16 v0, 0xd2

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    .line 53
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->l:J

    .line 56
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    .line 57
    const v0, 0xffffff

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 68
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 75
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 76
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 77
    iput-boolean v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 409
    iput-boolean v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->y:Z

    .line 90
    const-string/jumbo v0, "ProgressWheel"

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getStyleableIds(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 89
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ProgressWheel_matProg_circleRadius"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    const-string/jumbo v2, "ProgressWheel_matProg_fillRadius"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    const-string/jumbo v2, "ProgressWheel_matProg_barWidth"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    const-string/jumbo v2, "ProgressWheel_matProg_rimWidth"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    const-string/jumbo v2, "ProgressWheel_matProg_spinSpeed"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    const-string/jumbo v2, "ProgressWheel_matProg_barSpinCycleTime"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-wide v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    const-string/jumbo v2, "ProgressWheel_matProg_barColor"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    const-string/jumbo v2, "ProgressWheel_matProg_rimColor"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    const-string/jumbo v2, "ProgressWheel_matProg_linearProgress"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->t:Z

    const-string/jumbo v2, "ProgressWheel_matProg_progressIndeterminate"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->spin()V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 458
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 459
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 460
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 462
    :cond_0
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 275
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    sget-object v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->y:Z

    if-nez v0, :cond_1

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    monitor-exit v1

    .line 283
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 287
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-eqz v0, :cond_8

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    sub-long/2addr v0, v7

    .line 292
    long-to-float v3, v0

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    .line 294
    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    const-wide/16 v9, 0xc8

    cmp-long v5, v7, v9

    if-ltz v5, :cond_7

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    long-to-double v0, v0

    add-double/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    iget-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    sub-double/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    if-eqz v0, :cond_5

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    :cond_2
    iget-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->h:D

    div-double/2addr v0, v7

    add-double/2addr v0, v11

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x437e0000    # 254.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    .line 296
    :goto_2
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 297
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 298
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 303
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 305
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 307
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 308
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    add-float v3, v0, v1

    .line 310
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    const/4 v2, 0x0

    .line 312
    const/high16 v3, 0x43070000    # 135.0f

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 349
    :goto_3
    if-eqz v6, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    goto/16 :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v6

    .line 294
    goto :goto_1

    :cond_6
    const/high16 v1, 0x437e0000    # 254.0f

    sub-float v0, v13, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    sub-float/2addr v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    goto :goto_2

    :cond_7
    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    goto :goto_2

    .line 317
    :cond_8
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 319
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_c

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    sub-long/2addr v7, v9

    long-to-float v1, v7

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    .line 324
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    mul-float/2addr v1, v3

    .line 326
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 330
    :goto_4
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 331
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b()V

    .line 334
    :cond_9
    const/4 v1, 0x0

    .line 335
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 336
    iget-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->t:Z

    if-nez v3, :cond_b

    .line 337
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    div-float/2addr v0, v2

    sub-float v0, v13, v0

    float-to-double v0, v0

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v11, v0

    double-to-float v0, v0

    mul-float v1, v0, v2

    .line 339
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    div-float/2addr v0, v2

    sub-float v0, v13, v0

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double v7, v11, v7

    double-to-float v0, v7

    mul-float/2addr v0, v2

    move v5, v1

    .line 342
    :goto_5
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v2

    .line 346
    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v2, v5, v0

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    move v3, v0

    goto :goto_6

    :cond_b
    move v5, v1

    goto :goto_5

    :cond_c
    move v6, v4

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 110
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 111
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 115
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 116
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    if-eq v4, v6, :cond_4

    .line 124
    if-ne v4, v7, :cond_0

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 134
    :cond_0
    :goto_0
    if-eq v5, v6, :cond_1

    if-ne v4, v6, :cond_3

    :cond_1
    move v0, v1

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->setMeasuredDimension(II)V

    .line 146
    return-void

    .line 137
    :cond_3
    if-ne v5, v7, :cond_2

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 553
    instance-of v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 554
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 574
    :goto_0
    return-void

    .line 558
    :cond_0
    check-cast p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;

    .line 559
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 561
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->a:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 562
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->b:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 563
    iget-boolean v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->c:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 564
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->d:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    .line 565
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->e:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    .line 566
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->f:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    .line 567
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->g:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    .line 568
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->h:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    .line 569
    iget v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->i:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    .line 570
    iget-boolean v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->j:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->t:Z

    .line 571
    iget-boolean v0, p1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->k:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 531
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 533
    new-instance v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 536
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->a:F

    .line 537
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->b:F

    .line 538
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->c:Z

    .line 539
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->d:F

    .line 540
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->e:I

    .line 541
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->f:I

    .line 542
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->g:I

    .line 543
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->h:I

    .line 544
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    iput v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->i:I

    .line 545
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->t:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->j:Z

    .line 546
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    iput-boolean v0, v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$WheelSavedState;->k:Z

    .line 548
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->f:Z

    if-nez v4, :cond_0

    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a()V

    .line 159
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 160
    return-void

    .line 157
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->q:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 358
    if-nez p2, :cond_0

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 361
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 420
    sget-object v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->y:Z

    .line 422
    const-wide v2, 0x407f400000000000L    # 500.0

    iput-wide v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->g:D

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->i:F

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->j:Z

    .line 425
    const-wide/16 v2, 0xd2

    iput-wide v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->k:J

    .line 426
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 420
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 405
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 406
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 407
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 651
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->m:I

    .line 652
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a()V

    .line 653
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 656
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 632
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b:I

    .line 633
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 636
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->x:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel$ProgressCallback;

    .line 265
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b()V

    .line 268
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 613
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a:I

    .line 614
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 617
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 507
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-eqz v1, :cond_0

    .line 508
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 512
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 513
    sub-float/2addr p1, v2

    .line 518
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 526
    :goto_1
    return-void

    .line 514
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 515
    goto :goto_0

    .line 522
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 523
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 525
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->t:Z

    .line 595
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 598
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 471
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-eqz v1, :cond_0

    .line 472
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 475
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->b()V

    .line 478
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 479
    sub-float/2addr p1, v2

    .line 484
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 498
    :goto_1
    return-void

    .line 480
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 481
    goto :goto_0

    .line 491
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 495
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 497
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 671
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->n:I

    .line 672
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->a()V

    .line 673
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 676
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 711
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->c:I

    .line 712
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 715
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 695
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->r:F

    .line 696
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->s:J

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 448
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 449
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 414
    sget-object v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->z:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->y:Z

    .line 414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->w:Z

    .line 437
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->u:F

    .line 438
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->v:F

    .line 439
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->invalidate()V

    .line 440
    return-void
.end method
