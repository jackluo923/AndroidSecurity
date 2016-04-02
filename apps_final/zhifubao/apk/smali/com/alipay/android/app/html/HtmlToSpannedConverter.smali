.class final Lcom/alipay/android/app/html/HtmlToSpannedConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$a;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$b;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$h;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$i;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$j;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$k;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$l;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$URLSpanNoUnderline;,
        Lcom/alipay/android/app/html/HtmlToSpannedConverter$m;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/xml/sax/XMLReader;

.field private d:Landroid/text/SpannableStringBuilder;

.field private e:Lcom/alipay/android/app/html/Html$ImageGetter;

.field private f:Lcom/alipay/android/app/html/Html$TagHandler;

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a:[F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->h:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FLjava/lang/String;Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->g:F

    iput-object p2, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->b:Ljava/lang/String;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    iput-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->e:Lcom/alipay/android/app/html/Html$ImageGetter;

    iput-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->f:Lcom/alipay/android/app/html/Html$TagHandler;

    iput-object p3, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->c:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/html/XmlUtils;->a(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string/jumbo v0, "\n\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {p0, p1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_0

    const/16 v1, 0x21

    invoke-virtual {p0, p2, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static b(Landroid/text/SpannableStringBuilder;)V
    .locals 6

    const/16 v5, 0x21

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;

    invoke-static {p0, v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_0
    if-le v1, v2, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    :cond_0
    if-eq v2, v1, :cond_1

    check-cast v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    sget-object v4, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a:[F

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;->a(Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;)I

    move-result v0

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/text/Spanned;
    .locals 8

    const/16 v7, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->c:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->c:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

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

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, -0x2

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    aget-object v5, v2, v0

    const/16 v6, 0x33

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public final characters([CII)V
    .locals 5

    const/16 v4, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_0
    add-int v0, v1, p2

    aget-char v0, p1, v0

    if-ne v0, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    :goto_1
    if-eq v0, v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v10, 0x21

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string/jumbo v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "cite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "dfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$a;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$i;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v7, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;

    invoke-static {v7, v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v9, v8, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;

    iget-object v0, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->a:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "color"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7, v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    :goto_1
    iget-object v0, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v3, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    iget-object v0, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->g:F

    iget-object v3, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/app/html/HtmlUtils;->a(FLjava/lang/String;)I

    move-result v3

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7, v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, v6, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v3, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_f
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$b;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "tt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$h;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;

    invoke-static {v1, v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eq v3, v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;

    iget-object v4, v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/alipay/android/app/html/HtmlToSpannedConverter$URLSpanNoUnderline;

    iget-object v0, v0, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$m;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v0, "sup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$l;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "sub"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$k;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "strike"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$j;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_18

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_18

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_18

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_18

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->b(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->f:Lcom/alipay/android/app/html/Html$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->f:Lcom/alipay/android/app/html/Html$TagHandler;

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->c:Lorg/xml/sax/XMLReader;

    goto/16 :goto_0
.end method

.method public final endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public final skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final startDocument()V
    .locals 0

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$c;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "cite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "dfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$g;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$a;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$a;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$i;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$i;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "color"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "face"

    invoke-interface {p4, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "size"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    new-instance v5, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;

    invoke-direct {v5, v1, v2, v3}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v4, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$b;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$b;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "tt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$h;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$h;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "href"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    new-instance v3, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;

    invoke-direct {v3, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$m;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$m;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "sup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$l;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$l;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "sub"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$k;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$k;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "strike"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$j;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$j;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_14

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_14

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_14

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;)V

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lcom/alipay/android/app/html/HtmlToSpannedConverter$e;-><init>(I)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->e:Lcom/alipay/android/app/html/Html$ImageGetter;

    const-string/jumbo v0, ""

    const-string/jumbo v3, "src"

    invoke-interface {p4, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/alipay/android/app/html/Html$ImageGetter;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_15
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->f:Lcom/alipay/android/app/html/Html$TagHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->f:Lcom/alipay/android/app/html/Html$TagHandler;

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->d:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/html/HtmlToSpannedConverter;->c:Lorg/xml/sax/XMLReader;

    goto/16 :goto_0
.end method

.method public final startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
