.class public final Lfr/castorflex/android/smoothprogressbar/k;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field b:I

.field c:[I

.field d:F

.field e:Z

.field f:Z

.field g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->a:Landroid/view/animation/Interpolator;

    sget v1, Lfr/castorflex/android/smoothprogressbar/f;->spb_default_sections_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->b:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lfr/castorflex/android/smoothprogressbar/d;->spb_default_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->c:[I

    sget v1, Lfr/castorflex/android/smoothprogressbar/g;->spb_default_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->d:F

    sget v1, Lfr/castorflex/android/smoothprogressbar/c;->spb_default_reversed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->e:Z

    sget v1, Lfr/castorflex/android/smoothprogressbar/e;->spb_default_stroke_separator_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->g:I

    sget v1, Lfr/castorflex/android/smoothprogressbar/e;->spb_default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/k;->h:F

    return-void
.end method


# virtual methods
.method public final a()Lfr/castorflex/android/smoothprogressbar/i;
    .locals 10

    new-instance v0, Lfr/castorflex/android/smoothprogressbar/i;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/k;->a:Landroid/view/animation/Interpolator;

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/k;->b:I

    iget v3, p0, Lfr/castorflex/android/smoothprogressbar/k;->g:I

    iget-object v4, p0, Lfr/castorflex/android/smoothprogressbar/k;->c:[I

    iget v5, p0, Lfr/castorflex/android/smoothprogressbar/k;->h:F

    iget v6, p0, Lfr/castorflex/android/smoothprogressbar/k;->d:F

    iget-boolean v7, p0, Lfr/castorflex/android/smoothprogressbar/k;->e:Z

    iget-boolean v8, p0, Lfr/castorflex/android/smoothprogressbar/k;->f:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lfr/castorflex/android/smoothprogressbar/i;-><init>(Landroid/view/animation/Interpolator;II[IFFZZB)V

    return-object v0
.end method

.method public final a(F)Lfr/castorflex/android/smoothprogressbar/k;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/k;->h:F

    return-object p0
.end method

.method public final a(I)Lfr/castorflex/android/smoothprogressbar/k;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/k;->c:[I

    return-object p0
.end method
