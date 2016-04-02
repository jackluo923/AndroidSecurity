.class public Lorg/ccil/cowan/tagsoup/AttributesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field a:I

.field b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method private a(Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    :goto_1
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x5

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Attempt to modify attribute at illegal index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/4 v5, 0x0

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v3, p1, 0x5

    iget v4, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aput-object v5, v1, v0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v0, v2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    aput-object v5, v0, v1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b(I)V

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    div-int/lit8 v0, v0, 0x5

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    div-int/lit8 v0, v0, 0x5

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a:I

    mul-int/lit8 v1, v0, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->b:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
