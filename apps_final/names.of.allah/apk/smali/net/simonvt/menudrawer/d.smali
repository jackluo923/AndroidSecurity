.class final Lnet/simonvt/menudrawer/d;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Lnet/simonvt/menudrawer/e;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/simonvt/menudrawer/d;-><init>(Lnet/simonvt/menudrawer/e;)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 3

    const/high16 v2, -0x1000000

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/simonvt/menudrawer/d;-><init>(Lnet/simonvt/menudrawer/e;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v0, v0, Lnet/simonvt/menudrawer/e;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v0, v0, Lnet/simonvt/menudrawer/e;->b:I

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/d;->invalidateSelf()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iput v2, v1, Lnet/simonvt/menudrawer/e;->b:I

    iput v2, v0, Lnet/simonvt/menudrawer/e;->a:I

    :cond_1
    return-void
.end method

.method private constructor <init>(Lnet/simonvt/menudrawer/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/simonvt/menudrawer/d;->b:Landroid/graphics/Paint;

    new-instance v0, Lnet/simonvt/menudrawer/e;

    invoke-direct {v0, p1}, Lnet/simonvt/menudrawer/e;-><init>(Lnet/simonvt/menudrawer/e;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/menudrawer/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/d;-><init>(Lnet/simonvt/menudrawer/e;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v0, v0, Lnet/simonvt/menudrawer/e;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v1, v1, Lnet/simonvt/menudrawer/e;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v1, v1, Lnet/simonvt/menudrawer/e;->c:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/d;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lnet/simonvt/menudrawer/e;->c:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v0, v0, Lnet/simonvt/menudrawer/e;->b:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAlpha(I)V
    .locals 4

    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v1, v1, Lnet/simonvt/menudrawer/e;->a:I

    ushr-int/lit8 v1, v1, 0x18

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v1, v1, Lnet/simonvt/menudrawer/e;->b:I

    iget-object v2, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget-object v3, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v3, v3, Lnet/simonvt/menudrawer/e;->a:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    iput v0, v2, Lnet/simonvt/menudrawer/e;->b:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/d;->a:Lnet/simonvt/menudrawer/e;

    iget v0, v0, Lnet/simonvt/menudrawer/e;->b:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/d;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
