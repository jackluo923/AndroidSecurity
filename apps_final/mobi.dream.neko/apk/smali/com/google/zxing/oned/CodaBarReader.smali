.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:I = 0x200

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:I = 0x180

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 49
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 60
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 74
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 76
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 5
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .prologue
    .line 278
    if-eqz p0, :cond_1

    .line 279
    move-object v0, p0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 280
    .local v1, "c":C
    if-ne v1, p1, :cond_0

    .line 281
    const/4 v4, 0x1

    .line 285
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    .line 279
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private counterAppend(I)V
    .locals 4
    .param p1, "e"    # I

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v1, v2

    .line 251
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 252
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 253
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 254
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 257
    .end local v0    # "temp":[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v4, :cond_3

    .line 261
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v0

    .line 262
    .local v0, "charOffset":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v5, v5, v0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "patternSize":I
    move v2, v1

    .local v2, "j":I
    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    div-int/lit8 v5, v3, 0x2

    if-lt v4, v5, :cond_2

    .line 270
    :cond_1
    return v1

    .line 260
    .end local v2    # "j":I
    .end local v3    # "patternSize":I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 274
    .end local v0    # "charOffset":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 228
    iput v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 230
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 231
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 232
    .local v1, "end":I
    if-lt v2, v1, :cond_0

    .line 233
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 235
    :cond_0
    const/4 v3, 0x1

    .line 236
    .local v3, "isWhite":Z
    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 238
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 242
    const/4 v0, 0x1

    .line 243
    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 246
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 247
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v12, 0x2

    .line 290
    add-int/lit8 v2, p1, 0x7

    .line 291
    .local v2, "end":I
    iget v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v2, v10, :cond_1

    move v3, v9

    .line 326
    :cond_0
    :goto_0
    return v3

    .line 295
    :cond_1
    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 296
    .local v5, "maxes":[I
    new-array v6, v12, [I

    fill-array-data v6, :array_1

    .line 297
    .local v6, "mins":[I
    new-array v8, v12, [I

    fill-array-data v8, :array_2

    .line 299
    .local v8, "thresholds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v12, :cond_5

    .line 300
    add-int v4, p1, v3

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 301
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v10, v10, v4

    aget v11, v6, v3

    if-ge v10, v11, :cond_2

    .line 302
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v10, v10, v4

    aput v10, v6, v3

    .line 304
    :cond_2
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v10, v10, v4

    aget v11, v5, v3

    if-le v10, v11, :cond_3

    .line 305
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v10, v10, v4

    aput v10, v5, v3

    .line 300
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 308
    :cond_4
    aget v10, v6, v3

    aget v11, v5, v3

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    aput v10, v8, v3

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    .end local v4    # "j":I
    :cond_5
    const/16 v1, 0x80

    .line 312
    .local v1, "bitmask":I
    const/4 v7, 0x0

    .line 313
    .local v7, "pattern":I
    const/4 v3, 0x0

    :goto_3
    const/4 v10, 0x7

    if-ge v3, v10, :cond_7

    .line 314
    and-int/lit8 v0, v3, 0x1

    .line 315
    .local v0, "barOrSpace":I
    shr-int/lit8 v1, v1, 0x1

    .line 316
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v11, p1, v3

    aget v10, v10, v11

    aget v11, v8, v0

    if-le v10, v11, :cond_6

    .line 317
    or-int/2addr v7, v1

    .line 313
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 321
    .end local v0    # "barOrSpace":I
    :cond_7
    const/4 v3, 0x0

    :goto_4
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v10, v10

    if-ge v3, v10, :cond_8

    .line 322
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v10, v10, v3

    if-eq v10, v7, :cond_0

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v3, v9

    .line 326
    goto :goto_0

    .line 295
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 296
    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 297
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 20
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v10

    .line 83
    .local v10, "startOffset":I
    move v7, v10

    .line 85
    .local v7, "nextStart":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .line 88
    .local v2, "charOffset":I
    const/4 v13, -0x1

    if-ne v2, v13, :cond_1

    .line 89
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v7, v7, 0x8

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v14, v14, v2

    invoke-static {v13, v14}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 104
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v14, v7, -0x1

    aget v12, v13, v14

    .line 105
    .local v12, "trailingWhitespace":I
    const/4 v5, 0x0

    .line 106
    .local v5, "lastPatternSize":I
    const/4 v4, -0x8

    .local v4, "i":I
    :goto_1
    const/4 v13, -0x1

    if-ge v4, v13, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v14, v7, v4

    aget v13, v13, v14

    add-int/2addr v5, v13

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    .end local v4    # "i":I
    .end local v5    # "lastPatternSize":I
    .end local v12    # "trailingWhitespace":I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v7, v13, :cond_0

    goto :goto_0

    .line 113
    .restart local v4    # "i":I
    .restart local v5    # "lastPatternSize":I
    .restart local v12    # "trailingWhitespace":I
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v7, v13, :cond_4

    div-int/lit8 v13, v5, 0x2

    if-ge v12, v13, :cond_4

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 117
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 120
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    aget-char v14, v14, v15

    invoke-virtual {v13, v4, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    .line 125
    .local v11, "startchar":C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-nez v13, :cond_6

    .line 126
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 128
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 129
    .local v3, "endchar":C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-nez v13, :cond_7

    .line 130
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 134
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x3

    if-gt v13, v14, :cond_8

    .line 136
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 139
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 142
    const/4 v9, 0x0

    .line 143
    .local v9, "runningCount":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_9

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 146
    :cond_9
    int-to-float v6, v9

    .line 147
    .local v6, "left":F
    move v4, v10

    :goto_4
    add-int/lit8 v13, v7, -0x1

    if-ge v4, v13, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 150
    :cond_a
    int-to-float v8, v9

    .line 151
    .local v8, "right":F
    new-instance v13, Lcom/google/zxing/Result;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v16, v17

    sget-object v17, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v13 .. v17}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v13
.end method

.method validatePattern(I)V
    .locals 15
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v11, 0x4

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 163
    .local v10, "sizes":[I
    const/4 v11, 0x4

    new-array v1, v11, [I

    fill-array-data v1, :array_1

    .line 164
    .local v1, "counts":[I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 168
    .local v2, "end":I
    move/from16 v8, p1

    .line 169
    .local v8, "pos":I
    const/4 v3, 0x0

    .line 170
    .local v3, "i":I
    :goto_0
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 171
    .local v7, "pattern":I
    const/4 v4, 0x6

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 174
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 175
    .local v0, "category":I
    aget v11, v10, v0

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v8, v4

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v0

    .line 176
    aget v11, v1, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v0

    .line 177
    shr-int/lit8 v7, v7, 0x1

    .line 171
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 179
    .end local v0    # "category":I
    :cond_0
    if-lt v3, v2, :cond_1

    .line 187
    const/4 v11, 0x4

    new-array v5, v11, [I

    .line 188
    .local v5, "maxes":[I
    const/4 v11, 0x4

    new-array v6, v11, [I

    .line 192
    .local v6, "mins":[I
    const/4 v3, 0x0

    :goto_2
    const/4 v11, 0x2

    if-ge v3, v11, :cond_2

    .line 193
    const/4 v11, 0x0

    aput v11, v6, v3

    .line 194
    add-int/lit8 v11, v3, 0x2

    aget v12, v10, v3

    shl-int/lit8 v12, v12, 0x8

    aget v13, v1, v3

    div-int/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v10, v13

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v3, 0x2

    aget v14, v1, v14

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x1

    aput v12, v6, v11

    .line 196
    add-int/lit8 v11, v3, 0x2

    aget v11, v6, v11

    aput v11, v5, v3

    .line 197
    add-int/lit8 v11, v3, 0x2

    add-int/lit8 v12, v3, 0x2

    aget v12, v10, v12

    mul-int/lit16 v12, v12, 0x200

    add-int/lit16 v12, v12, 0x180

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    div-int/2addr v12, v13

    aput v12, v5, v11

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 183
    .end local v5    # "maxes":[I
    .end local v6    # "mins":[I
    :cond_1
    add-int/lit8 v8, v8, 0x8

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .restart local v5    # "maxes":[I
    .restart local v6    # "mins":[I
    :cond_2
    move/from16 v8, p1

    .line 202
    const/4 v3, 0x0

    .line 203
    :goto_3
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .line 204
    const/4 v4, 0x6

    :goto_4
    if-ltz v4, :cond_5

    .line 207
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 208
    .restart local v0    # "category":I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v8, v4

    aget v11, v11, v12

    shl-int/lit8 v9, v11, 0x8

    .line 209
    .local v9, "size":I
    aget v11, v6, v0

    if-lt v9, v11, :cond_3

    aget v11, v5, v0

    if-le v9, v11, :cond_4

    .line 210
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 212
    :cond_4
    shr-int/lit8 v7, v7, 0x1

    .line 204
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 214
    .end local v0    # "category":I
    .end local v9    # "size":I
    :cond_5
    if-lt v3, v2, :cond_6

    .line 219
    return-void

    .line 217
    :cond_6
    add-int/lit8 v8, v8, 0x8

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 163
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
