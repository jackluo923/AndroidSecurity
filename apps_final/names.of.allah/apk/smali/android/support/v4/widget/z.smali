.class public final Landroid/support/v4/widget/z;
.super Ljava/lang/Object;


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Landroid/support/v4/widget/p;

.field private final r:Landroid/support/v4/widget/ab;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-direct {v0}, Landroid/support/v4/widget/aa;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private static a(FFF)F
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    move p2, v0

    :cond_0
    :goto_0
    return p2

    :cond_1
    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    neg-float p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    goto :goto_0
.end method

.method private a(III)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v0, v3

    float-to-double v3, v0

    const-wide v5, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v3, v5

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v7

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Landroid/support/v4/widget/z;->t:Z

    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/widget/ab;->a(Landroid/view/View;F)V

    iput-boolean v2, p0, Landroid/support/v4/widget/z;->t:Z

    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v4/widget/z;->c(I)V

    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/z;->d:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/z;->d:[F

    array-length v2, v2

    if-gt v2, p3, :cond_2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    new-array v2, v2, [F

    add-int/lit8 v3, p3, 0x1

    new-array v3, v3, [F

    add-int/lit8 v4, p3, 0x1

    new-array v4, v4, [F

    add-int/lit8 v5, p3, 0x1

    new-array v5, v5, [F

    add-int/lit8 v6, p3, 0x1

    new-array v6, v6, [I

    add-int/lit8 v7, p3, 0x1

    new-array v7, v7, [I

    add-int/lit8 v8, p3, 0x1

    new-array v8, v8, [I

    iget-object v9, p0, Landroid/support/v4/widget/z;->d:[F

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/v4/widget/z;->d:[F

    iget-object v10, p0, Landroid/support/v4/widget/z;->d:[F

    array-length v10, v10

    invoke-static {v9, v0, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->e:[F

    iget-object v10, p0, Landroid/support/v4/widget/z;->e:[F

    array-length v10, v10

    invoke-static {v9, v0, v3, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->f:[F

    iget-object v10, p0, Landroid/support/v4/widget/z;->f:[F

    array-length v10, v10

    invoke-static {v9, v0, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->g:[F

    iget-object v10, p0, Landroid/support/v4/widget/z;->g:[F

    array-length v10, v10

    invoke-static {v9, v0, v5, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->h:[I

    iget-object v10, p0, Landroid/support/v4/widget/z;->h:[I

    array-length v10, v10

    invoke-static {v9, v0, v6, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->i:[I

    iget-object v10, p0, Landroid/support/v4/widget/z;->i:[I

    array-length v10, v10

    invoke-static {v9, v0, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Landroid/support/v4/widget/z;->j:[I

    iget-object v10, p0, Landroid/support/v4/widget/z;->j:[I

    array-length v10, v10

    invoke-static {v9, v0, v8, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/z;->d:[F

    iput-object v3, p0, Landroid/support/v4/widget/z;->e:[F

    iput-object v4, p0, Landroid/support/v4/widget/z;->f:[F

    iput-object v5, p0, Landroid/support/v4/widget/z;->g:[F

    iput-object v6, p0, Landroid/support/v4/widget/z;->h:[I

    iput-object v7, p0, Landroid/support/v4/widget/z;->i:[I

    iput-object v8, p0, Landroid/support/v4/widget/z;->j:[I

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/z;->d:[F

    iget-object v3, p0, Landroid/support/v4/widget/z;->f:[F

    aput p1, v3, p3

    aput p1, v2, p3

    iget-object v2, p0, Landroid/support/v4/widget/z;->e:[F

    iget-object v3, p0, Landroid/support/v4/widget/z;->g:[F

    aput p2, v3, p3

    aput p2, v2, p3

    iget-object v2, p0, Landroid/support/v4/widget/z;->h:[I

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object v5, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/z;->o:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    move v0, v1

    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/z;->o:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v5, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/widget/z;->o:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    iget-object v3, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget v5, p0, Landroid/support/v4/widget/z;->o:I

    sub-int/2addr v3, v5

    if-le v4, v3, :cond_6

    or-int/lit8 v0, v0, 0x8

    :cond_6
    aput v0, v2, p3

    iget v0, p0, Landroid/support/v4/widget/z;->k:I

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/z;->k:I

    return-void
.end method

.method private a(FFII)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/z;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/z;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/z;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Landroid/support/v4/widget/z;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Landroid/support/v4/widget/z;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/support/v4/widget/z;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/z;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/z;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, p1, v1

    sub-int v2, p2, v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v1}, Landroid/support/v4/widget/p;->c()V

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->c(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    iget v4, p0, Landroid/support/v4/widget/z;->n:F

    float-to-int v4, v4

    iget v5, p0, Landroid/support/v4/widget/z;->m:F

    float-to-int v5, v5

    invoke-static {p3, v4, v5}, Landroid/support/v4/widget/z;->b(III)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/z;->n:F

    float-to-int v5, v5

    iget v6, p0, Landroid/support/v4/widget/z;->m:F

    float-to-int v6, v6

    invoke-static {p4, v5, v6}, Landroid/support/v4/widget/z;->b(III)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    iget-object v6, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v6, v3}, Landroid/support/v4/widget/ab;->c(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v1, v4, v3}, Landroid/support/v4/widget/z;->a(III)I

    iget-object v1, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-direct {p0, v2, v5, v0}, Landroid/support/v4/widget/z;->a(III)I

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    iget-object v1, v0, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/q;

    iget-object v0, v0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->c(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;F)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->c(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/z;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private static b(III)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-le v0, p2, :cond_2

    if-gtz p0, :cond_0

    neg-int p2, p2

    goto :goto_0

    :cond_2
    move p2, p0

    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/z;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/z;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/z;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/z;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/z;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ab;->a(II)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/z;->d:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->d:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->i:[I

    aput v2, v0, p1

    iget-object v0, p0, Landroid/support/v4/widget/z;->j:[I

    aput v2, v0, p1

    iget v0, p0, Landroid/support/v4/widget/z;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/z;->k:I

    goto :goto_0
.end method

.method private b(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/z;->c:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ab;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Landroid/support/v4/widget/z;->c:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/z;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v4/widget/z;->a:I

    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->a(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-static {p1}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/z;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Landroid/support/v4/widget/z;->g:[F

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/widget/z;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/z;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ab;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/z;->n:F

    iget v2, p0, Landroid/support/v4/widget/z;->m:F

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/z;->a(FFF)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/z;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ab;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/z;->n:F

    iget v3, p0, Landroid/support/v4/widget/z;->m:F

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/z;->a(FFF)F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->a(F)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/z;->p:I

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    iput p2, p0, Landroid/support/v4/widget/z;->c:I

    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ab;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->c(I)V

    return-void
.end method

.method public final a(II)Z
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/widget/z;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/z;->c:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ab;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/z;->c:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ab;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/z;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/view/w;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v2, v0, :cond_7

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/z;->a(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0, v2, v4}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/z;->h:[I

    aget v2, v2, v4

    iget v3, p0, Landroid/support/v4/widget/z;->p:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget v3, p0, Landroid/support/v4/widget/z;->p:I

    invoke-virtual {v2}, Landroid/support/v4/widget/ab;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v3}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v3}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-direct {p0, v4, v3, v2}, Landroid/support/v4/widget/z;->a(FFI)V

    iget v5, p0, Landroid/support/v4/widget/z;->a:I

    if-nez v5, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/z;->h:[I

    aget v2, v3, v2

    iget v3, p0, Landroid/support/v4/widget/z;->p:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget v3, p0, Landroid/support/v4/widget/z;->p:I

    invoke-virtual {v2}, Landroid/support/v4/widget/ab;->b()V

    goto :goto_0

    :cond_4
    iget v5, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v5, v6, :cond_2

    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_6

    invoke-static {p1, v2}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-static {p1, v2}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v2}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    iget-object v7, p0, Landroid/support/v4/widget/z;->d:[F

    aget v7, v7, v4

    sub-float v7, v5, v7

    iget-object v8, p0, Landroid/support/v4/widget/z;->e:[F

    aget v8, v8, v4

    sub-float v8, v6, v8

    invoke-direct {p0, v7, v8, v4}, Landroid/support/v4/widget/z;->b(FFI)V

    iget v8, p0, Landroid/support/v4/widget/z;->a:I

    if-eq v8, v0, :cond_6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/z;->a(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/z;->b(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/view/View;II)Z
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/z;->c:I

    invoke-direct {p0, p2, p3, v1, v1}, Landroid/support/v4/widget/z;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->o:I

    return v0
.end method

.method public final b(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/support/v4/view/w;->a(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;)I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/z;->a(FFI)V

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/z;->h:[I

    aget v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/z;->p:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget v1, p0, Landroid/support/v4/widget/z;->p:I

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v3}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v3}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/widget/z;->a(FFI)V

    iget v3, p0, Landroid/support/v4/widget/z;->a:I

    if-nez v3, :cond_3

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    iget-object v1, p0, Landroid/support/v4/widget/z;->h:[I

    aget v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/z;->p:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget v1, p0, Landroid/support/v4/widget/z;->p:I

    invoke-virtual {v0}, Landroid/support/v4/widget/ab;->b()V

    goto :goto_0

    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-static {v3, v1, v2}, Landroid/support/v4/widget/z;->b(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v1, v7, :cond_8

    iget v0, p0, Landroid/support/v4/widget/z;->c:I

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget-object v2, p0, Landroid/support/v4/widget/z;->f:[F

    iget v3, p0, Landroid/support/v4/widget/z;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/z;->g:[F

    iget v3, p0, Landroid/support/v4/widget/z;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v2, v0

    iget-object v0, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v6, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v5, v6, v0}, Landroid/support/v4/widget/ab;->b(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    sub-int v3, v0, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/ab;->d(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v2, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ab;->a(Landroid/view/View;I)V

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_a

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/z;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Landroid/support/v4/widget/z;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {p0, v5, v6, v2}, Landroid/support/v4/widget/z;->b(FFI)V

    iget v6, p0, Landroid/support/v4/widget/z;->a:I

    if-eq v6, v7, :cond_a

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Landroid/support/v4/widget/z;->a(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v2}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/widget/z;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v3, v7, :cond_b

    iget v3, p0, Landroid/support/v4/widget/z;->c:I

    if-ne v2, v3, :cond_b

    invoke-static {p1}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_f

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/widget/z;->c:I

    if-eq v4, v5, :cond_c

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/z;->b(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-direct {p0, v5, v4}, Landroid/support/v4/widget/z;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v0, p0, Landroid/support/v4/widget/z;->c:I

    :goto_3
    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Landroid/support/v4/widget/z;->i()V

    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v4/widget/z;->b(I)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_5
    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v0, v7, :cond_d

    invoke-direct {p0}, Landroid/support/v4/widget/z;->i()V

    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v0, v7, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->a(F)V

    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/z;->b:I

    return v0
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/z;->c:I

    iget-object v0, p0, Landroid/support/v4/widget/z;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/z;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/z;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Landroid/support/v4/widget/z;->k:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/z;->l:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/widget/z;->e()V

    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v0}, Landroid/support/v4/widget/p;->a()I

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v0}, Landroid/support/v4/widget/p;->b()I

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v0}, Landroid/support/v4/widget/p;->c()V

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v0}, Landroid/support/v4/widget/p;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v1}, Landroid/support/v4/widget/p;->b()I

    iget-object v1, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v2, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/ab;->a(Landroid/view/View;I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/z;->c(I)V

    return-void
.end method

.method public final g()Z
    .locals 7

    const/4 v6, 0x2

    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    iget-object v1, v0, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/q;

    iget-object v0, v0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v1}, Landroid/support/v4/widget/q;->d()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v1}, Landroid/support/v4/widget/p;->a()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v2}, Landroid/support/v4/widget/p;->b()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    if-eqz v3, :cond_0

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/z;->r:Landroid/support/v4/widget/ab;

    iget-object v4, p0, Landroid/support/v4/widget/z;->s:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/widget/ab;->a(Landroid/view/View;I)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    iget-object v4, v3, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/q;

    iget-object v3, v3, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v4}, Landroid/support/v4/widget/q;->e()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    iget-object v3, v1, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/q;

    iget-object v1, v1, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v3}, Landroid/support/v4/widget/q;->f()I

    move-result v1

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    invoke-virtual {v0}, Landroid/support/v4/widget/p;->c()V

    iget-object v0, p0, Landroid/support/v4/widget/z;->q:Landroid/support/v4/widget/p;

    iget-object v1, v0, Landroid/support/v4/widget/p;->b:Landroid/support/v4/widget/q;

    iget-object v0, v0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v1}, Landroid/support/v4/widget/q;->a()Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/z;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/z;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget v0, p0, Landroid/support/v4/widget/z;->a:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/z;->d:[F

    array-length v4, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_4

    iget v2, p0, Landroid/support/v4/widget/z;->k:I

    shl-int v5, v0, v3

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/z;->f:[F

    aget v2, v2, v3

    iget-object v5, p0, Landroid/support/v4/widget/z;->d:[F

    aget v5, v5, v3

    sub-float/2addr v2, v5

    iget-object v5, p0, Landroid/support/v4/widget/z;->g:[F

    aget v5, v5, v3

    iget-object v6, p0, Landroid/support/v4/widget/z;->e:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    mul-float/2addr v2, v2

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Landroid/support/v4/widget/z;->b:I

    iget v6, p0, Landroid/support/v4/widget/z;->b:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    :goto_3
    return v0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method
