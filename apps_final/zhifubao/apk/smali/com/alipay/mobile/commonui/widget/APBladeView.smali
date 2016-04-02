.class public Lcom/alipay/mobile/commonui/widget/APBladeView;
.super Landroid/view/View;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;

.field protected b:[Ljava/lang/String;

.field private c:Landroid/widget/PopupWindow;

.field choose:I

.field private d:Landroid/os/Handler;

.field dismissRunnable:Ljava/lang/Runnable;

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APBladeView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APBladeView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APBladeView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->a:Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->a:Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APBladeView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iput-boolean v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    if-eq v2, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->a(I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->invalidate()V

    goto :goto_0

    :pswitch_1
    if-eq v2, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/APBladeView;->a(I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->invalidate()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->showBkg:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    array-length v0, v0

    div-int v3, v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#999999"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0x190

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/ui/R$dimen;->letters_item_little_fontsize:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_1
    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->choose:I

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#3399ff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-int v5, v3, v0

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->b:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/ui/R$dimen;->letters_item_fontsize:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APBladeView;->a:Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;

    return-void
.end method
