.class public Lcom/alipay/tag/html/Html;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    move v2, v3

    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v7, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    const-string/jumbo v5, " "

    move v6, v3

    move v1, v3

    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_3

    aget-object v8, v0, v6

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    aget-object v1, v0, v6

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    const/4 v1, 0x1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "align=\"center\" "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "align=\"right\" "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "align=\"left\" "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<div "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {p0, p1, v2, v4}, Lcom/alipay/tag/html/Html;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v1, :cond_5

    const-string/jumbo v0, "</div>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 14

    move/from16 v5, p2

    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_23

    const-class v1, Landroid/text/style/QuoteSpan;

    move/from16 v0, p3

    invoke-interface {p1, v5, v0, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v5, v3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/QuoteSpan;

    array-length v10, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_0

    const-string/jumbo v2, "<blockquote>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "<p>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v5, v3, :cond_21

    const/16 v1, 0xa

    invoke-static {p1, v1, v5, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v3

    :cond_1
    const/4 v2, 0x0

    move v8, v2

    move v9, v1

    :goto_3
    if-ge v9, v3, :cond_2

    invoke-interface {p1, v9}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v2, v9, 0x1

    move v8, v1

    move v9, v2

    goto :goto_3

    :cond_2
    sub-int v11, v9, v8

    if-ne v9, v3, :cond_d

    const/4 v1, 0x1

    move v4, v1

    :goto_4
    if-ge v5, v11, :cond_1c

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v5, v11, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v5, v7, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    const/4 v2, 0x0

    move v6, v5

    move v5, v2

    :goto_5
    array-length v2, v1

    if-ge v5, v2, :cond_10

    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/StyleSpan;

    if-eqz v2, :cond_4

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_3

    const-string/jumbo v12, "<b>"

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "<i>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/TypefaceSpan;

    if-eqz v2, :cond_5

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v2}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "monospace"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "<tt>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/SuperscriptSpan;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "<sup>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/SubscriptSpan;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "<sub>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/UnderlineSpan;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "<u>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/StrikethroughSpan;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "<strike>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/URLSpan;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "<a href=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/URLSpan;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\">"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/ImageSpan;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "<img src=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/ImageSpan;

    invoke-virtual {v2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\">"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    :cond_b
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v2, :cond_c

    const-string/jumbo v2, "<font size =\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\">"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_f

    const-string/jumbo v2, "<font color =\"#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v2

    const/high16 v12, 0x1000000

    add-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-ge v12, v13, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "0"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\">"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_5

    :cond_10
    invoke-static {p0, p1, v6, v7}, Lcom/alipay/tag/html/Html;->b(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_7
    if-ltz v5, :cond_1b

    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_11

    const-string/jumbo v2, "</font>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v2, :cond_12

    const-string/jumbo v2, "</font>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/URLSpan;

    if-eqz v2, :cond_13

    const-string/jumbo v2, "</a>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/StrikethroughSpan;

    if-eqz v2, :cond_14

    const-string/jumbo v2, "</strike>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/UnderlineSpan;

    if-eqz v2, :cond_15

    const-string/jumbo v2, "</u>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/SubscriptSpan;

    if-eqz v2, :cond_16

    const-string/jumbo v2, "</sub>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/SuperscriptSpan;

    if-eqz v2, :cond_17

    const-string/jumbo v2, "</sup>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/TypefaceSpan;

    if-eqz v2, :cond_18

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v2}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "monospace"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string/jumbo v2, "</tt>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    aget-object v2, v1, v5

    instance-of v2, v2, Landroid/text/style/StyleSpan;

    if-eqz v2, :cond_1a

    aget-object v2, v1, v5

    check-cast v2, Landroid/text/style/StyleSpan;

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_19

    const-string/jumbo v6, "</b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "</i>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto/16 :goto_7

    :cond_1b
    move v5, v7

    goto/16 :goto_4

    :cond_1c
    if-eqz v4, :cond_1d

    const-string/jumbo v1, ""

    move-object v2, v1

    :goto_8
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1e

    const-string/jumbo v1, "<br>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v5, v9

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v1, "</p>\n<p>"

    move-object v2, v1

    goto :goto_8

    :cond_1e
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1f
    const/4 v1, 0x2

    :goto_a
    if-ge v1, v8, :cond_20

    const-string/jumbo v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_21
    const-string/jumbo v1, "</p>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v10, :cond_22

    const-string/jumbo v2, "</blockquote>\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    move v5, v3

    goto/16 :goto_0

    :cond_23
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    const/16 v4, 0x20

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_7

    invoke-interface {p1, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "&lt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "&gt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "&amp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_3

    if-ge v1, v4, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_6

    :goto_2
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_5

    const-string/jumbo v1, "&nbsp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static fromHtml(FLjava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;Lcom/alipay/tag/html/Html$ImageGetter;Lcom/alipay/tag/html/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(FLjava/lang/String;Lcom/alipay/tag/html/Html$ImageGetter;Lcom/alipay/tag/html/Html$TagHandler;)Landroid/text/Spanned;
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\\r\\n"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "\\n\\r"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\\r"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "\\n"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "\r\n"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "\n\r"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "\r"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "\n"

    aput-object v3, v1, v2

    move-object v2, p1

    :goto_0
    if-ge v0, v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v0

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/alipay/ccil/cowan/tagsoup/Parser;

    invoke-direct {v5}, Lcom/alipay/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_0
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    # getter for: Lcom/alipay/tag/html/Html$HtmlParser;->a:Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;
    invoke-static {}, Lcom/alipay/tag/html/Html$HtmlParser;->access$000()Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Lcom/alipay/tag/html/HtmlToSpannedConverter;

    move v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/tag/html/HtmlToSpannedConverter;-><init>(FLjava/lang/String;Lcom/alipay/tag/html/Html$ImageGetter;Lcom/alipay/tag/html/Html$TagHandler;Lcom/alipay/ccil/cowan/tagsoup/Parser;)V

    invoke-virtual {v0}, Lcom/alipay/tag/html/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/alipay/tag/html/Html;->a(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
