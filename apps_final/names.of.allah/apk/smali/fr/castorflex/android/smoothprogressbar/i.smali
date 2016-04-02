.class public final Lfr/castorflex/android/smoothprogressbar/i;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Paint;

.field private d:[I

.field private e:I

.field private f:Z

.field private g:F

.field private h:I

.field private i:I

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private final o:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lfr/castorflex/android/smoothprogressbar/j;

    invoke-direct {v0, p0}, Lfr/castorflex/android/smoothprogressbar/j;-><init>(Lfr/castorflex/android/smoothprogressbar/i;)V

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->o:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lfr/castorflex/android/smoothprogressbar/i;->f:Z

    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->a:Landroid/view/animation/Interpolator;

    iput p2, p0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    iput p3, p0, Lfr/castorflex/android/smoothprogressbar/i;->h:I

    iput p6, p0, Lfr/castorflex/android/smoothprogressbar/i;->j:F

    iput-boolean p7, p0, Lfr/castorflex/android/smoothprogressbar/i;->k:Z

    iput-object p4, p0, Lfr/castorflex/android/smoothprogressbar/i;->d:[I

    iput v2, p0, Lfr/castorflex/android/smoothprogressbar/i;->e:I

    iput-boolean p8, p0, Lfr/castorflex/android/smoothprogressbar/i;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->n:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZB)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lfr/castorflex/android/smoothprogressbar/i;-><init>(Landroid/view/animation/Interpolator;II[IFFZZ)V

    return-void
.end method

.method static synthetic a(Lfr/castorflex/android/smoothprogressbar/i;)F
    .locals 1

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->j:F

    return v0
.end method

.method static synthetic a(Lfr/castorflex/android/smoothprogressbar/i;F)F
    .locals 1

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    return v0
.end method

.method static synthetic b(Lfr/castorflex/android/smoothprogressbar/i;)F
    .locals 1

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    return v0
.end method

.method static synthetic b(Lfr/castorflex/android/smoothprogressbar/i;F)F
    .locals 1

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    return v0
.end method

.method static synthetic c(Lfr/castorflex/android/smoothprogressbar/i;)F
    .locals 1

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->n:F

    return v0
.end method

.method static synthetic d(Lfr/castorflex/android/smoothprogressbar/i;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->l:Z

    return v0
.end method

.method static synthetic e(Lfr/castorflex/android/smoothprogressbar/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->o:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->j:F

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/i;->a([I)V

    return-void
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->k:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->k:Z

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final a([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->e:I

    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->d:[I

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final b(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final b(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->n:F

    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/i;->n:F

    rem-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->m:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->m:Z

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/i;->h:I

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->b:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->b:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->k:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->m:Z

    if-eqz v2, :cond_a

    div-int/lit8 v1, v1, 0x2

    move v12, v1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->h:I

    add-int/2addr v1, v12

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    add-int v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    int-to-float v2, v2

    div-float v18, v1, v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->l:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->e:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->d:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    move-object/from16 v0, p0

    iput v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->e:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->l:Z

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->e:I

    const/4 v1, 0x0

    move v13, v1

    move v14, v2

    move v1, v3

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->i:I

    if-gt v13, v2, :cond_9

    int-to-float v2, v13

    mul-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/i;->g:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    sub-float v4, v2, v18

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lfr/castorflex/android/smoothprogressbar/i;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/i;->a:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v2

    add-float v2, v4, v3

    move/from16 v0, v16

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/i;->h:I

    int-to-float v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v15, v2

    :goto_2
    cmpl-float v2, v4, v15

    if-lez v2, :cond_6

    sub-float v2, v4, v15

    :goto_3
    add-float v19, v1, v2

    cmpl-float v2, v19, v1

    if-lez v2, :cond_3

    int-to-float v2, v12

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v0, v17

    int-to-float v3, v0

    int-to-float v1, v12

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/i;->d:[I

    aget v6, v6, v14

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->m:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_3
    add-float v3, v19, v15

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->d:[I

    array-length v1, v1

    if-lt v2, v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    move v14, v2

    move v1, v3

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    move v15, v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lfr/castorflex/android/smoothprogressbar/i;->k:Z

    if-eqz v1, :cond_8

    int-to-float v1, v12

    add-float v7, v1, v2

    int-to-float v1, v12

    add-float v9, v1, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v3

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v12

    sub-float v2, v1, v2

    int-to-float v1, v12

    sub-float v4, v1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v1, v12, 0x2

    int-to-float v1, v1

    sub-float v2, v1, v2

    mul-int/lit8 v1, v12, 0x2

    int-to-float v1, v1

    sub-float v4, v1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_9
    return-void

    :cond_a
    move v12, v1

    goto/16 :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->f:Z

    return v0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->f:Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final start()V
    .locals 5

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->o:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lfr/castorflex/android/smoothprogressbar/i;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/i;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->f:Z

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/i;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/i;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
