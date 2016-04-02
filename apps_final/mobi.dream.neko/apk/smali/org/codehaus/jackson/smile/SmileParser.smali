.class public Lorg/codehaus/jackson/smile/SmileParser;
.super Lorg/codehaus/jackson/impl/JsonParserBase;
.source "SmileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/smile/SmileParser$1;,
        Lorg/codehaus/jackson/smile/SmileParser$Feature;
    }
.end annotation


# static fields
.field private static final NO_INTS:[I

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _got32BitFloat:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _mayContainRawBinary:Z

.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _quad1:I

.field protected _quad2:I

.field protected _quadBuffer:[I

.field protected _seenNameCount:I

.field protected _seenNames:[Ljava/lang/String;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Ljava/lang/String;

.field protected final _smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z

.field protected _typeByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-array v0, v1, [I

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_INTS:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Ljava/io/InputStream;[BIIZ)V
    .locals 3
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "sym"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p6, "in"    # Ljava/io/InputStream;
    .param p7, "inputBuffer"    # [B
    .param p8, "start"    # I
    .param p9, "end"    # I
    .param p10, "bufferRecyclable"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 134
    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 163
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_INTS:[I

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 175
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 177
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 186
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    .line 215
    iput-object p4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 216
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 218
    iput-object p6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    .line 219
    iput-object p7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 220
    iput p8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 221
    iput p9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 222
    iput-boolean p10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_bufferRecyclable:Z

    .line 224
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputRow:I

    .line 225
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputCol:I

    .line 226
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 227
    return-void
.end method

.method private final _addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1357
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 1358
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1364
    :goto_0
    return-object v1

    .line 1360
    :cond_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 1361
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad2:I

    invoke-virtual {v1, p2, v2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1363
    :cond_1
    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v0, v1, 0x2

    .line 1364
    .local v0, "qlen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v1, p2, v2, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final _addSeenStringValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 707
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 713
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenStringValues()V

    goto :goto_0
.end method

.method private final _decodeLongAscii()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2141
    const/4 v5, 0x0

    .line 2142
    .local v5, "outPtr":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 2145
    .local v4, "outBuf":[C
    :goto_0
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v7, v8, :cond_0

    .line 2146
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2148
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2149
    .local v1, "inPtr":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    sub-int v3, v7, v1

    .line 2150
    .local v3, "left":I
    array-length v7, v4

    if-lt v5, v7, :cond_1

    .line 2151
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 2152
    const/4 v5, 0x0

    .line 2154
    :cond_1
    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2156
    :goto_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .local v2, "inPtr":I
    aget-byte v0, v7, v1

    .line 2157
    .local v0, "b":B
    const/4 v7, -0x4

    if-ne v0, v7, :cond_2

    .line 2158
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2165
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2166
    return-void

    .line 2161
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v7, v0

    aput-char v7, v4, v5

    .line 2162
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3

    .line 2163
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    move v5, v6

    .line 2164
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_3
    move v1, v2

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeLongUnicode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2171
    const/4 v6, 0x0

    .line 2172
    .local v6, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 2173
    .local v5, "outBuf":[C
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2175
    .local v1, "codes":[I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 2182
    .local v2, "inputBuffer":[B
    :goto_0
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2183
    .local v8, "ptr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v8, v10, :cond_0

    .line 2184
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2185
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2187
    :cond_0
    array-length v10, v5

    if-lt v6, v10, :cond_1

    .line 2188
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2189
    const/4 v6, 0x0

    .line 2191
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 2193
    .local v3, "max":I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 2194
    .local v4, "max2":I
    if-ge v4, v3, :cond_8

    .line 2195
    move v3, v4

    move v9, v8

    .end local v8    # "ptr":I
    .local v9, "ptr":I
    move v7, v6

    .line 2198
    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 2199
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 2200
    .local v0, "c":I
    aget v10, v1, v0

    if-eqz v10, :cond_2

    .line 2201
    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2209
    const/16 v10, 0xfc

    if-ne v0, v10, :cond_4

    .line 2247
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v7}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2248
    return-void

    .line 2204
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v7

    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 2206
    .end local v0    # "c":I
    :cond_3
    iput v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    move v6, v7

    .line 2207
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 2213
    .end local v6    # "outPtr":I
    .end local v9    # "ptr":I
    .restart local v0    # "c":I
    .restart local v7    # "outPtr":I
    .restart local v8    # "ptr":I
    :cond_4
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_0

    .line 2237
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidChar(I)V

    move v6, v7

    .line 2240
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_2
    array-length v10, v5

    if-lt v6, v10, :cond_5

    .line 2241
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2242
    const/4 v6, 0x0

    .line 2245
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 2215
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 2216
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2218
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_1
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 2219
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2221
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 2223
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2225
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 2227
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 2228
    array-length v10, v5

    if-lt v6, v10, :cond_7

    .line 2229
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2230
    const/4 v6, 0x0

    .line 2232
    :cond_7
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 2234
    goto :goto_2

    .end local v0    # "c":I
    :cond_8
    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 2213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _decodeLongUnicodeName([III)Lorg/codehaus/jackson/sym/Name;
    .locals 14
    .param p1, "quads"    # [I
    .param p2, "byteLen"    # I
    .param p3, "quadLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1452
    and-int/lit8 v10, p2, 0x3

    .line 1461
    .local v10, "lastQuadBytes":I
    const/4 v12, 0x4

    if-ge v10, v12, :cond_7

    .line 1462
    add-int/lit8 v12, p3, -0x1

    aget v9, p1, v12

    .line 1464
    .local v9, "lastQuad":I
    add-int/lit8 v12, p3, -0x1

    rsub-int/lit8 v13, v10, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v9, v13

    aput v13, p1, v12

    .line 1469
    :goto_0
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 1470
    .local v3, "cbuf":[C
    const/4 v6, 0x0

    .line 1472
    .local v6, "cix":I
    const/4 v8, 0x0

    .local v8, "ix":I
    move v7, v6

    .end local v6    # "cix":I
    .local v7, "cix":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_b

    .line 1473
    shr-int/lit8 v12, v8, 0x2

    aget v4, p1, v12

    .line 1474
    .local v4, "ch":I
    and-int/lit8 v2, v8, 0x3

    .line 1475
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v4, v12

    and-int/lit16 v4, v12, 0xff

    .line 1476
    add-int/lit8 v8, v8, 0x1

    .line 1478
    const/16 v12, 0x7f

    if-le v4, v12, :cond_d

    .line 1480
    and-int/lit16 v12, v4, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_8

    .line 1481
    and-int/lit8 v4, v4, 0x1f

    .line 1482
    const/4 v11, 0x1

    .line 1493
    .local v11, "needed":I
    :goto_2
    add-int v12, v8, v11

    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 1494
    const-string v12, " in long field name"

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1498
    :cond_0
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1499
    .local v5, "ch2":I
    and-int/lit8 v2, v8, 0x3

    .line 1500
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1501
    add-int/lit8 v8, v8, 0x1

    .line 1503
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    .line 1504
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1506
    :cond_1
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1507
    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1508
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1509
    and-int/lit8 v2, v8, 0x3

    .line 1510
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1511
    add-int/lit8 v8, v8, 0x1

    .line 1513
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_2

    .line 1514
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1516
    :cond_2
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1517
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 1518
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1519
    and-int/lit8 v2, v8, 0x3

    .line 1520
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1521
    add-int/lit8 v8, v8, 0x1

    .line 1522
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 1523
    and-int/lit16 v12, v5, 0xff

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1525
    :cond_3
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1528
    :cond_4
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 1529
    const/high16 v12, 0x10000

    sub-int/2addr v4, v12

    .line 1530
    array-length v12, v3

    if-lt v7, v12, :cond_5

    .line 1531
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1533
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v4, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v3, v7

    .line 1534
    const v12, 0xdc00

    and-int/lit16 v13, v4, 0x3ff

    or-int v4, v12, v13

    .line 1537
    .end local v5    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v3

    if-lt v6, v12, :cond_6

    .line 1538
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1540
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cix":I
    .restart local v7    # "cix":I
    int-to-char v12, v4

    aput-char v12, v3, v6

    goto/16 :goto_1

    .line 1466
    .end local v2    # "byteIx":I
    .end local v3    # "cbuf":[C
    .end local v4    # "ch":I
    .end local v7    # "cix":I
    .end local v8    # "ix":I
    .end local v9    # "lastQuad":I
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "lastQuad":I
    goto/16 :goto_0

    .line 1483
    .restart local v2    # "byteIx":I
    .restart local v3    # "cbuf":[C
    .restart local v4    # "ch":I
    .restart local v7    # "cix":I
    .restart local v8    # "ix":I
    :cond_8
    and-int/lit16 v12, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_9

    .line 1484
    and-int/lit8 v4, v4, 0xf

    .line 1485
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1486
    .end local v11    # "needed":I
    :cond_9
    and-int/lit16 v12, v4, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_a

    .line 1487
    and-int/lit8 v4, v4, 0x7

    .line 1488
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1490
    .end local v11    # "needed":I
    :cond_a
    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 1491
    const/4 v4, 0x1

    move v11, v4

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1544
    .end local v2    # "byteIx":I
    .end local v4    # "ch":I
    .end local v11    # "needed":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1546
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    if-ge v10, v12, :cond_c

    .line 1547
    add-int/lit8 v12, p3, -0x1

    aput v9, p1, v12

    .line 1549
    :cond_c
    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move/from16 v0, p3

    invoke-virtual {v12, v1, p1, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v12

    return-object v12

    .end local v1    # "baseName":Ljava/lang/String;
    .restart local v2    # "byteIx":I
    .restart local v4    # "ch":I
    :cond_d
    move v6, v7

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    goto :goto_3
.end method

.method private final _decodeShortAsciiName(I)Ljava/lang/String;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1371
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1372
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 1373
    .local v6, "outPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1374
    .local v0, "inBuf":[B
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1377
    .local v2, "inPtr":I
    add-int v8, v2, p1

    add-int/lit8 v1, v8, -0x3

    .local v1, "inEnd":I
    move v3, v2

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1378
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1379
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1380
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1381
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    goto :goto_0

    .line 1383
    :cond_0
    and-int/lit8 v4, p1, 0x3

    .line 1384
    .local v4, "left":I
    if-lez v4, :cond_2

    .line 1385
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1386
    const/4 v8, 0x1

    if-le v4, v8, :cond_1

    .line 1387
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1388
    const/4 v8, 0x2

    if-le v4, v8, :cond_2

    .line 1389
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1393
    :cond_1
    :goto_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1394
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1395
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2    # "inPtr":I
    .end local v6    # "outPtr":I
    .restart local v3    # "inPtr":I
    .restart local v7    # "outPtr":I
    :cond_2
    move v2, v3

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeShortUnicodeName(I)Ljava/lang/String;
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1408
    const/4 v8, 0x0

    .line 1409
    .local v8, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 1410
    .local v7, "outBuf":[C
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1411
    .local v5, "inPtr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1412
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1413
    .local v1, "codes":[I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1414
    .local v4, "inBuf":[B
    add-int v2, v5, p1

    .local v2, "end":I
    move v6, v5

    .end local v5    # "inPtr":I
    .local v6, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 1415
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v10, v4, v6

    and-int/lit16 v3, v10, 0xff

    .line 1416
    .local v3, "i":I
    aget v0, v1, v3

    .line 1417
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1419
    packed-switch v0, :pswitch_data_0

    .line 1439
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_0
    move v8, v9

    .line 1442
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v6, v5

    .line 1443
    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    goto :goto_0

    .line 1421
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v5, v6

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    move v8, v9

    .line 1422
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1424
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 1427
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1429
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 1434
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 1435
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 1436
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v5, v6

    .line 1437
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_1

    .line 1444
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v5    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v6    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_1
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1445
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 1419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2415
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2416
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2418
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2419
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2420
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2422
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2428
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2429
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2431
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 2432
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2433
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2434
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2436
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2437
    .local v0, "c":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 2438
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2440
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2441
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 2442
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2444
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2445
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2451
    and-int/lit8 p1, p1, 0xf

    .line 2452
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2453
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 2454
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2456
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2457
    .local v0, "c":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2458
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2459
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2461
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2462
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2472
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2473
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2475
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2476
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2477
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2479
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2481
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2482
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2484
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2485
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 2486
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2488
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2489
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 2490
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2492
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2493
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 2494
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2500
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "oldShared"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x400

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 1337
    array-length v0, p1

    .line 1339
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 1340
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v3}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1341
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1342
    new-array v1, v5, [Ljava/lang/String;

    .line 1352
    :cond_0
    :goto_0
    return-object v1

    .line 1344
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1345
    move-object v1, p1

    .line 1346
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    goto :goto_0

    .line 1348
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v2, 0x100

    .line 1349
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 1350
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v3, p1

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _expandSeenStringValues()V
    .locals 7

    .prologue
    const/16 v2, 0x400

    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 717
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 718
    .local v3, "oldShared":[Ljava/lang/String;
    array-length v0, v3

    .line 720
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 721
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 722
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 723
    new-array v1, v6, [Ljava/lang/String;

    .line 733
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 734
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 735
    return-void

    .line 725
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 726
    move-object v1, v3

    .line 727
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    goto :goto_0

    .line 729
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v6, :cond_3

    const/16 v2, 0x100

    .line 730
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 731
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1636
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v5, v6

    if-ge v5, p1, :cond_0

    .line 1637
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1640
    :cond_0
    const/4 v5, 0x5

    if-ge p1, v5, :cond_2

    .line 1641
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1642
    .local v1, "inPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1643
    .local v0, "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v2, v5, 0xff

    .line 1644
    .local v2, "q":I
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1645
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1646
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1647
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1648
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1649
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1653
    :cond_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    .line 1654
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    .line 1681
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v2    # "q":I
    :goto_0
    return-object v5

    .line 1656
    :cond_2
    const/16 v5, 0x9

    if-ge p1, v5, :cond_4

    .line 1657
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1658
    .restart local v1    # "inPtr":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1660
    .restart local v0    # "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x8

    .line 1661
    .local v3, "q1":I
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1662
    shl-int/lit8 v3, v3, 0x8

    .line 1663
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1664
    shl-int/lit8 v3, v3, 0x8

    .line 1665
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1666
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 1667
    .local v4, "q2":I
    add-int/lit8 p1, p1, -0x5

    .line 1668
    if-lez p1, :cond_3

    .line 1669
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1670
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1671
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1672
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1673
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1677
    :cond_3
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad1:I

    .line 1678
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quad2:I

    .line 1679
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v3, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    goto :goto_0

    .line 1681
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v3    # "q1":I
    .end local v4    # "q2":I
    :cond_4
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedMedium(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    goto :goto_0
.end method

.method private final _findDecodedMedium(I)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1692
    add-int/lit8 v7, p1, 0x3

    shr-int/lit8 v0, v7, 0x2

    .line 1693
    .local v0, "bufLen":I
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v7, v7

    if-le v0, v7, :cond_0

    .line 1694
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-static {v7, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1698
    :cond_0
    const/4 v4, 0x0

    .line 1699
    .local v4, "offset":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1700
    .local v2, "inPtr":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1702
    .local v1, "inBuf":[B
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    .line 1703
    .local v6, "q":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1704
    shl-int/lit8 v6, v6, 0x8

    .line 1705
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1706
    shl-int/lit8 v6, v6, 0x8

    .line 1707
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1708
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aput v6, v7, v4

    .line 1709
    add-int/lit8 p1, p1, -0x4

    const/4 v7, 0x3

    if-gt p1, v7, :cond_3

    .line 1711
    if-lez p1, :cond_2

    .line 1712
    aget-byte v7, v1, v2

    and-int/lit16 v6, v7, 0xff

    .line 1713
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1714
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1715
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1716
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1719
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aput v6, v7, v5

    .line 1721
    :goto_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v7, v8, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v7

    return-object v7

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_3
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method private final _finishBigDecimal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1972
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    invoke-static {v2}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v1

    .line 1973
    .local v1, "scale":I
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 1974
    .local v0, "raw":[B
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 1975
    const/16 v2, 0x10

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1976
    return-void
.end method

.method private final _finishBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1910
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 1911
    .local v0, "raw":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberBigInt:Ljava/math/BigInteger;

    .line 1912
    const/4 v1, 0x4

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1913
    return-void
.end method

.method private final _finishDouble()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    .line 1933
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v4

    int-to-long v0, v4

    .line 1934
    .local v0, "hi":J
    const/16 v4, 0x1c

    shl-long v4, v0, v4

    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1936
    .local v2, "value":J
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_0

    .line 1937
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1939
    :cond_0
    shl-long v4, v2, v9

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1940
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 1941
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1943
    :cond_1
    shl-long v4, v2, v9

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1944
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberDouble:D

    .line 1945
    const/16 v4, 0x8

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1946
    return-void
.end method

.method private final _finishFloat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1919
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v1

    .line 1920
    .local v1, "i":I
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1921
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1923
    :cond_0
    shl-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v3, v4

    add-int v1, v2, v3

    .line 1924
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1925
    .local v0, "f":F
    float-to-double v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberDouble:D

    .line 1926
    const/16 v2, 0x8

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1927
    return-void
.end method

.method private final _finishInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1843
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1844
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1846
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1848
    .local v1, "value":I
    if-gez v1, :cond_1

    .line 1849
    and-int/lit8 v1, v1, 0x3f

    .line 1882
    :goto_0
    invoke-static {v1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v2

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberInt:I

    .line 1883
    const/4 v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1884
    return-void

    .line 1851
    :cond_1
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1852
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1854
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1855
    .local v0, "i":I
    if-ltz v0, :cond_6

    .line 1856
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1857
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_3

    .line 1858
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1860
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1861
    if-ltz v0, :cond_6

    .line 1862
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1863
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 1864
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1866
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1867
    if-ltz v0, :cond_6

    .line 1868
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1870
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_5

    .line 1871
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1873
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1874
    if-ltz v0, :cond_6

    .line 1875
    const-string v2, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1880
    :cond_6
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    goto :goto_0
.end method

.method private final _finishLong()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1890
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_fourBytesToInt()I

    move-result v3

    int-to-long v0, v3

    .line 1893
    .local v0, "l":J
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 1894
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1896
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v3, v4

    .line 1897
    .local v2, "value":I
    if-gez v2, :cond_1

    .line 1898
    const/4 v3, 0x6

    shl-long v3, v0, v3

    and-int/lit8 v5, v2, 0x3f

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 1899
    invoke-static {v0, v1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberLong:J

    .line 1900
    const/4 v3, 0x2

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 1901
    return-void

    .line 1903
    :cond_1
    const/4 v3, 0x7

    shl-long v3, v0, v3

    int-to-long v5, v2

    add-long v0, v3, v5

    .line 1904
    goto :goto_0
.end method

.method private final _finishRawBinary()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2253
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2254
    .local v0, "byteLen":I
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 2255
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 2256
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2258
    :cond_0
    const/4 v1, 0x0

    .line 2260
    .local v1, "ptr":I
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2261
    .local v2, "toAdd":I
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2262
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2263
    add-int/2addr v1, v2

    .line 2264
    sub-int/2addr v0, v2

    .line 2265
    if-gtz v0, :cond_1

    .line 2266
    return-void

    .line 2268
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method private final _fourBytesToInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1951
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1952
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1954
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1955
    .local v0, "i":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1956
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1958
    :cond_1
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 1959
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1960
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1962
    :cond_2
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 1963
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    .line 1964
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1966
    :cond_3
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private static _growArrayTo([II)[I
    .locals 3
    .param p0, "arr"    # [I
    .param p1, "minSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1726
    add-int/lit8 v1, p1, 0x4

    new-array v0, v1, [I

    .line 1727
    .local v0, "newArray":[I
    if-eqz p0, :cond_0

    .line 1729
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1731
    :cond_0
    return-object v0
.end method

.method private final _handleLongFieldName()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x4

    .line 1555
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 1556
    .local v3, "inBuf":[B
    const/4 v7, 0x0

    .line 1557
    .local v7, "quads":I
    const/4 v2, 0x0

    .line 1558
    .local v2, "bytes":I
    const/4 v6, 0x0

    .line 1561
    .local v6, "q":I
    :goto_0
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 1562
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1564
    :cond_0
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1565
    .local v0, "b":B
    if-ne v11, v0, :cond_5

    .line 1566
    const/4 v2, 0x0

    .line 1603
    :goto_1
    shl-int/lit8 v1, v7, 0x2

    .line 1604
    .local v1, "byteLen":I
    if-lez v2, :cond_2

    .line 1605
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_1

    .line 1606
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1608
    :cond_1
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .local v8, "quads":I
    aput v6, v9, v7

    .line 1609
    add-int/2addr v1, v2

    move v7, v8

    .line 1614
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    :cond_2
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v9, v10, v7}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 1615
    .local v4, "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v4, :cond_d

    .line 1616
    invoke-virtual {v4}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1620
    .local v5, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1621
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 1622
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1624
    :cond_3
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v9, v10

    .line 1626
    :cond_4
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v9, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1627
    return-void

    .line 1569
    .end local v1    # "byteLen":I
    .end local v4    # "n":Lorg/codehaus/jackson/sym/Name;
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    and-int/lit16 v6, v0, 0xff

    .line 1570
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_6

    .line 1571
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1573
    :cond_6
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1574
    if-ne v11, v0, :cond_7

    .line 1575
    const/4 v2, 0x1

    .line 1576
    goto :goto_1

    .line 1578
    :cond_7
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1579
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_8

    .line 1580
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1582
    :cond_8
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1583
    if-ne v11, v0, :cond_9

    .line 1584
    const/4 v2, 0x2

    .line 1585
    goto :goto_1

    .line 1587
    :cond_9
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1588
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_a

    .line 1589
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1591
    :cond_a
    iget v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1592
    if-ne v11, v0, :cond_b

    .line 1593
    const/4 v2, 0x3

    .line 1594
    goto/16 :goto_1

    .line 1596
    :cond_b
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1597
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_c

    .line 1598
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    .line 1600
    :cond_c
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .restart local v8    # "quads":I
    aput v6, v9, v7

    move v7, v8

    .line 1601
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    goto/16 :goto_0

    .line 1618
    .restart local v1    # "byteLen":I
    .restart local v4    # "n":Lorg/codehaus/jackson/sym/Name;
    :cond_d
    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_quadBuffer:[I

    invoke-direct {p0, v9, v1, v7}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongUnicodeName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v9

    invoke-virtual {v9}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "name":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private final _handleSharedString(I)Lorg/codehaus/jackson/JsonToken;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 696
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 700
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method private final _read7BitBinaryWithLength()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 1999
    .local v0, "byteLen":I
    new-array v7, v0, [B

    .line 2000
    .local v7, "result":[B
    const/4 v5, 0x0

    .line 2001
    .local v5, "ptr":I
    add-int/lit8 v4, v0, -0x7

    .local v4, "lastOkPtr":I
    move v6, v5

    .line 2004
    .end local v5    # "ptr":I
    .local v6, "ptr":I
    :goto_0
    if-gt v6, v4, :cond_1

    .line 2005
    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    const/16 v12, 0x8

    if-ge v11, v12, :cond_0

    .line 2006
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2008
    :cond_0
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x19

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x12

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xb

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x4

    add-int v2, v11, v12

    .line 2012
    .local v2, "i1":I
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v10, v11, v12

    .line 2013
    .local v10, "x":I
    shr-int/lit8 v11, v10, 0x3

    add-int/2addr v2, v11

    .line 2014
    and-int/lit8 v11, v10, 0x7

    shl-int/lit8 v11, v11, 0x15

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xe

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x7

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v3, v11, v12

    .line 2019
    .local v3, "i2":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x18

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2020
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v2, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2021
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2022
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    int-to-byte v11, v2

    aput-byte v11, v7, v5

    .line 2023
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v3, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2024
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2025
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    int-to-byte v11, v3

    aput-byte v11, v7, v6

    move v6, v5

    .line 2026
    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto/16 :goto_0

    .line 2028
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v10    # "x":I
    :cond_1
    array-length v11, v7

    sub-int v8, v11, v6

    .line 2029
    .local v8, "toDecode":I
    if-lez v8, :cond_4

    .line 2030
    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    if-ge v11, v12, :cond_2

    .line 2031
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2033
    :cond_2
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v11, v12

    .line 2034
    .local v9, "value":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 2035
    shl-int/lit8 v11, v9, 0x7

    iget-object v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v9, v11, v12

    .line 2036
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    rsub-int/lit8 v11, v1, 0x7

    shr-int v11, v9, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2034
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 2039
    :cond_3
    shl-int/2addr v9, v8

    .line 2040
    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    add-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .end local v1    # "i":I
    .end local v9    # "value":I
    :cond_4
    move v5, v6

    .line 2042
    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    return-object v7
.end method

.method private final _readUnsignedVInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1981
    const/4 v1, 0x0

    .line 1983
    .local v1, "value":I
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1984
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1986
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1987
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 1988
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    .line 1989
    return v1

    .line 1991
    :cond_1
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1992
    goto :goto_0
.end method

.method protected static final _smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 303
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 305
    .local v0, "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    invoke-direct {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;-><init>()V

    .line 307
    .restart local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 309
    :cond_0
    return-object v0

    .line 303
    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    .line 444
    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 1213
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final _decodeShortAsciiValue(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2054
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v6, v7

    if-ge v6, p1, :cond_0

    .line 2055
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2058
    :cond_0
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 2059
    .local v3, "outBuf":[C
    const/4 v4, 0x0

    .line 2060
    .local v4, "outPtr":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 2061
    .local v1, "inBuf":[B
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2085
    .local v2, "inPtr":I
    add-int v0, v2, p1

    .local v0, "end":I
    move v5, v4

    .end local v4    # "outPtr":I
    .local v5, "outPtr":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2086
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    aget-byte v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 2085
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 2089
    :cond_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2090
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6, p1}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2091
    return-void
.end method

.method protected final _decodeShortUnicodeValue(I)V
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2096
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    if-ge v10, p1, :cond_0

    .line 2097
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2099
    :cond_0
    const/4 v8, 0x0

    .line 2100
    .local v8, "outPtr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 2101
    .local v7, "outBuf":[C
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2102
    .local v4, "inPtr":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2103
    sget-object v1, Lorg/codehaus/jackson/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2104
    .local v1, "codes":[I
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 2105
    .local v6, "inputBuf":[B
    add-int v2, v4, p1

    .local v2, "end":I
    move v5, v4

    .end local v4    # "inPtr":I
    .local v5, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 2106
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v10, v6, v5

    and-int/lit16 v3, v10, 0xff

    .line 2107
    .local v3, "i":I
    aget v0, v1, v3

    .line 2108
    .local v0, "code":I
    if-eqz v0, :cond_1

    .line 2110
    packed-switch v0, :pswitch_data_0

    .line 2130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_1
    move v8, v9

    .line 2133
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v5, v4

    .line 2134
    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_0

    .line 2112
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v4, v5

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    move v8, v9

    .line 2113
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 2115
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 2118
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 2120
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 2125
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 2126
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 2127
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v4, v5

    .line 2128
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    goto :goto_1

    .line 2135
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v4    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v5    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_2
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v9}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 2136
    return-void

    .line 2110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _finishNumberToken(I)V
    .locals 4
    .param p1, "tb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1804
    and-int/lit8 p1, p1, 0x1f

    .line 1805
    shr-int/lit8 v1, p1, 0x2

    .line 1806
    .local v1, "type":I
    if-ne v1, v2, :cond_3

    .line 1807
    and-int/lit8 v0, p1, 0x3

    .line 1808
    .local v0, "subtype":I
    if-nez v0, :cond_0

    .line 1809
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishInt()V

    .line 1833
    .end local v0    # "subtype":I
    :goto_0
    return-void

    .line 1810
    .restart local v0    # "subtype":I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1811
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishLong()V

    goto :goto_0

    .line 1812
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1813
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishBigInteger()V

    goto :goto_0

    .line 1815
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1819
    .end local v0    # "subtype":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 1820
    and-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_0

    .line 1832
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1822
    :pswitch_0
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishFloat()V

    goto :goto_0

    .line 1825
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishDouble()V

    goto :goto_0

    .line 1828
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishBigDecimal()V

    goto :goto_0

    .line 1820
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _finishString()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 457
    return-void
.end method

.method protected _finishToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1762
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1763
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1765
    .local v0, "tb":I
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v1, v2, 0x7

    .line 1766
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1767
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishNumberToken(I)V

    .line 1799
    :goto_0
    return-void

    .line 1770
    :cond_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 1771
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiValue(I)V

    goto :goto_0

    .line 1774
    :cond_1
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    .line 1776
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    goto :goto_0

    .line 1779
    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 1780
    and-int/lit8 v0, v0, 0x1f

    .line 1782
    shr-int/lit8 v2, v0, 0x2

    packed-switch v2, :pswitch_data_0

    .line 1798
    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1784
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongAscii()V

    goto :goto_0

    .line 1787
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeLongUnicode()V

    goto :goto_0

    .line 1790
    :pswitch_3
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    goto :goto_0

    .line 1793
    :pswitch_4
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishRawBinary()V

    goto :goto_0

    .line 1782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected final _handleFieldName()Lorg/codehaus/jackson/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1228
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1229
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1231
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1233
    .local v0, "ch":I
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1234
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1326
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type marker byte 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for expected field name (or END_OBJECT marker)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1327
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 1236
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1238
    :sswitch_0
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1239
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1245
    :sswitch_1
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 1246
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1248
    :cond_2
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 1249
    .local v1, "index":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_3

    .line 1250
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1252
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1254
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1256
    .end local v1    # "index":I
    :sswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleLongFieldName()V

    .line 1257
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1262
    :pswitch_1
    and-int/lit8 v1, v0, 0x3f

    .line 1263
    .restart local v1    # "index":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_4

    .line 1264
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1266
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1268
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1271
    .end local v1    # "index":I
    :pswitch_2
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v2, v5, 0x1

    .line 1273
    .local v2, "len":I
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1274
    .local v3, "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_7

    .line 1275
    invoke-virtual {v3}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1276
    .local v4, "name":Ljava/lang/String;
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1281
    :goto_2
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1282
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 1283
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1285
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1287
    :cond_6
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1289
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 1278
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiName(I)Ljava/lang/String;

    move-result-object v4

    .line 1279
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1292
    .end local v2    # "len":I
    .end local v3    # "n":Lorg/codehaus/jackson/sym/Name;
    .end local v4    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, v0, 0x3f

    .line 1294
    const/16 v5, 0x37

    if-le v0, v5, :cond_9

    .line 1295
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_1

    .line 1296
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1297
    const/16 v5, 0x7d

    const/16 v6, 0x5d

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 1299
    :cond_8
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 1300
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 1303
    :cond_9
    add-int/lit8 v2, v0, 0x2

    .line 1305
    .restart local v2    # "len":I
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_findDecodedFromSymbols(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 1306
    .restart local v3    # "n":Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_c

    .line 1307
    invoke-virtual {v3}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1308
    .restart local v4    # "name":Ljava/lang/String;
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 1313
    :goto_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 1314
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 1315
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1317
    :cond_a
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1319
    :cond_b
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5, v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1320
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_1

    .line 1310
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1311
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1236
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 9
    .param p1, "minAvailable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v2

    .line 405
    :cond_1
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int v0, v4, v5

    .line 406
    .local v0, "amount":I
    if-lez v0, :cond_2

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    if-lez v4, :cond_2

    .line 407
    iget-wide v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    .line 409
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    invoke-static {v4, v5, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 414
    :goto_1
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 415
    :goto_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-ge v4, p1, :cond_4

    .line 416
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 417
    .local v1, "count":I
    if-ge v1, v3, :cond_3

    .line 419
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_closeInput()V

    .line 421
    if-nez v1, :cond_0

    .line 422
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    .end local v1    # "count":I
    :cond_2
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    goto :goto_1

    .line 426
    .restart local v1    # "count":I
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    goto :goto_2

    .end local v1    # "count":I
    :cond_4
    move v2, v3

    .line 428
    goto :goto_0
.end method

.method protected _parseNumericValue(I)V
    .locals 3
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1744
    iget-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 1745
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1747
    .local v0, "tb":I
    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1750
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1751
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishNumberToken(I)V

    .line 1753
    .end local v0    # "tb":I
    :cond_1
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 491
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 492
    iget-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_bufferRecyclable:Z

    if-eqz v3, :cond_0

    .line 493
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 494
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 495
    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 496
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 500
    .end local v0    # "buf":[B
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 501
    .local v1, "nameBuf":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 502
    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 506
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lez v3, :cond_1

    .line 507
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    invoke-static {v1, v5, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 509
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 513
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 514
    .local v2, "valueBuf":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    .line 515
    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 519
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-lez v3, :cond_3

    .line 520
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 522
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 525
    :cond_4
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2528
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2529
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInvalidSpace(I)V

    .line 2531
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 2532
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2544
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2549
    iput p2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2550
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidOther(I)V

    .line 2551
    return-void
.end method

.method protected _reportInvalidSharedName(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2511
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2512
    const-string v0, "Encountered shared name reference, even though document header explicitly declared no shared name references are included"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2514
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared name reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2515
    return-void
.end method

.method protected _reportInvalidSharedStringValue(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2519
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2520
    const-string v0, "Encountered shared text value reference, even though document header did not declared shared text value references may be included"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2522
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared text value reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method protected _skip7BitBinary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2394
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    .line 2396
    .local v2, "origBytes":I
    div-int/lit8 v0, v2, 0x7

    .line 2397
    .local v0, "chunks":I
    mul-int/lit8 v1, v0, 0x8

    .line 2399
    .local v1, "encBytes":I
    mul-int/lit8 v3, v0, 0x7

    sub-int/2addr v2, v3

    .line 2400
    if-lez v2, :cond_0

    .line 2401
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 2403
    :cond_0
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    .line 2404
    return-void
.end method

.method protected _skipBytes(I)V
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2377
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2378
    .local v0, "toAdd":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 2379
    sub-int/2addr p1, v0

    .line 2380
    if-gtz p1, :cond_0

    .line 2381
    return-void

    .line 2383
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method protected _skipIncomplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2284
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 2285
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 2286
    .local v2, "tb":I
    shr-int/lit8 v3, v2, 0x5

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 2370
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_throwInternal()V

    .line 2371
    :goto_1
    return-void

    .line 2288
    :pswitch_1
    and-int/lit8 v2, v2, 0x1f

    .line 2290
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 2293
    :pswitch_2
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    .line 2299
    :goto_2
    :pswitch_3
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 2300
    .local v1, "end":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 2301
    .local v0, "buf":[B
    :cond_0
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_1

    .line 2302
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 2295
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_2

    .line 2306
    .restart local v0    # "buf":[B
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_2

    .line 2310
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2315
    :pswitch_6
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_3

    goto :goto_0

    .line 2317
    :pswitch_7
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2320
    :pswitch_8
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2324
    :pswitch_9
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    .line 2326
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2335
    :pswitch_a
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2340
    :pswitch_b
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2343
    :pswitch_c
    and-int/lit8 v2, v2, 0x1f

    .line 2345
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_4

    :pswitch_d
    goto :goto_0

    .line 2352
    :goto_3
    :pswitch_e
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 2353
    .restart local v1    # "end":I
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    .line 2354
    .restart local v0    # "buf":[B
    :cond_2
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_3

    .line 2355
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 2359
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_3

    .line 2363
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2366
    :pswitch_10
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_readUnsignedVInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_skipBytes(I)V

    goto/16 :goto_1

    .line 2286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 2290
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 2293
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2315
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2345
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->close()V

    .line 464
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 465
    return-void
.end method

.method public getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 2
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1180
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 1183
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1187
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 355
    iget-wide v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 356
    .local v2, "byteOffset":J
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    long-to-int v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1194
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 1197
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1198
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 1200
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 747
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_got32BitFloat:Z

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 750
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1067
    iget-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v3, :cond_4

    .line 1068
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 1070
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 1071
    .local v1, "tb":I
    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v2, v3, 0x7

    .line 1072
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1073
    :cond_0
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiValue(I)V

    .line 1074
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 1097
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :goto_0
    return-object v3

    .line 1076
    .restart local v1    # "tb":I
    .restart local v2    # "type":I
    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1078
    :cond_2
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    .line 1079
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1081
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 1083
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_5

    .line 1084
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1086
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 1087
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_6

    .line 1088
    const/4 v3, 0x0

    goto :goto_0

    .line 1090
    :cond_6
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_7

    .line 1091
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1093
    :cond_7
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1095
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1097
    :cond_8
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1104
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_4

    .line 1105
    iget-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    .line 1106
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 1108
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/smile/SmileParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1132
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 1135
    :goto_0
    return-object v2

    .line 1110
    :pswitch_0
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 1112
    :pswitch_1
    iget-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopied:Z

    if-nez v2, :cond_2

    .line 1113
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1115
    .local v1, "nameLen":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_3

    .line 1116
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    .line 1120
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopied:Z

    .line 1123
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 1117
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 1118
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 1129
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 1135
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_1

    .line 1143
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_finishToken()V

    .line 1146
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1158
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 1161
    :goto_0
    return v0

    .line 1148
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 1150
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1155
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1167
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 343
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputTotal:J

    const-wide/16 v4, -0x1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected handleSignature(ZZ)Z
    .locals 7
    .param p1, "consumeFirstByte"    # Z
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 252
    :cond_0
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 253
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 255
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    .line 256
    if-eqz p2, :cond_2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0x29"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 294
    :cond_2
    :goto_0
    return v2

    .line 262
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 263
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 265
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 266
    if-eqz p2, :cond_2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0xA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_5
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 274
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 276
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v4, v5

    .line 277
    .local v0, "ch":I
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v1, v4, 0xf

    .line 279
    .local v1, "versionBits":I
    if-eqz v1, :cond_7

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header version number bits (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") indicate unrecognized version; only 0x0 handled by parser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 284
    :cond_7
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_8

    .line 285
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 286
    const/4 v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    .line 289
    :cond_8
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_9

    .line 290
    sget-object v4, Lorg/codehaus/jackson/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 291
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    .line 293
    :cond_9
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_mayContainRawBinary:Z

    move v2, v3

    .line 294
    goto/16 :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->hasTextAsCharacters()Z

    move-result v0

    .line 479
    :goto_0
    return v0

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 476
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_nameCopied:Z

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-wide v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    .line 374
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 376
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 377
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 378
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    .line 379
    const/4 v1, 0x1

    .line 388
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 382
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_closeInput()V

    .line 384
    if-nez v0, :cond_0

    .line 385
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mayContainRawBinary()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_mayContainRawBinary:Z

    return v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1042
    sget-object v0, Lorg/codehaus/jackson/smile/SmileParser$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1048
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1044
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1046
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lorg/codehaus/jackson/SerializableString;)Z
    .locals 13
    .param p1, "str"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v10, v11, :cond_d

    .line 765
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asQuotedUTF8()[B

    move-result-object v6

    .line 766
    .local v6, "nameBytes":[B
    array-length v0, v6

    .line 768
    .local v0, "byteLen":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-ge v10, v11, :cond_0

    .line 769
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 770
    .local v7, "ptr":I
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ptr":I
    .local v8, "ptr":I
    aget-byte v1, v10, v7

    .line 771
    .local v1, "ch":I
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 773
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3

    packed-switch v10, :pswitch_data_0

    .line 880
    .end local v1    # "ch":I
    .end local v8    # "ptr":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleFieldName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    .line 881
    .local v9, "t":Lorg/codehaus/jackson/JsonToken;
    iput-object v9, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 882
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v10, :cond_c

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v11}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    .line 885
    .end local v0    # "byteLen":I
    .end local v6    # "nameBytes":[B
    .end local v9    # "t":Lorg/codehaus/jackson/JsonToken;
    :goto_1
    return v10

    .line 775
    .restart local v0    # "byteLen":I
    .restart local v1    # "ch":I
    .restart local v6    # "nameBytes":[B
    .restart local v8    # "ptr":I
    :pswitch_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 777
    :sswitch_0
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 778
    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 779
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    const-string v11, ""

    invoke-virtual {v10, v11}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 780
    if-nez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 786
    :sswitch_1
    and-int/lit8 v10, v1, 0x3

    shl-int/lit8 v10, v10, 0x8

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v11, v8

    and-int/lit16 v11, v11, 0xff

    add-int v3, v10, v11

    .line 787
    .local v3, "index":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v3, v10, :cond_2

    .line 788
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 790
    :cond_2
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v5, v10, v3

    .line 791
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 792
    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 793
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 794
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 801
    .end local v3    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_1
    and-int/lit8 v3, v1, 0x3f

    .line 802
    .restart local v3    # "index":I
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    if-lt v3, v10, :cond_3

    .line 803
    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 805
    :cond_3
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 806
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v5, v10, v3

    .line 807
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 808
    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 809
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 810
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 814
    .end local v3    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v10, v1, 0x3f

    add-int/lit8 v4, v10, 0x1

    .line 815
    .local v4, "len":I
    if-ne v4, v0, :cond_0

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 818
    aget-byte v10, v6, v2

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int v12, v8, v2

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_0

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 823
    :cond_4
    add-int v10, v8, v4

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 824
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 825
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 826
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v11, v11

    if-lt v10, v11, :cond_5

    .line 827
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 829
    :cond_5
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v10, v11

    .line 831
    :cond_6
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 832
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 833
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 840
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v4, v1, 0x3f

    .line 841
    .restart local v4    # "len":I
    const/16 v10, 0x37

    if-le v4, v10, :cond_8

    .line 842
    const/16 v10, 0x3b

    if-ne v4, v10, :cond_0

    .line 843
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 844
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v10

    if-nez v10, :cond_7

    .line 845
    const/16 v10, 0x7d

    const/16 v11, 0x5d

    invoke-virtual {p0, v10, v11}, Lorg/codehaus/jackson/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 847
    :cond_7
    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 848
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v10

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 849
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 854
    :cond_8
    add-int/lit8 v4, v4, 0x2

    .line 855
    if-ne v4, v0, :cond_0

    .line 856
    const/4 v2, 0x0

    .line 857
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_9

    .line 858
    aget-byte v10, v6, v2

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int v12, v8, v2

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_0

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 863
    :cond_9
    add-int v10, v8, v4

    iput v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 864
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 865
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 866
    iget v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v11, v11

    if-lt v10, v11, :cond_a

    .line 867
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 869
    :cond_a
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v11, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v10, v11

    .line 871
    :cond_b
    iget-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v10, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 872
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v10, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 873
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 882
    .end local v1    # "ch":I
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "ptr":I
    .restart local v9    # "t":Lorg/codehaus/jackson/JsonToken;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 885
    .end local v0    # "byteLen":I
    .end local v6    # "nameBytes":[B
    .end local v9    # "t":Lorg/codehaus/jackson/JsonToken;
    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v10

    sget-object v11, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v10, v11, :cond_e

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 775
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

.method public nextIntValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1023
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getIntValue()I

    move-result p1

    .line 1025
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 2
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getLongValue()J

    move-result-wide p1

    .line 1035
    .end local p1    # "defaultValue":J
    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 893
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_4

    .line 894
    :cond_0
    iget-boolean v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_1

    .line 895
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skipIncomplete()V

    .line 897
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 898
    .local v1, "ptr":I
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v1, v6, :cond_3

    .line 899
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 900
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleEOF()V

    .line 901
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->close()V

    .line 902
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    .line 1015
    .end local v1    # "ptr":I
    :goto_0
    return-object v3

    .line 905
    .restart local v1    # "ptr":I
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 907
    :cond_3
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v6, v1

    .line 908
    .local v0, "ch":I
    iget-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputTotal:J

    .line 911
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 912
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 914
    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 1015
    .end local v0    # "ch":I
    .end local v2    # "ptr":I
    :cond_4
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->getText()Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v3, v5

    goto :goto_0

    .line 916
    .restart local v0    # "ch":I
    .restart local v2    # "ptr":I
    :pswitch_1
    if-nez v0, :cond_6

    .line 917
    const-string v5, "Invalid token byte 0x00"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 921
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 922
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-lt v0, v5, :cond_7

    .line 923
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 925
    :cond_7
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 926
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    aget-object v3, v5, v0

    .line 927
    .local v3, "text":Ljava/lang/String;
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 928
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 934
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v4, v0, 0x1f

    .line 935
    .local v4, "typeBits":I
    if-nez v4, :cond_4

    .line 936
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 937
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 938
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 939
    const-string v3, ""

    goto :goto_0

    .line 946
    .end local v4    # "typeBits":I
    :pswitch_3
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 947
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 948
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortAsciiValue(I)V

    .line 952
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v5, :cond_9

    .line 953
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 954
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 955
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    aput-object v3, v5, v6

    goto/16 :goto_0

    .line 957
    .end local v3    # "text":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenStringValues()V

    .line 958
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 961
    .end local v3    # "text":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 969
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_4
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 970
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 971
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    .line 975
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v5, :cond_b

    .line 976
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 977
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 978
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    aput-object v3, v5, v6

    goto/16 :goto_0

    .line 980
    .end local v3    # "text":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_expandSeenStringValues()V

    .line 981
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 984
    .end local v3    # "text":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 546
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 548
    iget-boolean v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_skipIncomplete()V

    .line 551
    :cond_0
    iget-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currInputProcessed:J

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenInputTotal:J

    .line 553
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_binaryValue:[B

    .line 555
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_1

    .line 556
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleFieldName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 690
    :goto_0
    return-object v3

    .line 558
    :cond_1
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v6, v7, :cond_2

    .line 559
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 560
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_handleEOF()V

    .line 565
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->close()V

    .line 566
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto :goto_0

    .line 569
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v6, v7

    .line 570
    .local v0, "ch":I
    iput v0, p0, Lorg/codehaus/jackson/smile/SmileParser;->_typeByte:I

    .line 571
    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 689
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type marker byte 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for expected value token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    move-object v3, v5

    .line 690
    goto :goto_0

    .line 573
    :pswitch_0
    if-nez v0, :cond_4

    .line 574
    const-string v3, "Invalid token byte 0x00"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 576
    :cond_4
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_handleSharedString(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 580
    :pswitch_1
    and-int/lit8 v2, v0, 0x1f

    .line 581
    .local v2, "typeBits":I
    const/4 v6, 0x4

    if-ge v2, v6, :cond_5

    .line 582
    packed-switch v2, :pswitch_data_1

    .line 591
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 584
    :pswitch_2
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 585
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 587
    :pswitch_3
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 589
    :pswitch_4
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 595
    :cond_5
    const/16 v6, 0x8

    if-ge v2, v6, :cond_6

    .line 596
    and-int/lit8 v6, v2, 0x3

    if-gt v6, v11, :cond_3

    .line 597
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 598
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 599
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 603
    :cond_6
    const/16 v6, 0xc

    if-ge v2, v6, :cond_8

    .line 604
    and-int/lit8 v1, v2, 0x3

    .line 605
    .local v1, "subtype":I
    if-gt v1, v11, :cond_3

    .line 606
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 607
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 608
    if-nez v1, :cond_7

    :goto_2
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_got32BitFloat:Z

    .line 609
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 608
    goto :goto_2

    .line 613
    .end local v1    # "subtype":I
    :cond_8
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    .line 614
    invoke-virtual {p0, v4, v4}, Lorg/codehaus/jackson/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 620
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-nez v3, :cond_9

    .line 621
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 623
    :cond_9
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 626
    :cond_a
    const-string v3, "Unrecognized token byte 0x3A (malformed segment header?"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 638
    .end local v2    # "typeBits":I
    :pswitch_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 639
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v4, :cond_b

    .line 640
    invoke-direct {p0}, Lorg/codehaus/jackson/smile/SmileParser;->_addSeenStringValue()V

    .line 644
    :goto_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 642
    :cond_b
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    goto :goto_3

    .line 646
    :pswitch_6
    and-int/lit8 v4, v0, 0x1f

    invoke-static {v4}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagDecode(I)I

    move-result v4

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numberInt:I

    .line 647
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_numTypesValid:I

    .line 648
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 650
    :pswitch_7
    and-int/lit8 v4, v0, 0x1f

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 653
    :sswitch_0
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 654
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 656
    :sswitch_1
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 657
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 662
    :sswitch_2
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_c

    .line 663
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileParser;->loadMoreGuaranteed()V

    .line 665
    :cond_c
    and-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileParser;->_handleSharedString(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 667
    :sswitch_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3, v10, v10}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 668
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 670
    :sswitch_4
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v3

    if-nez v3, :cond_d

    .line 671
    const/16 v3, 0x5d

    const/16 v4, 0x7d

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 673
    :cond_d
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 674
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 676
    :sswitch_5
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v3, v10, v10}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 677
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 679
    :sswitch_6
    const-string v4, "Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 681
    :sswitch_7
    iput-boolean v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_tokenIncomplete:Z

    .line 682
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 684
    :sswitch_8
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x1d -> :sswitch_7
        0x1f -> :sswitch_8
    .end sparse-switch
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    sub-int v0, v2, v3

    .line 322
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 328
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 326
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputPtr:I

    .line 327
    .local v1, "origPtr":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 236
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 237
    return-void
.end method
