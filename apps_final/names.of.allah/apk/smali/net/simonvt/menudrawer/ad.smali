.class final Lnet/simonvt/menudrawer/ad;
.super Ljava/lang/Object;


# static fields
.field private static final t:F

.field private static final u:[F

.field private static x:F

.field private static y:F


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/view/animation/Interpolator;

.field private s:Z

.field private v:F

.field private final w:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    sput v0, Lnet/simonvt/menudrawer/ad;->t:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lnet/simonvt/menudrawer/ad;->u:[F

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-gt v4, v12, :cond_2

    int-to-float v0, v4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v5, v0, v3

    move v0, v1

    move v3, v2

    :goto_1
    sub-float v2, v0, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float v7, v1, v2

    mul-float/2addr v6, v7

    sub-float v7, v1, v2

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    sub-float v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    cmpl-float v6, v7, v5

    if-lez v6, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    mul-float v0, v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    sget-object v2, Lnet/simonvt/menudrawer/ad;->u:[F

    aput v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lnet/simonvt/menudrawer/ad;->u:[F

    aput v1, v0, v12

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lnet/simonvt/menudrawer/ad;->x:F

    sput v1, Lnet/simonvt/menudrawer/ad;->y:F

    invoke-static {v1}, Lnet/simonvt/menudrawer/ad;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lnet/simonvt/menudrawer/ad;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/menudrawer/ad;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    iput-object p2, p0, Lnet/simonvt/menudrawer/ad;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->w:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const v1, 0x43c10b3d

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->w:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->v:F

    iput-boolean p3, p0, Lnet/simonvt/menudrawer/ad;->s:Z

    return-void
.end method

.method private static a(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sget v0, Lnet/simonvt/menudrawer/ad;->x:F

    mul-float/2addr v0, p0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr v0, v1

    :goto_0
    sget v1, Lnet/simonvt/menudrawer/ad;->y:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    sub-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v3, v0

    const v1, 0x3ebc5ab2

    const v2, 0x3f21d2a7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(III)V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->a:I

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    iput p3, p0, Lnet/simonvt/menudrawer/ad;->m:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/menudrawer/ad;->l:J

    iput p1, p0, Lnet/simonvt/menudrawer/ad;->b:I

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->c:I

    add-int v0, p1, p2

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->d:I

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->e:I

    int-to-float v0, p2

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->o:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnet/simonvt/menudrawer/ad;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->n:F

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->j:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->d:I

    return v0
.end method

.method public final d()Z
    .locals 7

    const/4 v1, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/simonvt/menudrawer/ad;->l:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->m:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->a:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    int-to-float v0, v0

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->n:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lnet/simonvt/menudrawer/ad;->r:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_2

    invoke-static {v0}, Lnet/simonvt/menudrawer/ad;->a(F)F

    move-result v0

    :goto_2
    iget v2, p0, Lnet/simonvt/menudrawer/ad;->b:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->o:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->c:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->p:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/ad;->r:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    :pswitch_1
    int-to-float v0, v0

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->m:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v2, v6, v0

    float-to-int v2, v2

    int-to-float v3, v2

    div-float/2addr v3, v6

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v4, v6

    sget-object v5, Lnet/simonvt/menudrawer/ad;->u:[F

    aget v5, v5, v2

    sget-object v6, Lnet/simonvt/menudrawer/ad;->u:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    sub-float/2addr v0, v3

    sub-float v3, v4, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->b:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->d:I

    iget v4, p0, Lnet/simonvt/menudrawer/ad;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->f:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->c:I

    iget v3, p0, Lnet/simonvt/menudrawer/ad;->e:I

    iget v4, p0, Lnet/simonvt/menudrawer/ad;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->d:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iget v2, p0, Lnet/simonvt/menudrawer/ad;->e:I

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lnet/simonvt/menudrawer/ad;->d:I

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->e:I

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->d:I

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->j:I

    iget v0, p0, Lnet/simonvt/menudrawer/ad;->e:I

    iput v0, p0, Lnet/simonvt/menudrawer/ad;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/ad;->q:Z

    return-void
.end method
