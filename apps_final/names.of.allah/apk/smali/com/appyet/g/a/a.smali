.class public final Lcom/appyet/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/appyet/g/a/a;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/appyet/g/a/a;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    sget-object v2, Lcom/appyet/g/a/a;->a:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    int-to-byte v3, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lcom/appyet/g/a/a;->b([B)[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/appyet/g/a/a;->a:[C

    aget-byte v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v0, 0x48

    const/16 v4, 0x47

    if-ne v3, v4, :cond_0

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Byte;)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/appyet/g/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 12

    const/4 v2, 0x0

    const-string v0, "\\r|\\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the input string must be a multiple of four."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "^[A-Za-z0-9+/]*[=]{0,3}$"

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument contains illegal characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v4, v0, [B

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    array-length v0, v6

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    aget-char v7, v6, v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    add-int/lit8 v7, v0, -0x1

    sget-object v0, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    add-int/lit8 v8, v1, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    add-int/lit8 v8, v0, -0x1

    sget-object v0, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    add-int/lit8 v9, v1, 0x2

    aget-char v9, v6, v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    add-int/lit8 v9, v0, -0x1

    sget-object v0, Lcom/appyet/g/a/a;->b:Ljava/util/HashMap;

    add-int/lit8 v10, v1, 0x3

    aget-char v10, v6, v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v10, v3, 0x1

    shl-int/lit8 v7, v7, 0x2

    ushr-int/lit8 v11, v8, 0x4

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    add-int/lit8 v7, v10, 0x1

    and-int/lit8 v3, v8, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v8, v9, 0x2

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v4, v10

    add-int/lit8 v3, v7, 0x1

    and-int/lit8 v8, v9, 0x3

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v4, v7

    add-int/lit8 v0, v1, 0x4

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "="

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v4

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/g/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([B)[B
    .locals 7

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [B

    array-length v1, p0

    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v5, v3, v0

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    array-length v0, v3

    array-length v1, p0

    sub-int/2addr v0, v1

    :goto_1
    if-lez v0, :cond_1

    array-length v1, v2

    sub-int/2addr v1, v0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method
