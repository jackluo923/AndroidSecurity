.class public Lcom/alipay/android/app/display/uielement/ElementStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/uielement/ElementStyle$1;
    }
.end annotation


# instance fields
.field private final a:F

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:F

.field private i:I

.field private j:I

.field private k:[I

.field private l:[I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->a:F

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const-string/jumbo v0, "left"

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->b:I

    const-string/jumbo v0, "large"

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->c:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "medium"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->d(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->b:I

    iget v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->c:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x2

    aput p4, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->o:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/ElementDimension;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementDimension;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v7, Lcom/alipay/android/app/display/uielement/ElementStyle$1;->a:[I

    invoke-virtual {v6}, Lcom/alipay/android/app/display/uielement/ElementDimension;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    invoke-static {p1, v2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/View;Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-static {v5}, Lcom/alipay/android/app/display/uielement/ElementDimension;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementDimension;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v7, Lcom/alipay/android/app/display/uielement/ElementStyle$1;->a:[I

    invoke-virtual {v6}, Lcom/alipay/android/app/display/uielement/ElementDimension;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_1

    invoke-static {p1, v5}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/View;Ljava/lang/String;)I

    move-result v4

    move v3, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :pswitch_0
    move v0, v1

    move v2, v3

    goto :goto_0

    :pswitch_1
    move v2, v4

    goto :goto_0

    :pswitch_2
    move v4, v3

    move v3, v1

    goto :goto_1

    :pswitch_3
    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V
    .locals 4

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->h:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->j:I

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->i:I

    iget v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->j:I

    or-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/app/Activity;)F

    move-result v2

    if-eqz p3, :cond_6

    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "<p>"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "</p>"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->f:Z

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/CharSequence;I)Landroid/text/Spanned;

    move-result-object v1

    :cond_7
    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->g:Z

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/UIUtils;->b(Ljava/lang/CharSequence;I)Landroid/text/Spanned;

    move-result-object v1

    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    move-object v1, p2

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "text-color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "font-style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "text-decoration"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "background-image"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->d:Ljava/lang/String;

    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->b:I

    const-string/jumbo v0, "valign"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->c:I

    const-string/jumbo v0, "margin"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    iget-object v4, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    aput v5, v6, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_2
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v0

    :goto_3
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v0, v3

    iget-object v4, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_4

    aget-object v1, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v5, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->m:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_5
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->n:Ljava/lang/String;

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->o:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/util/UIUtils;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->e:I

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method protected final b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->d:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/t;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/display/uielement/t;-><init>(Lcom/alipay/android/app/display/uielement/ElementStyle;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/util/UIUtils;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->h:F

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->k:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/util/UIUtils;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->i:I

    return-void
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/util/UIUtils;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->j:I

    return-void
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->l:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method protected final e(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "underline"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->f:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "strike"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->g:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->f:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->g:Z

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->b:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/ElementStyle;->e:I

    return v0
.end method
