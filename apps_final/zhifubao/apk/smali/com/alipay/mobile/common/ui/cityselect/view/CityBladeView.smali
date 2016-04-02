.class public Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;
.super Landroid/view/View;
.source "CityBladeView.java"


# instance fields
.field b:[Ljava/lang/String;

.field choose:I

.field dismissRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mOnItemClickListener:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u70ed\u95e8"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 21
    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 22
    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 25
    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u70ed\u95e8"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 21
    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 22
    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 25
    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u70ed\u95e8"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 21
    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 22
    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    .line 25
    iput-boolean v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;-><init>(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method private performItemClicked(I)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mOnItemClickListener:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mOnItemClickListener:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;->onItemClick(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 106
    iget v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getHeight()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v5, v5

    div-int/2addr v4, v5

    .line 111
    iget-object v5, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v6, "A"

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 112
    mul-int/lit8 v6, v5, 0x3

    if-le v4, v6, :cond_0

    .line 113
    mul-int/lit8 v0, v5, 0x3

    .line 115
    iget-object v4, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v0, v4

    .line 118
    :cond_0
    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 120
    packed-switch v1, :pswitch_data_0

    .line 148
    :cond_1
    :goto_0
    return v7

    .line 122
    :pswitch_0
    iput-boolean v7, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    .line 123
    if-eq v3, v0, :cond_1

    .line 124
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 125
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->performItemClicked(I)V

    .line 126
    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 133
    :pswitch_1
    if-eq v3, v0, :cond_1

    .line 134
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 135
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->performItemClicked(I)V

    .line 136
    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 142
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    .line 144
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->dismissPopup()V

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->invalidate()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->showBkg:Z

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getHeight()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getWidth()I

    move-result v4

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    .line 61
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    const/16 v3, 0x190

    if-ge v0, v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    sget v3, Lcom/alipay/android/phone/cityselect/R$dimen;->lifepay_letters_item_little_fontsize:I

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v3, "A"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 72
    mul-int/lit8 v3, v0, 0x3

    if-le v1, v3, :cond_5

    .line 73
    mul-int/lit8 v0, v0, 0x3

    .line 76
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 77
    const-string/jumbo v3, "CityBladeView"

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "singleHeight: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    const-string/jumbo v6, "; 3 * paint.measureText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    iget-object v6, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v7, "A"

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {v1, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 82
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 100
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v3, Lcom/alipay/android/phone/cityselect/R$dimen;->lifepay_letters_item_fontsize:I

    .line 67
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#00AAEE"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->choose:I

    if-ne v1, v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v5, "#6600AAEE"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_4

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 93
    :cond_4
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 94
    mul-int v6, v0, v1

    add-int/2addr v6, v0

    int-to-float v6, v6

    .line 96
    iget-object v7, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListB(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->b:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mOnItemClickListener:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;

    .line 229
    return-void
.end method
