.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 46
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 54
    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    .line 46
    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 65
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "usingCheckDigit"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 76
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 262
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 263
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_8

    .line 265
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "c":C
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    const/16 v6, 0x24

    if-eq v0, v6, :cond_0

    const/16 v6, 0x25

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_7

    .line 267
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 268
    .local v5, "next":C
    const/4 v2, 0x0

    .line 269
    .local v2, "decodedChar":C
    sparse-switch v0, :sswitch_data_0

    .line 307
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 264
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :sswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 273
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 275
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 280
    :sswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 281
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 288
    :sswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 289
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 290
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x57

    if-gt v5, v6, :cond_4

    .line 291
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 293
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 298
    :sswitch_3
    if-lt v5, v7, :cond_5

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_5

    .line 299
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 300
    :cond_5
    if-ne v5, v8, :cond_6

    .line 301
    const/16 v2, 0x3a

    goto :goto_1

    .line 303
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 311
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 314
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 175
    .local v6, "width":I
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 177
    .local v5, "rowOffset":I
    const/4 v0, 0x0

    .line 178
    .local v0, "counterPosition":I
    move v4, v5

    .line 179
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 180
    .local v2, "isWhite":Z
    array-length v3, p1

    .line 182
    .local v3, "patternLength":I
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 183
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_0

    .line 184
    aget v9, p1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, p1, v0

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 188
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    if-ne v9, v10, :cond_1

    sub-int v9, v1, v4

    shr-int/lit8 v9, v9, 0x1

    sub-int v9, v4, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9, v4, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 190
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v1, v9, v7

    return-object v9

    .line 192
    :cond_1
    aget v9, p1, v8

    aget v10, p1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 193
    add-int/lit8 v9, v3, -0x2

    invoke-static {p1, v11, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    add-int/lit8 v9, v3, -0x2

    aput v8, p1, v9

    .line 195
    add-int/lit8 v9, v3, -0x1

    aput v8, p1, v9

    .line 196
    add-int/lit8 v0, v0, -0x1

    .line 200
    :goto_2
    aput v7, p1, v0

    .line 201
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 201
    goto :goto_3

    .line 204
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 254
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 255
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toNarrowWidePattern([I)I
    .locals 15
    .param p0, "counters"    # [I

    .prologue
    const/4 v14, 0x3

    const/4 v11, -0x1

    .line 210
    array-length v7, p0

    .line 211
    .local v7, "numCounters":I
    const/4 v5, 0x0

    .line 214
    .local v5, "maxNarrowCounter":I
    :cond_0
    const v6, 0x7fffffff

    .line 215
    .local v6, "minCounter":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 216
    .local v1, "counter":I
    if-ge v1, v6, :cond_1

    if-le v1, v5, :cond_1

    .line 217
    move v6, v1

    .line 215
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "counter":I
    :cond_2
    move v5, v6

    .line 221
    const/4 v10, 0x0

    .line 222
    .local v10, "wideCounters":I
    const/4 v9, 0x0

    .line 223
    .local v9, "totalWideCountersWidth":I
    const/4 v8, 0x0

    .line 224
    .local v8, "pattern":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 225
    aget v1, p0, v2

    .line 226
    .restart local v1    # "counter":I
    aget v12, p0, v2

    if-le v12, v5, :cond_3

    .line 227
    const/4 v12, 0x1

    add-int/lit8 v13, v7, -0x1

    sub-int/2addr v13, v2

    shl-int/2addr v12, v13

    or-int/2addr v8, v12

    .line 228
    add-int/lit8 v10, v10, 0x1

    .line 229
    add-int/2addr v9, v1

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "counter":I
    :cond_4
    if-ne v10, v14, :cond_7

    .line 236
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    if-lez v10, :cond_5

    .line 237
    aget v1, p0, v2

    .line 238
    .restart local v1    # "counter":I
    aget v12, p0, v2

    if-le v12, v5, :cond_6

    .line 239
    add-int/lit8 v10, v10, -0x1

    .line 241
    shl-int/lit8 v12, v1, 0x1

    if-lt v12, v9, :cond_6

    move v8, v11

    .line 249
    .end local v1    # "counter":I
    .end local v8    # "pattern":I
    :cond_5
    :goto_3
    return v8

    .line 236
    .restart local v1    # "counter":I
    .restart local v8    # "pattern":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    .end local v1    # "counter":I
    :cond_7
    if-gt v10, v14, :cond_0

    move v8, v11

    .line 249
    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 31
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/16 v25, 0x9

    move/from16 v0, v25

    new-array v7, v0, [I

    .line 100
    .local v7, "counters":[I
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v22

    .line 102
    .local v22, "start":[I
    const/16 v25, 0x1

    aget v25, v22, v25

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v17

    .line 103
    .local v17, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    .line 105
    .local v9, "end":I
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v25, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v19, "result":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 110
    invoke-static {v7}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v18

    .line 111
    .local v18, "pattern":I
    if-gez v18, :cond_1

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 114
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v8

    .line 115
    .local v8, "decodedChar":C
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    move/from16 v13, v17

    .line 117
    .local v13, "lastStart":I
    move-object v5, v7

    .local v5, "arr$":[I
    array-length v15, v5

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v15, :cond_2

    aget v6, v5, v11

    .line 118
    .local v6, "counter":I
    add-int v17, v17, v6

    .line 117
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 121
    .end local v6    # "counter":I
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v17

    .line 122
    const/16 v25, 0x2a

    move/from16 v0, v25

    if-ne v8, v0, :cond_0

    .line 123
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    const/4 v12, 0x0

    .line 127
    .local v12, "lastPatternSize":I
    move-object v5, v7

    array-length v15, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v15, :cond_3

    aget v6, v5, v11

    .line 128
    .restart local v6    # "counter":I
    add-int/2addr v12, v6

    .line 127
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 130
    .end local v6    # "counter":I
    :cond_3
    sub-int v25, v17, v13

    sub-int v24, v25, v12

    .line 133
    .local v24, "whiteSpaceAfterEnd":I
    move/from16 v0, v17

    if-eq v0, v9, :cond_4

    shr-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    if-ge v0, v12, :cond_4

    .line 134
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 138
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v16, v25, -0x1

    .line 139
    .local v16, "max":I
    const/16 v23, 0x0

    .line 140
    .local v23, "total":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 141
    const-string v25, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    add-int v23, v23, v25

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 143
    :cond_5
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v25

    sget-object v26, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    rem-int/lit8 v27, v23, 0x2b

    aget-char v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 144
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v25

    throw v25

    .line 146
    :cond_6
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    .end local v10    # "i":I
    .end local v16    # "max":I
    .end local v23    # "total":I
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-nez v25, :cond_8

    .line 151
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 155
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 156
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 161
    .local v20, "resultString":Ljava/lang/String;
    :goto_3
    const/16 v25, 0x1

    aget v25, v22, v25

    const/16 v26, 0x0

    aget v26, v22, v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v14, v25, v26

    .line 162
    .local v14, "left":F
    add-int v25, v17, v13

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v21, v25, v26

    .line 163
    .local v21, "right":F
    new-instance v25, Lcom/google/zxing/Result;

    const/16 v26, 0x0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v14, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v29, v27, v28

    sget-object v28, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v25

    .line 158
    .end local v14    # "left":F
    .end local v20    # "resultString":Ljava/lang/String;
    .end local v21    # "right":F
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "resultString":Ljava/lang/String;
    goto :goto_3
.end method
