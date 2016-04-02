.class public Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
.super Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;
.source "BadgeView.java"


# static fields
.field public static STYLE_HUI:Ljava/lang/String;

.field public static STYLE_NEW:Ljava/lang/String;

.field public static STYLE_NUM:Ljava/lang/String;

.field public static STYLE_POINT:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

.field private b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

.field private c:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;

.field private d:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

.field private e:I

.field protected pointImageView:Landroid/widget/ImageView;

.field protected txtTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "point"

    sput-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "new"

    sput-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "num"

    sput-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "hui"

    sput-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_HUI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NONE:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->d:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 51
    iput v3, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->e:I

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$layout;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget v0, Lcom/alipay/android/phone/mobilecommon/badge/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/alipay/android/phone/mobilecommon/badge/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    .line 59
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/badge/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private a(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    invoke-interface {v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getTextDpSize()I

    move-result v1

    int-to-float v1, v1

    .line 180
    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 190
    :cond_2
    :goto_2
    if-gtz p2, :cond_5

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_2

    .line 185
    sget v2, Lcom/alipay/android/phone/mobilecommon/badge/R$dimen;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 194
    :cond_5
    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->POINT:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    if-ne v1, p1, :cond_8

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    invoke-interface {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getRedPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    :cond_6
    if-eqz v0, :cond_7

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$drawable;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 203
    :cond_8
    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NUM:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    if-ne v1, p1, :cond_e

    .line 204
    if-lez p2, :cond_b

    const/16 v1, 0x64

    if-ge p2, v1, :cond_b

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    :cond_9
    if-eqz v0, :cond_a

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 213
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$drawable;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 216
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    :cond_c
    if-eqz v0, :cond_d

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 224
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$drawable;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 227
    :cond_e
    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NEW:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    if-ne v1, p1, :cond_11

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    :cond_f
    if-eqz v0, :cond_10

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 235
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$drawable;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 237
    :cond_11
    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->HUI:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    if-ne v1, p1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "\u60e0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_HUI:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;->getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    :cond_12
    if-eqz v0, :cond_13

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 245
    :cond_13
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->txtTextView:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/mobilecommon/badge/R$drawable;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    return-void
.end method


# virtual methods
.method public getBadgeStyle()Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->d:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    return-object v0
.end method

.method public getMsgCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->e:I

    return v0
.end method

.method public getResolveDelegate()Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    return-object v0
.end method

.method public getStyleDelegate()Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    return-object v0
.end method

.method protected onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->resolveMsgCount(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)I

    move-result v0

    .line 104
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->resolveStyle(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetInfo()Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->resolveMsgCount(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetInfo()Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->resolveStyle(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveMsgCount(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;->resolveMsgCount(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)I

    move-result v0

    .line 290
    :goto_0
    return v0

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCount()I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveStyle(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;->resolveStyle(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 260
    :cond_0
    if-eqz p1, :cond_4

    .line 261
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 262
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 264
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_2
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 266
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_3
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_HUI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 268
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_HUI:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnBadgeChangeListener(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->c:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;

    .line 98
    return-void
.end method

.method public setResolveDelegate(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 78
    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeController()Lcom/alipay/mobile/mpass/badge/IBadgeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeController()Lcom/alipay/mobile/mpass/badge/IBadgeController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/mpass/badge/IBadgeController;->requestWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 82
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->d:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->e:I

    if-eq v1, p2, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStyleAndMsgCount:style="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msgCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->d:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    .line 136
    iput p2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->e:I

    .line 138
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->c:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->c:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;->onBadgeChange(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 142
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_3
    new-instance v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;-><init>(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setStyleAndMsgCount(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 125
    return-void
.end method

.method public setStyleDelegate(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 90
    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeController()Lcom/alipay/mobile/mpass/badge/IBadgeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getBadgeController()Lcom/alipay/mobile/mpass/badge/IBadgeController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/mpass/badge/IBadgeController;->requestWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 94
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
