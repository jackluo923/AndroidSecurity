.class public final Lcom/appyet/f/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[C

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appyet/f/j;->a:Ljava/lang/String;

    new-array v0, v5, [C

    sput-object v0, Lcom/appyet/f/j;->b:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    sget-object v4, Lcom/appyet/f/j;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    sget-object v4, Lcom/appyet/f/j;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    sget-object v4, Lcom/appyet/f/j;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/appyet/f/j;->b:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcom/appyet/f/j;->b:[C

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/appyet/f/j;->c:[B

    move v0, v1

    :goto_3
    sget-object v2, Lcom/appyet/f/j;->c:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/appyet/f/j;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, v5, :cond_4

    sget-object v0, Lcom/appyet/f/j;->c:[B

    sget-object v2, Lcom/appyet/f/j;->b:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    array-length v1, p0

    sget-object v2, Lcom/appyet/f/j;->a:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x39

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v3, v1, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sub-int v4, v1, v0

    const/16 v5, 0x39

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v0, 0x0

    invoke-static {p0, v5, v4}, Lcom/appyet/f/j;->a([BII)[C

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 13

    const/16 v4, 0x41

    const/16 v12, 0x7f

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v6, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v3, 0x20

    if-eq v5, v3, :cond_0

    const/16 v3, 0xd

    if-eq v5, v3, :cond_0

    const/16 v3, 0xa

    if-eq v5, v3, :cond_0

    const/16 v3, 0x9

    if-eq v5, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-char v5, v6, v2

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v0, v2, 0x0

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v6, v0

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v7, v0, 0x4

    new-array v8, v7, [B

    add-int/lit8 v9, v2, 0x0

    move v5, v1

    :goto_2
    if-ge v1, v9, :cond_a

    add-int/lit8 v2, v1, 0x1

    aget-char v10, v6, v1

    add-int/lit8 v0, v2, 0x1

    aget-char v11, v6, v2

    if-ge v0, v9, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v6, v0

    move v3, v0

    move v0, v1

    :goto_3
    if-ge v0, v9, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v6, v0

    move v2, v1

    :goto_4
    if-gt v10, v12, :cond_4

    if-gt v11, v12, :cond_4

    if-gt v3, v12, :cond_4

    if-le v0, v12, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v2, v0

    move v0, v4

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/appyet/f/j;->c:[B

    aget-byte v1, v1, v10

    sget-object v10, Lcom/appyet/f/j;->c:[B

    aget-byte v10, v10, v11

    sget-object v11, Lcom/appyet/f/j;->c:[B

    aget-byte v3, v11, v3

    sget-object v11, Lcom/appyet/f/j;->c:[B

    aget-byte v0, v11, v0

    if-ltz v1, :cond_8

    if-ltz v10, :cond_8

    if-ltz v3, :cond_8

    if-gez v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v11, v10, 0x4

    or-int/2addr v1, v11

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x4

    ushr-int/lit8 v11, v3, 0x2

    or-int/2addr v10, v11

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    if-ge v0, v7, :cond_c

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v10

    aput-byte v5, v8, v0

    :goto_5
    if-ge v1, v7, :cond_b

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, v8, v1

    :goto_6
    move v5, v0

    move v1, v2

    goto :goto_2

    :cond_a
    return-object v8

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    move v1, v0

    goto :goto_5
.end method

.method private static a([BII)[C
    .locals 13

    const/16 v3, 0x3d

    const/4 v1, 0x0

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [C

    add-int v8, p1, p2

    move v5, v1

    :goto_0
    if-ge p1, v8, :cond_4

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v9, v2, 0xff

    if-ge v0, v8, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    :goto_1
    if-ge v0, v8, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    and-int/lit8 v11, v0, 0x3f

    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lcom/appyet/f/j;->b:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lcom/appyet/f/j;->b:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    if-ge v5, v6, :cond_2

    sget-object v0, Lcom/appyet/f/j;->b:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v6, :cond_3

    sget-object v0, Lcom/appyet/f/j;->b:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v7, v4

    add-int/lit8 v0, v4, 0x1

    move p1, v2

    move v5, v0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    return-object v7
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/f/j;->b([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static b([B)[C
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/appyet/f/j;->a([BII)[C

    move-result-object v0

    return-object v0
.end method
