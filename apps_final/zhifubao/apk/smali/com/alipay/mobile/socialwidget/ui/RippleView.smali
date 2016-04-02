.class public Lcom/alipay/mobile/socialwidget/ui/RippleView;
.super Landroid/widget/RelativeLayout;
.source "RippleView.java"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:F

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Integer;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Bitmap;

.field private v:I

.field private w:I

.field private x:F

.field private y:Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/l;-><init>(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a:Ljava/lang/Runnable;

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    .line 35
    const/16 v0, 0x258

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    .line 39
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    .line 40
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    .line 41
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->k:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->l:I

    .line 43
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    .line 44
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/l;-><init>(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a:Ljava/lang/Runnable;

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    .line 35
    const/16 v0, 0x258

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    .line 39
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    .line 40
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    .line 41
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->k:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->l:I

    .line 43
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    .line 44
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/l;-><init>(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a:Ljava/lang/Runnable;

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    .line 35
    const/16 v0, 0x258

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    .line 36
    const/16 v0, 0x46

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    .line 39
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    .line 40
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    .line 41
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->k:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->l:I

    .line 43
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    .line 44
    iput v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialwidget/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$color;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->v:I

    .line 83
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->s:Ljava/lang/Integer;

    .line 84
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->q:Ljava/lang/Boolean;

    .line 85
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->r:Ljava/lang/Boolean;

    .line 86
    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    .line 87
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    .line 88
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    .line 89
    const/4 v1, 0x7

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->w:I

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->g:Landroid/os/Handler;

    .line 91
    const/16 v1, 0x9

    const v2, 0x3f83d70a    # 1.03f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->p:F

    .line 92
    const/4 v1, 0x3

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->o:I

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->setWillNotDraw(Z)V

    .line 100
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->x:F

    .line 101
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->setDrawingCacheEnabled(Z)V

    .line 102
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->setClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->b:I

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    iput-boolean v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->u:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->invalidate()V

    .line 179
    :cond_2
    return-void
.end method

.method public final a(Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->y:Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;

    .line 355
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 107
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->i:Z

    .line 111
    iput v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->l:I

    .line 113
    iput v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->k:I

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->invalidate()V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->y:Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->y:Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;->a(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->h:F

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->x:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    add-float v3, v0, v6

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->m:F

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->n:F

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->x:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 147
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->l:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->j:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->d:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->e:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 161
    iput p1, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->b:I

    .line 162
    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/RippleView;->c:I

    .line 163
    return-void
.end method
