.class public Lorg/ccil/cowan/tagsoup/ElementType;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private h:Lorg/ccil/cowan/tagsoup/ElementType;

.field private i:Lorg/ccil/cowan/tagsoup/Schema;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->a:Ljava/lang/String;

    iput p2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->d:I

    iput p3, p0, Lorg/ccil/cowan/tagsoup/ElementType;->e:I

    iput p4, p0, Lorg/ccil/cowan/tagsoup/ElementType;->f:I

    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->g:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    iput-object p5, p0, Lorg/ccil/cowan/tagsoup/ElementType;->i:Lorg/ccil/cowan/tagsoup/Schema;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->b:Ljava/lang/String;

    invoke-static {p1}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->i:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/Schema;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "urn:x-prefix:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->g:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_2

    const-string/jumbo p3, "CDATA"

    :cond_2
    const-string/jumbo v0, "CDATA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    iget v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    add-int/lit8 v4, v0, 0x1

    if-lez v4, :cond_8

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x19

    :goto_1
    mul-int/lit8 v5, v4, 0x5

    if-ge v0, v5, :cond_6

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v5, v4, 0x5

    if-ge v0, v5, :cond_8

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_6
    new-array v0, v0, [Ljava/lang/String;

    iget v4, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-lez v4, :cond_7

    iget-object v4, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v5, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v5, v5, 0x5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iput-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    :cond_8
    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v4, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v4, v4, 0x5

    aput-object v2, v0, v4

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v2, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    aput-object v3, v0, v2

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v2, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v1, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p3, v0, v1

    iget-object v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    iget v1, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p4, v0, v1

    iget v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    goto/16 :goto_0

    :cond_9
    if-nez p3, :cond_b

    invoke-virtual {p1, v1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string/jumbo v0, "CDATA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v0, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object v6, p4

    goto :goto_3

    :cond_b
    move-object v5, p3

    goto :goto_2
.end method

.method public final a(Lorg/ccil/cowan/tagsoup/ElementType;)Z
    .locals 2

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->d:I

    iget v1, p1, Lorg/ccil/cowan/tagsoup/ElementType;->e:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/ccil/cowan/tagsoup/ElementType;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->h:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->f:I

    return v0
.end method

.method public final f()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->g:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public final g()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->h:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method
