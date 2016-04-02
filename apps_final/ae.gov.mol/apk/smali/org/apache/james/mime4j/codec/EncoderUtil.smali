.class public Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "EncoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;,
        Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    }
.end annotation


# static fields
.field private static final ATEXT_CHARS:Ljava/util/BitSet;

.field private static final BASE64_PAD:C = '='

.field private static final BASE64_TABLE:[B

.field private static final ENCODED_WORD_MAX_LENGTH:I = 0x4b

.field private static final ENC_WORD_PREFIX:Ljava/lang/String; = "=?"

.field private static final ENC_WORD_SUFFIX:Ljava/lang/String; = "?="

.field private static final MAX_USED_CHARACTERS:I = 0x32

.field private static final Q_REGULAR_CHARS:Ljava/util/BitSet;

.field private static final Q_RESTRICTED_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 38
    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 40
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 49
    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    .line 51
    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->initChars(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static bEncodedLength([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 518
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private static determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x1

    .line 574
    .local v0, "ascii":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 575
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 576
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 577
    .local v1, "ch":C
    const/16 v4, 0xff

    if-le v1, v4, :cond_0

    .line 578
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 584
    .end local v1    # "ch":C
    :goto_1
    return-object v4

    .line 580
    .restart local v1    # "ch":C
    :cond_0
    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    .line 581
    const/4 v0, 0x0

    .line 575
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "ch":C
    :cond_2
    if-eqz v0, :cond_3

    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    .line 588
    array-length v5, p0

    if-nez v5, :cond_0

    .line 589
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 603
    :goto_0
    return-object v5

    .line 591
    :cond_0
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_2

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 594
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_1
    const/4 v3, 0x0

    .line 595
    .local v3, "qEncoded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 596
    aget-byte v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 597
    .local v4, "v":I
    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 598
    add-int/lit8 v3, v3, 0x1

    .line 595
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    .end local v0    # "i":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "qEncoded":I
    .end local v4    # "v":I
    :cond_2
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_1

    .line 602
    .restart local v0    # "i":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "qEncoded":I
    :cond_3
    mul-int/lit8 v5, v3, 0x64

    array-length v6, p0

    div-int v1, v5, v6

    .line 603
    .local v1, "percentage":I
    const/16 v5, 0x1e

    if-le v1, v5, :cond_4

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0

    :cond_4
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->Q:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0
.end method

.method private static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 564
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 565
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 566
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 567
    return-object v1
.end method

.method public static encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isAtomPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    .end local p0    # "displayName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 112
    .restart local p0    # "displayName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localPart"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isDotAtomText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    .end local p0    # "localPart":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "localPart":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 11
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "bytes"    # [B

    .prologue
    const/4 v10, 0x0

    .line 497
    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->bEncodedLength([B)I

    move-result v2

    .line 499
    .local v2, "encodedLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    const-string v9, "?="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v5, v8, v9

    .line 501
    .local v5, "totalLength":I
    rsub-int/lit8 v8, p2, 0x4b

    if-gt v5, v8, :cond_0

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 513
    :goto_0
    return-object v8

    .line 504
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "part1":Ljava/lang/String;
    invoke-static {v3, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 506
    .local v0, "bytes1":[B
    invoke-static {p0, v3, p2, p3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "word1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "part2":Ljava/lang/String;
    invoke-static {v4, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 511
    .local v1, "bytes2":[B
    invoke-static {p0, v4, v10, p3, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "word2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static encodeB([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    const/16 v6, 0x3d

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 345
    .local v2, "idx":I
    array-length v1, p0

    .line 346
    .local v1, "end":I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_0

    .line 347
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 349
    .local v0, "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 355
    .end local v0    # "data":I
    :cond_0
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_2

    .line 356
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 357
    .restart local v0    # "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .end local v0    # "data":I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 362
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    .line 363
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    .line 364
    .restart local v0    # "data":I
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "encoding"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 307
    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x32

    if-le p2, v1, :cond_2

    .line 308
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 310
    :cond_2
    if-nez p3, :cond_3

    .line 311
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 313
    :cond_3
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "mimeCharset":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported charset"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_4
    invoke-static {p0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 321
    .local v5, "bytes":[B
    if-nez p4, :cond_5

    .line 322
    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->determineEncoding([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object p4

    .line 324
    :cond_5
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->B:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne p4, v1, :cond_6

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?B?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {v0, p0, p2, p3, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 328
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?Q?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prefix":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 329
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p2, "usedCharacters"    # I

    .prologue
    .line 179
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 182
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 18
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;
    .param p3, "usedCharacters"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "bytes"    # [B

    .prologue
    .line 523
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I

    move-result v14

    .line 525
    .local v14, "encodedLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    const-string v4, "?="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v15, v2, v4

    .line 527
    .local v15, "totalLength":I
    rsub-int/lit8 v2, p3, 0x4b

    if-gt v15, v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    :goto_0
    return-object v2

    .line 530
    :cond_0
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "part1":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v3, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .local v7, "bytes1":[B
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 532
    invoke-static/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v16

    .line 535
    .local v16, "word1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, "part2":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 537
    .local v13, "bytes2":[B
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v17

    .line 539
    .local v17, "word2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static encodeQ([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    .line 385
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v5, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 388
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 391
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 392
    aget-byte v5, p0, v1

    and-int/lit16 v4, v5, 0xff

    .line 393
    .local v4, "v":I
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 394
    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "end":I
    .end local v1    # "idx":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "v":I
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_0

    .line 395
    .restart local v0    # "end":I
    .restart local v1    # "idx":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "v":I
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 396
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hexDigit(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 400
    :cond_2
    int-to-char v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 404
    .end local v4    # "v":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static hasToBeEncoded(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x1

    .line 200
    if-nez p0, :cond_0

    .line 201
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 202
    :cond_0
    if-ltz p1, :cond_1

    const/16 v4, 0x32

    if-le p1, v4, :cond_2

    .line 203
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 205
    :cond_2
    move v2, p1

    .line 207
    .local v2, "nonWhiteSpaceCount":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 208
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 209
    .local v0, "ch":C
    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_5

    .line 210
    :cond_3
    const/4 v2, 0x0

    .line 207
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 213
    const/16 v4, 0x4d

    if-le v2, v4, :cond_7

    .line 228
    .end local v0    # "ch":C
    :cond_6
    :goto_1
    return v3

    .line 221
    .restart local v0    # "ch":C
    :cond_7
    if-lt v0, v5, :cond_6

    const/16 v4, 0x7f

    if-lt v0, v4, :cond_4

    goto :goto_1

    .line 228
    .end local v0    # "ch":C
    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hexDigit(I)C
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 607
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method private static initChars(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4
    .param p0, "specials"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/util/BitSet;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 55
    .local v0, "bs":Ljava/util/BitSet;
    const/16 v1, 0x21

    .local v1, "ch":C
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 55
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 60
    :cond_1
    return-object v0
.end method

.method private static isAtomPhrase(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, "containsAText":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 441
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 442
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 443
    .local v0, "ch":C
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    const/4 v1, 0x1

    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 446
    const/4 v1, 0x0

    .line 450
    .end local v0    # "ch":C
    .end local v1    # "containsAText":Z
    :cond_2
    return v1
.end method

.method private static isDotAtomText(Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2e

    const/4 v4, 0x0

    .line 459
    const/16 v3, 0x2e

    .line 461
    .local v3, "prev":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 462
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v4

    .line 465
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 466
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 468
    .local v0, "ch":C
    if-ne v0, v6, :cond_3

    .line 469
    if-eq v3, v6, :cond_0

    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_0

    .line 476
    :cond_2
    move v3, v0

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_3
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 479
    .end local v0    # "ch":C
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isToken(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 423
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v3

    .line 426
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 427
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 428
    .local v0, "ch":C
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->TOKEN_CHARS:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "ch":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static qEncodedLength([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "usage"    # Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    .prologue
    .line 544
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v4, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_REGULAR_CHARS:Ljava/util/BitSet;

    .line 547
    .local v2, "qChars":Ljava/util/BitSet;
    :goto_0
    const/4 v0, 0x0

    .line 549
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 550
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 551
    .local v3, "v":I
    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 549
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "count":I
    .end local v1    # "idx":I
    .end local v2    # "qChars":Ljava/util/BitSet;
    .end local v3    # "v":I
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    goto :goto_0

    .line 553
    .restart local v0    # "count":I
    .restart local v1    # "idx":I
    .restart local v2    # "qChars":Ljava/util/BitSet;
    .restart local v3    # "v":I
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 554
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 556
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 560
    .end local v3    # "v":I
    :cond_3
    return v0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string v1, "[\\\\\"]"

    const-string v2, "\\\\$0"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "escaped":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
