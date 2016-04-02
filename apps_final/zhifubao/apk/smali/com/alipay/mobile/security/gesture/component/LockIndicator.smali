.class public Lcom/alipay/mobile/security/gesture/component/LockIndicator;
.super Landroid/view/View;


# static fields
.field public static MAXTOTAL:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->MAXTOTAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x28

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    iput v4, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    iput v4, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->f:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->g:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->h:I

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    iput v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    iput v5, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->f:I

    iput v5, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->g:I

    iput v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->h:I

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/alipay/mobile/a/g;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->f:I

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->g:I

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    mul-int/2addr v0, v2

    sget v2, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->MAXTOTAL:I

    if-le v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    if-ge v0, v2, :cond_0

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    if-lt v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->i:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->f:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->g:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->d:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->f:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->a:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->e:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->g:I

    iget v3, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->b:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    :goto_0
    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/security/gesture/component/LockIndicator;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
