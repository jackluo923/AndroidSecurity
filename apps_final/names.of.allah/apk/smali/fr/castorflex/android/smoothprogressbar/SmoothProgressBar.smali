.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lfr/castorflex/android/smoothprogressbar/b;->spbStyle:I

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v0, Lfr/castorflex/android/smoothprogressbar/h;->SmoothProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    sget v3, Lfr/castorflex/android/smoothprogressbar/d;->spb_default_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v1, 0x4

    sget v4, Lfr/castorflex/android/smoothprogressbar/f;->spb_default_sections_count:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    const/4 v1, 0x3

    sget v5, Lfr/castorflex/android/smoothprogressbar/e;->spb_default_stroke_separator_length:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v1, 0x2

    sget v6, Lfr/castorflex/android/smoothprogressbar/e;->spb_default_stroke_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v1, 0x5

    sget v7, Lfr/castorflex/android/smoothprogressbar/g;->spb_default_speed:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/4 v1, 0x6

    sget v8, Lfr/castorflex/android/smoothprogressbar/f;->spb_default_interpolator:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v8, 0x7

    sget v9, Lfr/castorflex/android/smoothprogressbar/c;->spb_default_reversed:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v9, 0x8

    sget v10, Lfr/castorflex/android/smoothprogressbar/c;->spb_default_mirror_mode:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    const/16 v10, 0x9

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    packed-switch v1, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_0
    new-instance v2, Lfr/castorflex/android/smoothprogressbar/k;

    invoke-direct {v2, p1}, Lfr/castorflex/android/smoothprogressbar/k;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-gez v10, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_1
    iput v7, v2, Lfr/castorflex/android/smoothprogressbar/k;->d:F

    iput-object v1, v2, Lfr/castorflex/android/smoothprogressbar/k;->a:Landroid/view/animation/Interpolator;

    if-gtz v4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v4, v2, Lfr/castorflex/android/smoothprogressbar/k;->b:I

    if-gez v5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v5, v2, Lfr/castorflex/android/smoothprogressbar/k;->g:I

    invoke-virtual {v2, v6}, Lfr/castorflex/android/smoothprogressbar/k;->a(F)Lfr/castorflex/android/smoothprogressbar/k;

    move-result-object v1

    iput-boolean v8, v1, Lfr/castorflex/android/smoothprogressbar/k;->e:Z

    iput-boolean v9, v1, Lfr/castorflex/android/smoothprogressbar/k;->f:Z

    if-eqz v0, :cond_6

    array-length v2, v0

    if-lez v2, :cond_6

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object v0, v1, Lfr/castorflex/android/smoothprogressbar/k;->c:[I

    :goto_1
    invoke-virtual {v1}, Lfr/castorflex/android/smoothprogressbar/k;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_6
    invoke-virtual {v1, v3}, Lfr/castorflex/android/smoothprogressbar/k;->a(I)Lfr/castorflex/android/smoothprogressbar/k;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()Lfr/castorflex/android/smoothprogressbar/i;
    .locals 2

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/i;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/i;

    return-object v0
.end method


# virtual methods
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/i;

    if-eqz v1, :cond_0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/i;

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a(I)V

    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a([I)V

    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->b(Z)V

    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a(Z)V

    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->b(I)V

    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->c(I)V

    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->a(F)V

    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->a()Lfr/castorflex/android/smoothprogressbar/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/i;->b(F)V

    return-void
.end method
