.class public Lorg/codehaus/jackson/smile/SmileGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "SmileGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;,
        Lorg/codehaus/jackson/smile/SmileGenerator$Feature;
    }
.end annotation


# static fields
.field protected static final MAX_INT_AS_LONG:J = 0x7fffffffL

.field private static final MIN_BUFFER_LENGTH:I = 0x302

.field protected static final MIN_INT_AS_LONG:J = -0x80000000L

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field protected static final TOKEN_BYTE_BIG_DECIMAL:B = 0x2at

.field protected static final TOKEN_BYTE_BIG_INTEGER:B = 0x26t

.field protected static final TOKEN_BYTE_FLOAT_32:B = 0x28t

.field protected static final TOKEN_BYTE_FLOAT_64:B = 0x29t

.field protected static final TOKEN_BYTE_INT_32:B = 0x24t

.field protected static final TOKEN_BYTE_INT_64:B = 0x25t

.field protected static final TOKEN_BYTE_LONG_STRING_ASCII:B = -0x20t

.field protected static final TOKEN_BYTE_LONG_STRING_UNICODE:B = -0x1ct

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _bytesWritten:I

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected final _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputTail:I

.field protected _seenNameCount:I

.field protected _seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

.field protected final _smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _smileFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 287
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 288
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 289
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 290
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 292
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 294
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 295
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 297
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 302
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 303
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 312
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 313
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 314
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 322
    :goto_1
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 306
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 307
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 309
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 318
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 320
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;IILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 6
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lorg/codehaus/jackson/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "outputBuffer"    # [B
    .param p7, "offset"    # I
    .param p8, "bufferRecyclable"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0, p2, p4}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 203
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 328
    iput p3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 329
    iput-object p1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 330
    invoke-static {}, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .line 331
    iput-object p5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 332
    iput-boolean p8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 333
    iput p7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 334
    iput-object p6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 335
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    .line 336
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 337
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 344
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 345
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 354
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 355
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 356
    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 364
    :goto_1
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 348
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 349
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 351
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 359
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 360
    new-array v0, v3, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 362
    :cond_4
    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method private final _addSeenName(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x400

    .line 2040
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 2041
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ne v8, v10, :cond_1

    .line 2042
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2043
    const/4 v8, 0x0

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2060
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    and-int v2, v8, v9

    .line 2061
    .local v2, "ix":I
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v9, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v11, v11, v2

    invoke-direct {v9, p1, v10, v11}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v9, v8, v2

    .line 2062
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    .line 2063
    return-void

    .line 2045
    .end local v2    # "ix":I
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2046
    .local v7, "old":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v8, v10, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2047
    const/16 v4, 0x3ff

    .line 2048
    .local v4, "mask":I
    move-object v0, v7

    .local v0, "arr$":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 2049
    .local v6, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v6, :cond_2

    .line 2050
    iget-object v8, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    and-int/lit16 v2, v8, 0x3ff

    .line 2051
    .restart local v2    # "ix":I
    iget-object v5, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2052
    .local v5, "next":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v8, v8, v2

    iput-object v8, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2053
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v6, v8, v2

    .line 2054
    move-object v6, v5

    .line 2055
    goto :goto_1

    .line 2048
    .end local v2    # "ix":I
    .end local v5    # "next":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final _addSeenStringValue(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x400

    .line 2094
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v9, v9

    if-ne v8, v9, :cond_0

    .line 2095
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ne v8, v10, :cond_1

    .line 2096
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2097
    const/4 v8, 0x0

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    and-int v2, v8, v9

    .line 2115
    .local v2, "ix":I
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    new-instance v9, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget v10, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v11, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v11, v11, v2

    invoke-direct {v9, p1, v10, v11}, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;)V

    aput-object v9, v8, v2

    .line 2116
    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2117
    return-void

    .line 2099
    .end local v2    # "ix":I
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2100
    .local v7, "old":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    new-array v8, v10, [Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iput-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2101
    const/16 v4, 0x3ff

    .line 2102
    .local v4, "mask":I
    move-object v0, v7

    .local v0, "arr$":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 2103
    .local v6, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v6, :cond_2

    .line 2104
    iget-object v8, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    and-int/lit16 v2, v8, 0x3ff

    .line 2105
    .restart local v2    # "ix":I
    iget-object v5, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2106
    .local v5, "next":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aget-object v8, v8, v2

    iput-object v8, v6, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2107
    iget-object v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    aput-object v6, v8, v2

    .line 2108
    move-object v6, v5

    .line 2109
    goto :goto_1

    .line 2102
    .end local v2    # "ix":I
    .end local v5    # "next":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .param p1, "firstPart"    # I
    .param p2, "secondPart"    # I

    .prologue
    const v2, 0xdc00

    .line 1694
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final _ensureRoomForOutput(I)V
    .locals 2
    .param p1, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1723
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1724
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1726
    :cond_0
    return-void
.end method

.method private final _findSeenName(Ljava/lang/String;)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 2009
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2010
    .local v0, "hash":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    aget-object v1, v5, v6

    .line 2011
    .local v1, "head":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-nez v1, :cond_0

    .line 2034
    :goto_0
    return v4

    .line 2014
    :cond_0
    move-object v2, v1

    .line 2017
    .local v2, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2018
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2020
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    if-eqz v2, :cond_2

    .line 2021
    iget-object v5, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2022
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2026
    :cond_2
    move-object v2, v1

    .line 2028
    :cond_3
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2029
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2030
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2032
    :cond_4
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2033
    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private final _findSeenStringValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2067
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2068
    .local v0, "hash":I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    aget-object v1, v4, v5

    .line 2069
    .local v1, "head":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v1, :cond_4

    .line 2070
    move-object v2, v1

    .line 2073
    .local v2, "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_0
    iget-object v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v4, p1, :cond_1

    .line 2074
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    .line 2088
    .end local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :goto_0
    return v4

    .line 2076
    .restart local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    :cond_1
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2077
    if-nez v2, :cond_0

    .line 2079
    move-object v2, v1

    .line 2081
    :cond_2
    iget-object v3, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2082
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2083
    iget v4, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2085
    :cond_3
    iget-object v2, v2, Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;->next:Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 2086
    if-nez v2, :cond_2

    .line 2088
    .end local v2    # "node":Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private _mediumUTF8Encode([CII)V
    .locals 9
    .param p1, "str"    # [C
    .param p2, "inputPtr"    # I
    .param p3, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7f

    .line 1621
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v5, -0x4

    .local v0, "bufferEnd":I
    move v2, p2

    .line 1624
    .end local p2    # "inputPtr":I
    .local v2, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_a

    .line 1628
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v5, v0, :cond_1

    .line 1629
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1631
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1633
    .local v1, "c":I
    if-gt v1, v8, :cond_b

    .line 1634
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 1636
    sub-int v3, p3, p2

    .line 1637
    .local v3, "maxInCount":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v4, v0, v5

    .line 1639
    .local v4, "maxOutCount":I
    if-le v3, v4, :cond_2

    .line 1640
    move v3, v4

    .line 1642
    :cond_2
    add-int/2addr v3, p2

    move v2, p2

    .line 1645
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1648
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1649
    if-le v1, v8, :cond_3

    move v2, p2

    .line 1657
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_2
    const/16 v5, 0x800

    if-ge v1, v5, :cond_4

    .line 1658
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1659
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move p2, v2

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    :goto_3
    move v2, p2

    .line 1685
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_0

    .line 1652
    .end local v2    # "inputPtr":I
    .restart local v3    # "maxInCount":I
    .restart local v4    # "maxOutCount":I
    .restart local p2    # "inputPtr":I
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_1

    .line 1662
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    :cond_4
    const v5, 0xd800

    if-lt v1, v5, :cond_5

    const v5, 0xdfff

    if-le v1, v5, :cond_6

    .line 1663
    :cond_5
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1664
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1665
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 1669
    :cond_6
    const v5, 0xdbff

    if-le v1, v5, :cond_7

    .line 1670
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1673
    :cond_7
    if-lt v2, p3, :cond_8

    .line 1674
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1676
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v5, p1, v2

    invoke-direct {p0, v1, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1677
    const v5, 0x10ffff

    if-le v1, v5, :cond_9

    .line 1678
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1680
    :cond_9
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1681
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1682
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1683
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_3

    .line 1686
    .end local v1    # "c":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :cond_a
    return-void

    .end local v2    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local p2    # "inputPtr":I
    :cond_b
    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto/16 :goto_2
.end method

.method private final _shortUTF8Encode([CII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I

    .prologue
    .line 1484
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1485
    .local v3, "ptr":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1487
    .local v2, "outBuf":[B
    :goto_0
    aget-char v0, p1, p2

    .line 1488
    .local v0, "c":I
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 1489
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode2([CIII)I

    move-result v1

    .line 1495
    :goto_1
    return v1

    .line 1491
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    .line 1492
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 1493
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1494
    .local v1, "codedLen":I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    move v3, v4

    .line 1495
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1

    .end local v1    # "codedLen":I
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    move v3, v4

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method private final _shortUTF8Encode2([CIII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I
    .param p4, "outputPtr"    # I

    .prologue
    .line 1505
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .local v3, "outBuf":[B
    move v4, p4

    .end local p4    # "outputPtr":I
    .local v4, "outputPtr":I
    move v2, p2

    .line 1506
    .end local p2    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_7

    .line 1507
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "i":I
    .restart local p2    # "i":I
    aget-char v0, p1, v2

    .line 1508
    .local v0, "c":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 1509
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1510
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1513
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 1514
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1515
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    move v2, p2

    .line 1516
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1520
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-le v0, v5, :cond_3

    .line 1521
    :cond_2
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1522
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1523
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1524
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1527
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_3
    const v5, 0xdbff

    if-le v0, v5, :cond_4

    .line 1528
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1531
    :cond_4
    if-lt p2, p3, :cond_5

    .line 1532
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1534
    :cond_5
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "i":I
    .restart local v2    # "i":I
    aget-char v5, p1, p2

    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v0

    .line 1535
    const v5, 0x10ffff

    if-le v0, v5, :cond_6

    .line 1536
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1538
    :cond_6
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1539
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1540
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1541
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    goto/16 :goto_0

    .line 1543
    .end local v0    # "c":I
    :cond_7
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1544
    .local v1, "codedLen":I
    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1545
    return v1
.end method

.method private _slowUTF8Encode(Ljava/lang/String;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    .line 1550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1551
    .local v4, "len":I
    const/4 v2, 0x0

    .line 1552
    .local v2, "inputPtr":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v7, -0x4

    .local v0, "bufferEnd":I
    move v3, v2

    .line 1555
    .end local v2    # "inputPtr":I
    .local v3, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v3, v4, :cond_a

    .line 1559
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lt v7, v0, :cond_1

    .line 1560
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1562
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1564
    .local v1, "c":I
    if-gt v1, v10, :cond_b

    .line 1565
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 1567
    sub-int v5, v4, v2

    .line 1568
    .local v5, "maxInCount":I
    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int v6, v0, v7

    .line 1570
    .local v6, "maxOutCount":I
    if-le v5, v6, :cond_2

    .line 1571
    move v5, v6

    .line 1573
    :cond_2
    add-int/2addr v5, v2

    move v3, v2

    .line 1576
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1579
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1580
    if-le v1, v10, :cond_3

    move v3, v2

    .line 1588
    .end local v2    # "inputPtr":I
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    .restart local v3    # "inputPtr":I
    :goto_2
    const/16 v7, 0x800

    if-ge v1, v7, :cond_4

    .line 1589
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1590
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v2, v3

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_3
    move v3, v2

    .line 1616
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1583
    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    .restart local v5    # "maxInCount":I
    .restart local v6    # "maxOutCount":I
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_1

    .line 1593
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    :cond_4
    const v7, 0xd800

    if-lt v1, v7, :cond_5

    const v7, 0xdfff

    if-le v1, v7, :cond_6

    .line 1594
    :cond_5
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1595
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1596
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_0

    .line 1600
    :cond_6
    const v7, 0xdbff

    if-le v1, v7, :cond_7

    .line 1601
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1604
    :cond_7
    if-lt v3, v4, :cond_8

    .line 1605
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1607
    :cond_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1608
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 1609
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1611
    :cond_9
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1612
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1613
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1614
    iget-object v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_3

    .line 1617
    .end local v1    # "c":I
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_a
    return-void

    .end local v3    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local v2    # "inputPtr":I
    :cond_b
    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_2
.end method

.method protected static final _smileBufferRecycler()Lorg/codehaus/jackson/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/smile/SmileBufferRecycler",
            "<",
            "Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 391
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 393
    .local v0, "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    invoke-direct {v0}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;-><init>()V

    .line 395
    .restart local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 397
    :cond_0
    return-object v0

    .line 391
    .end local v0    # "br":Lorg/codehaus/jackson/smile/SmileBufferRecycler;, "Lorg/codehaus/jackson/smile/SmileBufferRecycler<Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 1702
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 1706
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 1707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _writeByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1731
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1733
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1734
    return-void
.end method

.method private final _writeBytes(BB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1738
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1739
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1741
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1742
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1743
    return-void
.end method

.method private final _writeBytes(BBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1747
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1748
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1750
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1751
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1752
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1753
    return-void
.end method

.method private final _writeBytes(BBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1757
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1758
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1760
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1761
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1762
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1763
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1764
    return-void
.end method

.method private final _writeBytes(BBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1768
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1769
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1771
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1772
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1773
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1774
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1775
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1776
    return-void
.end method

.method private final _writeBytes(BBBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .param p6, "b6"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1780
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1781
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1783
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1784
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1785
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1786
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1787
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1788
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte p6, v0, v1

    .line 1789
    return-void
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    if-nez p3, :cond_0

    .line 1803
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 1797
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytesLong([BII)V

    goto :goto_0

    .line 1801
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1802
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytesLong([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1807
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 1808
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1811
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1812
    .local v0, "currLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1813
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1814
    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    .line 1820
    return-void

    .line 1817
    :cond_1
    add-int/2addr p2, v0

    .line 1818
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    goto :goto_0
.end method

.method private final _writeFieldName(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x38

    const/4 v8, -0x4

    const/4 v7, 0x0

    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 585
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 586
    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_2

    .line 591
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 592
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 593
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 597
    .end local v1    # "ix":I
    :cond_2
    if-le v2, v9, :cond_3

    .line 598
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonShortFieldName(Ljava/lang/String;I)V

    goto :goto_0

    .line 603
    :cond_3
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v5, v5, 0xc4

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v5, v6, :cond_4

    .line 604
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 607
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v7, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 608
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 609
    .local v3, "origOffset":I
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 610
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v5, v7, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 614
    .local v0, "byteLen":I
    if-ne v0, v2, :cond_6

    .line 615
    const/16 v5, 0x40

    if-gt v0, v5, :cond_5

    .line 616
    add-int/lit8 v5, v0, 0x7f

    int-to-byte v4, v5

    .line 633
    .local v4, "typeToken":B
    :goto_1
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v4, v5, v3

    .line 635
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_0

    .line 636
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v4    # "typeToken":B
    :cond_5
    const/16 v4, 0x34

    .line 620
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1

    .line 623
    .end local v4    # "typeToken":B
    :cond_6
    if-gt v0, v9, :cond_7

    .line 625
    add-int/lit16 v5, v0, 0xbe

    int-to-byte v4, v5

    .restart local v4    # "typeToken":B
    goto :goto_1

    .line 627
    .end local v4    # "typeToken":B
    :cond_7
    const/16 v4, 0x34

    .line 629
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1
.end method

.method private final _writeLongAsciiFieldName([B)V
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 713
    array-length v0, p1

    .line 714
    .local v0, "byteLen":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 715
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 717
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x34

    aput-byte v3, v1, v2

    .line 719
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v1, v2, :cond_1

    .line 720
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 737
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 738
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 726
    const/16 v1, 0x302

    if-ge v0, v1, :cond_2

    .line 727
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 731
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v1, :cond_3

    .line 732
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 734
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private final _writeNonSharedString(Ljava/lang/String;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x4

    const/16 v6, -0x1c

    const/4 v5, 0x0

    .line 899
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v3, :cond_0

    .line 900
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 901
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 929
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, p2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 907
    add-int v3, p2, p2

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, 0x2

    .line 909
    .local v1, "maxLen":I
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 911
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 912
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 913
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 917
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 918
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 920
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 922
    .local v2, "origOffset":I
    const/16 v3, -0x20

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 923
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 925
    .local v0, "byteLen":I
    if-le v0, p2, :cond_3

    .line 926
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v6, v3, v2

    .line 928
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v3, v4

    goto :goto_0
.end method

.method private final _writeNonShortFieldName(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 643
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 645
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v1, :cond_2

    .line 646
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 660
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_0

    .line 661
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 663
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 664
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 666
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 667
    return-void

    .line 648
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, p2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 650
    add-int v1, p2, p2

    add-int v0, v1, p2

    .line 651
    .local v0, "maxLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_4

    .line 652
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 653
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 655
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    goto :goto_0

    .line 657
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    goto :goto_0
.end method

.method private _writePositiveVInt(I)V
    .locals 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 1829
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1830
    and-int/lit8 v4, p1, 0x3f

    add-int/lit16 v4, v4, 0x80

    int-to-byte v0, v4

    .line 1831
    .local v0, "b0":B
    shr-int/lit8 p1, p1, 0x6

    .line 1832
    if-gt p1, v5, :cond_1

    .line 1833
    if-lez p1, :cond_0

    .line 1834
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1836
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    .line 1862
    :goto_0
    return-void

    .line 1839
    :cond_1
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v1, v4

    .line 1840
    .local v1, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1841
    if-gt p1, v5, :cond_2

    .line 1842
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1843
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1844
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1846
    :cond_2
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v2, v4

    .line 1847
    .local v2, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1848
    if-gt p1, v5, :cond_3

    .line 1849
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1850
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1851
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1852
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1854
    :cond_3
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v3, v4

    .line 1855
    .local v3, "b3":B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p1, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1856
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v3, v4, v5

    .line 1857
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1858
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1859
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto/16 :goto_0
.end method

.method private final _writeSharedNameReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 804
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-lt p1, v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared name with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_0
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 809
    add-int/lit8 v0, p1, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private final _writeSharedStringValueReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 880
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared String value with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_0
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    .line 885
    add-int/lit8 v0, p1, 0x1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit16 v0, v0, 0xec

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private _writeSignedVInt(I)V
    .locals 1
    .param p1, "input"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1872
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1873
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1994
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v0, :cond_0

    .line 1995
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    .line 1996
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1997
    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1999
    :cond_0
    return-void
.end method

.method protected _notSupported()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .prologue
    .line 2134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 1951
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1952
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bufferRecyclable:Z

    if-eqz v4, :cond_0

    .line 1953
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    .line 1954
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1956
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1957
    .local v1, "cbuf":[C
    if-eqz v1, :cond_1

    .line 1958
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    .line 1959
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v4, v1}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 1965
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1966
    .local v2, "nameBuf":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v6, :cond_3

    .line 1967
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNames:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1971
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-lez v4, :cond_2

    .line 1972
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1974
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 1978
    :cond_3
    iget-object v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1979
    .local v3, "valueBuf":[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-ne v4, v6, :cond_5

    .line 1980
    iput-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValues:[Lorg/codehaus/jackson/smile/SmileGenerator$SharedStringNode;

    .line 1984
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-lez v4, :cond_4

    .line 1985
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1987
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileBufferRecycler:Lorg/codehaus/jackson/smile/SmileBufferRecycler;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 1990
    :cond_5
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v0

    .line 1413
    .local v0, "status":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 1416
    :cond_0
    return-void
.end method

.method protected _write7BitBinaryWithLength([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1877
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    move v1, p2

    .line 1879
    .end local p2    # "offset":I
    .local v1, "offset":I
    :goto_0
    const/4 v2, 0x7

    if-lt p3, v2, :cond_1

    .line 1880
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1881
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1883
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1884
    .local v0, "i":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1885
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1886
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1887
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1888
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1889
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1890
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1891
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1892
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1893
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1894
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1895
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1896
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x7

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1897
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1898
    add-int/lit8 p3, p3, -0x7

    move v1, p2

    .line 1899
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_0

    .line 1901
    .end local v0    # "i":I
    :cond_1
    if-lez p3, :cond_8

    .line 1903
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x7

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 1904
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1906
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1907
    .restart local v0    # "i":I
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1908
    const/4 v2, 0x1

    if-le p3, v2, :cond_7

    .line 1909
    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1910
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1911
    const/4 v2, 0x2

    if-le p3, v2, :cond_6

    .line 1912
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1913
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1914
    const/4 v2, 0x3

    if-le p3, v2, :cond_5

    .line 1915
    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1916
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1917
    const/4 v2, 0x4

    if-le p3, v2, :cond_4

    .line 1918
    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1919
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1920
    const/4 v2, 0x5

    if-le p3, v2, :cond_3

    .line 1921
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1922
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1923
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .line 1940
    .end local v0    # "i":I
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :goto_1
    return-void

    .line 1925
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1928
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1931
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1934
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1937
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .end local v0    # "i":I
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method

.method protected final _writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 7
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->charLength()I

    move-result v2

    .line 673
    .local v2, "charLen":I
    if-nez v2, :cond_1

    .line 674
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 678
    .local v1, "bytes":[B
    array-length v0, v1

    .line 679
    .local v0, "byteLen":I
    if-eq v0, v2, :cond_2

    .line 680
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V

    goto :goto_0

    .line 684
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_3

    .line 685
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v3

    .line 686
    .local v3, "ix":I
    if-ltz v3, :cond_3

    .line 687
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 693
    .end local v3    # "ix":I
    :cond_3
    const/16 v4, 0x40

    if-gt v0, v4, :cond_5

    .line 695
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 696
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 698
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 699
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 705
    :goto_1
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 706
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_5
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeLongAsciiFieldName([B)V

    goto :goto_1
.end method

.method protected final _writeFieldNameUnicode(Lorg/codehaus/jackson/SerializableString;[B)V
    .locals 6
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 744
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_1

    .line 745
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 746
    .local v1, "ix":I
    if-ltz v1, :cond_1

    .line 747
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedNameReference(I)V

    .line 798
    .end local v1    # "ix":I
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    array-length v0, p2

    .line 755
    .local v0, "byteLen":I
    const/16 v2, 0x38

    if-gt v0, v2, :cond_3

    .line 756
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 757
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 760
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v0, 0xbe

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 762
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 765
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 766
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 771
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 773
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v4, 0x34

    aput-byte v4, v2, v3

    .line 775
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-ge v2, v3, :cond_5

    .line 776
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 793
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v4, -0x4

    aput-byte v4, v2, v3

    .line 795
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v2, :cond_0

    .line 796
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 782
    const/16 v2, 0x302

    if-ge v0, v2, :cond_6

    .line 783
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 787
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    if-lez v2, :cond_7

    .line 788
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 790
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2, p2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-eqz v2, :cond_1

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1443
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1444
    .local v0, "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1445
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndArray()V

    goto :goto_0

    .line 1446
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1447
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeEndObject()V

    goto :goto_0

    .line 1453
    .end local v0    # "ctxt":Lorg/codehaus/jackson/JsonStreamContext;
    :cond_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_closed:Z

    .line 1454
    .local v1, "wasClosed":Z
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1456
    if-nez v1, :cond_2

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1457
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1459
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1461
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1462
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1468
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_releaseBuffers()V

    .line 1469
    return-void

    .line 1465
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public configure(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;Z)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 503
    if-eqz p2, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    .line 508
    :goto_0
    return-object p0

    .line 506
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 494
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 495
    return-object p0
.end method

.method public enable(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Lorg/codehaus/jackson/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 489
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    .line 490
    return-object p0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1428
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1431
    :cond_0
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    .prologue
    .line 499
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected outputOffset()J
    .locals 2

    .prologue
    .line 2130
    iget v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 422
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 0

    .prologue
    .line 413
    return-object p0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1150
    if-nez p2, :cond_0

    .line 1151
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1164
    :goto_0
    return-void

    .line 1154
    :cond_0
    const-string v0, "write Binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1155
    sget-object v0, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->isEnabled(Lorg/codehaus/jackson/smile/SmileGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    const/16 v0, -0x18

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1157
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0

    .line 1159
    :cond_1
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1160
    invoke-direct {p0, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1162
    invoke-direct {p0, p2, p3, p4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1175
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1176
    if-eqz p1, :cond_0

    .line 1177
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 537
    return-void
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 559
    :cond_0
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 560
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 561
    return-void
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 578
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 579
    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 444
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 2
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 466
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 469
    return-void
.end method

.method public final writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 2
    .param p1, "name"    # Lorg/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 455
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 458
    return-void
.end method

.method public writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "last":I
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 377
    or-int/lit8 v0, v0, 0x1

    .line 379
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 380
    or-int/lit8 v0, v0, 0x2

    .line 382
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lorg/codehaus/jackson/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lorg/codehaus/jackson/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 383
    or-int/lit8 v0, v0, 0x4

    .line 385
    :cond_2
    const/16 v1, 0x3a

    const/16 v2, 0x29

    const/16 v3, 0xa

    int-to-byte v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    .line 386
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1186
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1187
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1188
    return-void
.end method

.method public writeNumber(D)V
    .locals 8
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1311
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1312
    const-string v5, "write number"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1318
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 1319
    .local v1, "l":J
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v7, 0x29

    aput-byte v7, v5, v6

    .line 1321
    const/16 v5, 0x23

    ushr-long v5, v1, v5

    long-to-int v0, v5

    .line 1322
    .local v0, "hi5":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x4

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1323
    shr-int/lit8 v0, v0, 0x7

    .line 1324
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1325
    shr-int/lit8 v0, v0, 0x7

    .line 1326
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1327
    shr-int/lit8 v0, v0, 0x7

    .line 1328
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1329
    shr-int/lit8 v0, v0, 0x7

    .line 1330
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 1331
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1334
    const/16 v5, 0x1c

    shr-long v5, v1, v5

    long-to-int v4, v5

    .line 1335
    .local v4, "mid":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v4, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1338
    long-to-int v3, v1

    .line 1339
    .local v3, "lo4":I
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1340
    shr-int/lit8 v3, v3, 0x7

    .line 1341
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1342
    shr-int/lit8 v3, v3, 0x7

    .line 1343
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1344
    shr-int/lit8 v3, v3, 0x7

    .line 1345
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v3, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1346
    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1347
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1354
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1361
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1362
    .local v0, "i":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    .line 1363
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1364
    shr-int/lit8 v0, v0, 0x7

    .line 1365
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1366
    shr-int/lit8 v0, v0, 0x7

    .line 1367
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1368
    shr-int/lit8 v0, v0, 0x7

    .line 1369
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1370
    shr-int/lit8 v0, v0, 0x7

    .line 1371
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1372
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1373
    return-void
.end method

.method public writeNumber(I)V
    .locals 13
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x24

    .line 1193
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1195
    invoke-static {p1}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    .line 1197
    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1198
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 1199
    add-int/lit16 v0, p1, 0xc0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1228
    :goto_0
    return-void

    .line 1203
    :cond_0
    add-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v1, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0

    .line 1207
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v5, v0

    .line 1208
    .local v5, "b0":B
    ushr-int/lit8 p1, p1, 0x6

    .line 1209
    if-gt p1, v2, :cond_2

    .line 1210
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    goto :goto_0

    .line 1213
    :cond_2
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v4, v0

    .line 1214
    .local v4, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1215
    if-gt p1, v2, :cond_3

    .line 1216
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v4, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    goto :goto_0

    .line 1219
    :cond_3
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v3, v0

    .line 1220
    .local v3, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1221
    if-gt p1, v2, :cond_4

    .line 1222
    int-to-byte v2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1226
    :cond_4
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v9, v0

    .line 1227
    .local v9, "b3":B
    shr-int/lit8 v0, p1, 0x7

    int-to-byte v8, v0

    move-object v6, p0

    move v7, v1

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 14
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1234
    const-wide/32 v7, 0x7fffffff

    cmp-long v0, p1, v7

    if-gtz v0, :cond_0

    const-wide/32 v7, -0x80000000

    cmp-long v0, p1, v7

    if-ltz v0, :cond_0

    .line 1235
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNumber(I)V

    .line 1291
    :goto_0
    return-void

    .line 1238
    :cond_0
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1241
    invoke-static/range {p1 .. p2}, Lorg/codehaus/jackson/smile/SmileUtil;->zigzagEncode(J)J

    move-result-wide p1

    .line 1243
    long-to-int v13, p1

    .line 1245
    .local v13, "i":I
    and-int/lit8 v0, v13, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v6, v0

    .line 1246
    .local v6, "b0":B
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v5, v0

    .line 1247
    .local v5, "b1":B
    shr-int/lit8 v0, v13, 0xd

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v4, v0

    .line 1248
    .local v4, "b2":B
    shr-int/lit8 v0, v13, 0x14

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v3, v0

    .line 1250
    .local v3, "b3":B
    const/16 v0, 0x1b

    ushr-long/2addr p1, v0

    .line 1251
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v2, v0

    .line 1254
    .local v2, "b4":B
    const/4 v0, 0x7

    shr-long v7, p1, v0

    long-to-int v13, v7

    .line 1255
    if-nez v13, :cond_1

    .line 1256
    const/16 v1, 0x25

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1260
    :cond_1
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_2

    .line 1261
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v1, p0

    .line 1262
    invoke-direct/range {v1 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1265
    :cond_2
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v1, v0

    .line 1266
    .local v1, "b5":B
    shr-int/lit8 v13, v13, 0x7

    .line 1267
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_3

    .line 1268
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BB)V

    move-object v0, p0

    .line 1269
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1272
    :cond_3
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v12, v0

    .line 1273
    .local v12, "b6":B
    shr-int/lit8 v13, v13, 0x7

    .line 1274
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_4

    .line 1275
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBB)V

    move-object v0, p0

    .line 1276
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1279
    :cond_4
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v11, v0

    .line 1280
    .local v11, "b7":B
    shr-int/lit8 v13, v13, 0x7

    .line 1281
    const/16 v0, 0x7f

    if-gt v13, v0, :cond_5

    .line 1282
    const/16 v0, 0x25

    int-to-byte v7, v13

    invoke-direct {p0, v0, v7, v11, v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBB)V

    move-object v0, p0

    .line 1283
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1286
    :cond_5
    and-int/lit8 v0, v13, 0x7f

    int-to-byte v10, v0

    .line 1287
    .local v10, "b8":B
    shr-int/lit8 v13, v13, 0x7

    .line 1289
    const/16 v8, 0x25

    int-to-byte v9, v13

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBB)V

    move-object v0, p0

    .line 1290
    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto/16 :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 5
    .param p1, "dec"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1378
    if-nez p1, :cond_0

    .line 1379
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1391
    :goto_0
    return-void

    .line 1382
    :cond_0
    const-string v3, "write number"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1383
    const/16 v3, 0x2a

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1384
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 1386
    .local v1, "scale":I
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSignedVInt(I)V

    .line 1387
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 1388
    .local v2, "unscaled":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1390
    .local v0, "data":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1296
    if-nez p1, :cond_0

    .line 1297
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 1305
    :goto_0
    return-void

    .line 1300
    :cond_0
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1302
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1303
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1304
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeRaw(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 526
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1113
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawUTF8String([BII)V
    .locals 6
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x4

    const/16 v4, -0x1c

    .line 1043
    const-string v1, "write String value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1045
    if-nez p3, :cond_0

    .line 1046
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1090
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v1, :cond_1

    .line 1051
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can not use direct UTF-8 write methods when \'Feature.CHECK_SHARED_STRING_VALUES\' enabled"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1057
    :cond_1
    const/16 v1, 0x41

    if-gt p3, v1, :cond_4

    .line 1059
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 1060
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1065
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 1066
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    .line 1067
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aget-byte v3, p1, p2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 1069
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, p3, 0x7e

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1070
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 1075
    :cond_4
    add-int v1, p3, p3

    add-int/2addr v1, p3

    add-int/lit8 v0, v1, 0x2

    .line 1076
    .local v0, "maxLen":I
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 1077
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_5

    .line 1078
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1080
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 1081
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    iget v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1083
    iget-object v1, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    goto/16 :goto_0

    .line 1085
    :cond_6
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1086
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1087
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 548
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 550
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 551
    return-void
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 566
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 568
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 569
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 824
    if-nez p1, :cond_0

    .line 825
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeNull()V

    .line 874
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 830
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 831
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 835
    :cond_1
    const/16 v4, 0x41

    if-le v2, v4, :cond_2

    .line 836
    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeNonSharedString(Ljava/lang/String;I)V

    goto :goto_0

    .line 840
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_3

    .line 841
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 842
    .local v1, "ix":I
    if-ltz v1, :cond_3

    .line 843
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 850
    .end local v1    # "ix":I
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 851
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 854
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 855
    iget v3, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 856
    .local v3, "origOffset":I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 857
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v4, v6, v2}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 858
    .local v0, "byteLen":I
    const/16 v4, 0x40

    if-gt v0, v4, :cond_7

    .line 860
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_5

    .line 861
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    .line 863
    :cond_5
    if-ne v0, v2, :cond_6

    .line 864
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 867
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x7e

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 870
    :cond_7
    iget-object v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    if-ne v0, v2, :cond_8

    const/16 v4, -0x20

    :goto_1
    aput-byte v4, v5, v3

    .line 872
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    goto :goto_0

    .line 870
    :cond_8
    const/16 v4, -0x1c

    goto :goto_1
.end method

.method public final writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 10
    .param p1, "sstr"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 993
    const-string v6, "write String value"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 995
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 997
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 998
    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    const/16 v6, 0x41

    if-gt v2, v6, :cond_2

    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_2

    .line 1003
    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 1004
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 1005
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 1010
    .end local v1    # "ix":I
    :cond_2
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v3

    .line 1011
    .local v3, "raw":[B
    array-length v0, v3

    .line 1013
    .local v0, "byteLen":I
    const/16 v6, 0x40

    if-gt v0, v6, :cond_5

    .line 1015
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v6, v7, :cond_3

    .line 1016
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 1019
    :cond_3
    if-ne v0, v2, :cond_4

    add-int/lit8 v5, v0, 0x3f

    .line 1023
    .local v5, "typeToken":I
    :goto_1
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 1024
    iget-object v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    invoke-static {v3, v9, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1025
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 1027
    iget v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_0

    .line 1028
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    .end local v5    # "typeToken":I
    :cond_4
    add-int/lit8 v5, v0, 0x7e

    goto :goto_1

    .line 1032
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v5, -0x20

    .line 1033
    .local v5, "typeToken":B
    :goto_2
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 1034
    array-length v6, v3

    invoke-direct {p0, v3, v9, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1035
    const/4 v6, -0x4

    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 1032
    .end local v5    # "typeToken":B
    :cond_6
    const/16 v5, -0x1c

    goto :goto_2
.end method

.method public writeString([CII)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/16 v6, -0x1c

    const/4 v7, -0x4

    .line 935
    const/16 v4, 0x41

    if-gt p3, v4, :cond_0

    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_0

    if-lez p3, :cond_0

    .line 936
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 987
    :goto_0
    return-void

    .line 939
    :cond_0
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 940
    if-nez p3, :cond_1

    .line 941
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 944
    :cond_1
    if-gt p3, v8, :cond_5

    .line 946
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_2

    .line 947
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 949
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 950
    .local v2, "origOffset":I
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 951
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 953
    .local v0, "byteLen":I
    if-gt v0, v8, :cond_4

    .line 954
    if-ne v0, p3, :cond_3

    .line 955
    add-int/lit8 v4, v0, 0x3f

    int-to-byte v3, v4

    .line 965
    .local v3, "typeToken":B
    :goto_1
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v3, v4, v2

    goto :goto_0

    .line 957
    .end local v3    # "typeToken":B
    :cond_3
    add-int/lit8 v4, v0, 0x7e

    int-to-byte v3, v4

    .restart local v3    # "typeToken":B
    goto :goto_1

    .line 960
    .end local v3    # "typeToken":B
    :cond_4
    const/16 v3, -0x1c

    .line 962
    .restart local v3    # "typeToken":B
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_1

    .line 968
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    .end local v3    # "typeToken":B
    :cond_5
    add-int v4, p3, p3

    add-int/2addr v4, p3

    add-int/lit8 v1, v4, 0x2

    .line 969
    .local v1, "maxLen":I
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    array-length v4, v4

    if-gt v1, v4, :cond_8

    .line 970
    iget v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 971
    invoke-virtual {p0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_flushBuffer()V

    .line 973
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    .line 974
    .restart local v2    # "origOffset":I
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 975
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 977
    .restart local v0    # "byteLen":I
    if-ne v0, p3, :cond_7

    .line 978
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    const/16 v5, -0x20

    aput-byte v5, v4, v2

    .line 980
    :cond_7
    iget-object v4, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_0

    .line 982
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    :cond_8
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    .line 983
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 984
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 476
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1097
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/smile/SmileGenerator;->writeRawUTF8String([BII)V

    .line 1098
    return-void
.end method
