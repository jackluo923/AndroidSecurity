.class public Lorg/apache/james/mime4j/codec/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE64_PAD:B = 0x3dt

.field static final BASE64_TABLE:[B

.field private static final CRLF_SEPARATOR:[B

.field private static final DEFAULT_LINE_LENGTH:I = 0x4c

.field private static final ENCODED_BUFFER_SIZE:I = 0x800

.field private static final MASK_6BITS:I = 0x3f


# instance fields
.field private closed:Z

.field private data:I

.field private final encoded:[B

.field private final lineLength:I

.field private linePosition:I

.field private final lineSeparator:[B

.field private modulus:I

.field private position:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 37
    const-class v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-virtual {v4}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    sput-boolean v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->$assertionsDisabled:Z

    .line 43
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    sput-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    .line 48
    const/16 v4, 0x40

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    sput-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    .line 60
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    .line 63
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 64
    .local v1, "b":B
    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 66
    .restart local v0    # "arr$":[B
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    const/16 v5, 0x3d

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 43
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 48
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 98
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lineLength"    # I

    .prologue
    .line 115
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->CRLF_SEPARATOR:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I[B)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lineLength"    # I
    .param p3, "lineSeparator"    # [B

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    .line 79
    iput-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    .line 82
    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    .line 84
    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    .line 85
    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    .line 87
    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :cond_0
    if-gez p2, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->checkLineSeparator([B)V

    .line 147
    iput p2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    .line 148
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    .line 149
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    .line 153
    return-void
.end method

.method private checkLineSeparator([B)V
    .locals 7
    .param p1, "lineSeparator"    # [B

    .prologue
    .line 309
    array-length v4, p1

    const/16 v5, 0x800

    if-le v4, v5, :cond_0

    .line 310
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "line separator length exceeds 2048"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v1, v0, v2

    .line 314
    .local v1, "b":B
    sget-object v4, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_CHARS:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "line separator must not contain base64 character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v1, 0xff

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "b":B
    :cond_2
    return-void
.end method

.method private close0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writePad()V

    .line 263
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    if-lez v0, :cond_1

    .line 264
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    .line 267
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 268
    return-void
.end method

.method private flush0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 251
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    .line 255
    :cond_0
    return-void
.end method

.method private write0([BII)V
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 215
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 216
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    .line 218
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 219
    iput v9, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    .line 223
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v5, :cond_1

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v5, v6, :cond_1

    .line 226
    iput v9, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 228
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v5, v5

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 229
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v4, v0, v2

    .line 232
    .local v4, "ls":B
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v5, v6

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "arr$":[B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "ls":B
    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v5, v5

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v5, v6

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 238
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 240
    :cond_2
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v7, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v8, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v8, v8, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 241
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v7, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v8, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v8, v8, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 242
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v7, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v8, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 243
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v7, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v8, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 245
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 215
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 248
    :cond_4
    return-void
.end method

.method private writeLineSeparator()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 301
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v4, v4

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 302
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineSeparator:[B

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 305
    .local v3, "ls":B
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v3, v4, v5

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "ls":B
    :cond_1
    return-void
.end method

.method private writePad()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 273
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->lineLength:I

    if-lt v0, v1, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->writeLineSeparator()V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 282
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 284
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 285
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    .line 286
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    .line 295
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->linePosition:I

    .line 296
    return-void

    .line 288
    :cond_2
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->modulus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 291
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->data:I

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 292
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->position:I

    aput-byte v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    .line 210
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->close0()V

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->flush0()V

    .line 202
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 161
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    .line 162
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_2
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 190
    :cond_3
    if-nez p3, :cond_4

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_4
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->write0([BII)V

    goto :goto_0
.end method
