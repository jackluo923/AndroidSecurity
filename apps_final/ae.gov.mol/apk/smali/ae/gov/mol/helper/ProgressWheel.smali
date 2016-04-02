.class public Lae/gov/mol/helper/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field public progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinHandler:Landroid/os/Handler;

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textGot:Ljava/lang/String;

.field private textLeft:Ljava/lang/String;

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I

.field private textTotal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->fullRadius:I

    .line 28
    const/16 v0, 0x50

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    .line 29
    const/16 v0, 0x3c

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    .line 30
    iput v3, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    .line 31
    iput v3, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    .line 32
    iput v3, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    .line 35
    iput v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    .line 36
    iput v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    .line 37
    iput v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    .line 38
    iput v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    .line 41
    const/high16 v0, -0x56000000

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    .line 42
    iput v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    .line 43
    const v0, -0x55222223

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    .line 44
    const/high16 v0, -0x1000000

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    .line 61
    iput v1, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    .line 62
    new-instance v0, Lae/gov/mol/helper/ProgressWheel$1;

    invoke-direct {v0, p0}, Lae/gov/mol/helper/ProgressWheel$1;-><init>(Lae/gov/mol/helper/ProgressWheel;)V

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    .line 79
    iput v1, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 80
    iput-boolean v1, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->text:Ljava/lang/String;

    .line 84
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textTotal:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textGot:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textLeft:Ljava/lang/String;

    .line 126
    sget-object v0, Lae/gov/mol/R$styleable;->ProgressWheel:[I

    .line 125
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/gov/mol/helper/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/ProgressWheel;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method static synthetic access$1(Lae/gov/mol/helper/ProgressWheel;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/ProgressWheel;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    return v0
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 197
    const/16 v0, 0x9

    .line 198
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    .line 200
    const/4 v0, 0x5

    .line 201
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    .line 203
    const/4 v0, 0x6

    .line 204
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    int-to-float v1, v1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    .line 206
    const/4 v0, 0x7

    .line 207
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    .line 208
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    if-gez v0, :cond_0

    .line 209
    iput v2, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    .line 212
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    .line 214
    const/16 v0, 0xa

    .line 215
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    int-to-float v1, v1

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    .line 217
    const/4 v0, 0x2

    .line 218
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    int-to-float v1, v1

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    .line 220
    const/4 v0, 0x1

    .line 221
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    .line 224
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 228
    :cond_1
    const/4 v0, 0x4

    .line 229
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    .line 228
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    .line 231
    const/16 v0, 0x8

    .line 232
    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    .line 233
    return-void
.end method

.method private setupBounds()V
    .locals 6

    .prologue
    .line 173
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    .line 174
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    .line 175
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    .line 176
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    .line 179
    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    .line 180
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 181
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 184
    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    iget v3, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 185
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 186
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 183
    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 188
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->fullRadius:I

    .line 189
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->fullRadius:I

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    .line 190
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextGot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textGot:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    return v0
.end method

.method public getTextTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textTotal:Ljava/lang/String;

    return-object v0
.end method

.method public incrementProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iput-boolean v3, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    .line 329
    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 139
    invoke-direct {p0}, Lae/gov/mol/helper/ProgressWheel;->setupBounds()V

    .line 140
    invoke-direct {p0}, Lae/gov/mol/helper/ProgressWheel;->setupPaints()V

    .line 141
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->invalidate()V

    .line 142
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    iget-boolean v0, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    int-to-float v3, v0

    .line 246
    iget-object v5, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 245
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 254
    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v11

    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 255
    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    int-to-float v2, v2

    .line 256
    iget-object v3, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 253
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v11

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 261
    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v11

    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 262
    iget v2, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    .line 263
    iget-object v3, p0, Lae/gov/mol/helper/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 260
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, "offsetNum":I
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textTotal:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v0, v4

    :goto_1
    if-lt v0, v2, :cond_1

    .line 276
    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textGot:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v0, v4

    :goto_2
    if-lt v0, v2, :cond_2

    .line 285
    const/4 v7, 0x0

    .line 286
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->textLeft:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-lt v4, v1, :cond_3

    .line 295
    return-void

    .line 248
    .end local v7    # "offsetNum":I
    :cond_0
    iget-object v1, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    int-to-float v3, v0

    iget-object v5, p0, Lae/gov/mol/helper/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 268
    .restart local v7    # "offsetNum":I
    :cond_1
    aget-object v8, v1, v0

    .line 269
    .local v8, "s":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float v6, v3, v11

    .line 270
    .local v6, "offset":F
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v3, v6

    .line 271
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v9, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    mul-int/2addr v9, v7

    add-int/2addr v5, v9

    .line 272
    iget-object v9, p0, Lae/gov/mol/helper/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    div-int/lit8 v10, v10, 0x2

    mul-int/2addr v9, v10

    .line 271
    sub-int/2addr v5, v9

    int-to-float v5, v5

    .line 272
    iget-object v9, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 270
    invoke-virtual {p1, v8, v3, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    add-int/lit8 v7, v7, 0x1

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v6    # "offset":F
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    aget-object v8, v1, v0

    .line 278
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float v6, v3, v11

    .line 279
    .restart local v6    # "offset":F
    iget-object v3, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iget v5, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    mul-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 280
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    iget v9, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    mul-int/2addr v9, v7

    add-int/2addr v5, v9

    .line 281
    iget-object v9, p0, Lae/gov/mol/helper/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    div-int/lit8 v10, v10, 0x2

    mul-int/2addr v9, v10

    .line 280
    sub-int/2addr v5, v9

    int-to-float v5, v5

    .line 281
    iget-object v9, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 279
    invoke-virtual {p1, v8, v3, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    add-int/lit8 v7, v7, 0x1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 286
    .end local v6    # "offset":F
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    aget-object v8, v0, v4

    .line 287
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v2, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float v6, v2, v11

    .line 288
    .restart local v6    # "offset":F
    iget-object v2, p0, Lae/gov/mol/helper/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 289
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v6

    iget v5, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    mul-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 290
    iget-object v5, p0, Lae/gov/mol/helper/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget v9, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    div-int/lit8 v9, v9, 0x2

    mul-int/2addr v5, v9

    int-to-float v5, v5

    .line 289
    sub-float/2addr v3, v5

    .line 290
    iget-object v5, p0, Lae/gov/mol/helper/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 288
    invoke-virtual {p1, v8, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    add-int/lit8 v7, v7, 0x1

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method public resetCount()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 302
    const-string v0, "0%"

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lae/gov/mol/helper/ProgressWheel;->invalidate()V

    .line 304
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .prologue
    .line 426
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->barColor:I

    .line 427
    return-void
.end method

.method public setBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 370
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->barLength:I

    .line 371
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "barWidth"    # I

    .prologue
    .line 378
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->barWidth:I

    .line 379
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0
    .param p1, "circleColor"    # I

    .prologue
    .line 434
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->circleColor:I

    .line 435
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .param p1, "circleRadius"    # I

    .prologue
    .line 362
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->circleRadius:I

    .line 363
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 483
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->delayMillis:I

    .line 484
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 402
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingBottom:I

    .line 403
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 410
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingLeft:I

    .line 411
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 418
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingRight:I

    .line 419
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 394
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->paddingTop:I

    .line 395
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 338
    iput-boolean v1, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    .line 339
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 340
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    return-void
.end method

.method public setRimColor(I)V
    .locals 0
    .param p1, "rimColor"    # I

    .prologue
    .line 442
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->rimColor:I

    .line 443
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 451
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 452
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0
    .param p1, "rimWidth"    # I

    .prologue
    .line 475
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->rimWidth:I

    .line 476
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0
    .param p1, "spinSpeed"    # I

    .prologue
    .line 467
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->spinSpeed:I

    .line 468
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lae/gov/mol/helper/ProgressWheel;->text:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->text:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 459
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->textColor:I

    .line 460
    return-void
.end method

.method public setTextGot(Ljava/lang/String;)V
    .locals 0
    .param p1, "textGot"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/helper/ProgressWheel;->textGot:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTextLeft(Ljava/lang/String;)V
    .locals 0
    .param p1, "textLeft"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lae/gov/mol/helper/ProgressWheel;->textLeft:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 386
    iput p1, p0, Lae/gov/mol/helper/ProgressWheel;->textSize:I

    .line 387
    return-void
.end method

.method public setTextTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "textTotal"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lae/gov/mol/helper/ProgressWheel;->textTotal:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    .line 321
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    iput-boolean v1, p0, Lae/gov/mol/helper/ProgressWheel;->isSpinning:Z

    .line 311
    iput v1, p0, Lae/gov/mol/helper/ProgressWheel;->progress:I

    .line 312
    iget-object v0, p0, Lae/gov/mol/helper/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    return-void
.end method
