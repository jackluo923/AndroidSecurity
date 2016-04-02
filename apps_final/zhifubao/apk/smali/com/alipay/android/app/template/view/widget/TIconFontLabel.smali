.class public Lcom/alipay/android/app/template/view/widget/TIconFontLabel;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TIconFontLabel.java"


# static fields
.field private static synthetic b:[I

.field private static synthetic c:[I


# instance fields
.field protected a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 31
    return-void
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/DecorationType;->values()[Lcom/alipay/android/app/template/view/DecorationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->line_through:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->normal:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->overline:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->underline:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic d()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/OverflowType;->values()[Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->clip:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->ellipsis:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->normal:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 111
    return-void
.end method

.method final a(Landroid/app/Activity;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->getText()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-ne v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    .line 43
    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v1, v2

    .line 42
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 52
    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 53
    aget-object v1, v0, v5

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 54
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 56
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v1

    int-to-float v1, v1

    .line 45
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    .line 228
    return-void
.end method

.method public extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 127
    :cond_2
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x3

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->c()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 172
    :cond_2
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    .line 187
    if-lez v0, :cond_5

    .line 188
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v1

    .line 189
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_7

    .line 190
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 191
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 192
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 193
    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 197
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 199
    :cond_5
    return-void

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->parseGravity(Lcom/alipay/android/app/template/view/AlignType;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto/16 :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_1

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_1

    .line 171
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    goto :goto_3

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 166
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getInnerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setInnerText"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getInnerText"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "innerText"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setValue"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getValue"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 211
    const-string/jumbo v2, "value"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 212
    return-void
.end method

.method public setInnerText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->getText()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 218
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method
