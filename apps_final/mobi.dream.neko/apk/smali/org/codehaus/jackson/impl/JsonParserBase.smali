.class public abstract Lorg/codehaus/jackson/impl/JsonParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "JsonParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;

.field static final BI_MAX_INT:Ljava/math/BigInteger;

.field static final BI_MAX_LONG:Ljava/math/BigInteger;

.field static final BI_MIN_INT:Ljava/math/BigInteger;

.field static final BI_MIN_LONG:Ljava/math/BigInteger;

.field protected static final CHAR_NULL:C = '\u0000'

.field protected static final INT_0:I = 0x30

.field protected static final INT_1:I = 0x31

.field protected static final INT_2:I = 0x32

.field protected static final INT_3:I = 0x33

.field protected static final INT_4:I = 0x34

.field protected static final INT_5:I = 0x35

.field protected static final INT_6:I = 0x36

.field protected static final INT_7:I = 0x37

.field protected static final INT_8:I = 0x38

.field protected static final INT_9:I = 0x39

.field protected static final INT_DECIMAL_POINT:I = 0x2e

.field protected static final INT_E:I = 0x45

.field protected static final INT_MINUS:I = 0x2d

.field protected static final INT_PLUS:I = 0x2b

.field protected static final INT_e:I = 0x65

.field static final MAX_INT_D:D = 2.147483647E9

.field static final MAX_INT_L:J = 0x7fffffffL

.field static final MAX_LONG_D:D = 9.223372036854776E18

.field static final MIN_INT_D:D = -2.147483648E9

.field static final MIN_INT_L:J = -0x80000000L

.field static final MIN_LONG_D:D = -9.223372036854776E18

.field protected static final NR_BIGDECIMAL:I = 0x10

.field protected static final NR_BIGINT:I = 0x4

.field protected static final NR_DOUBLE:I = 0x8

.field protected static final NR_INT:I = 0x1

.field protected static final NR_LONG:I = 0x2

.field protected static final NR_UNKNOWN:I


# instance fields
.field protected _binaryValue:[B

.field protected _byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _expLength:I

.field protected _fractLength:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected _intLength:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lorg/codehaus/jackson/JsonToken;

.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 195
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    .line 196
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    .line 198
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    .line 199
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    .line 201
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 202
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 205
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .locals 5
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    .line 54
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 59
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 71
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 77
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 85
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 101
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 106
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 112
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 151
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 158
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 164
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 247
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 300
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_features:I

    .line 301
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 302
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 303
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 304
    return-void
.end method

.method private final _parseSlowFloatValue(I)V
    .locals 3
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 780
    if-ne p1, v1, :cond_0

    .line 781
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 782
    const/16 v1, 0x10

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 792
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 786
    const/16 v1, 0x8

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, "nex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final _parseSlowIntValue(I[CII)V
    .locals 4
    .param p1, "expType"    # I
    .param p2, "buf"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "numStr":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    invoke-static {p2, p3, p4, v2}, Lorg/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 803
    const/4 v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 807
    const/4 v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 811
    .local v0, "nex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final _decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;CI)I
    .locals 3
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # C
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1032
    const/16 v2, 0x5c

    if-eq p2, v2, :cond_0

    .line 1033
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1037
    .local v1, "unescaped":C
    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 1038
    if-nez p3, :cond_2

    .line 1039
    const/4 v0, -0x1

    .line 1047
    :cond_1
    return v0

    .line 1043
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 1044
    .local v0, "bits":I
    if-gez v0, :cond_1

    .line 1045
    invoke-virtual {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method protected final _decodeBase64Escape(Lorg/codehaus/jackson/Base64Variant;II)I
    .locals 3
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1010
    const/16 v2, 0x5c

    if-eq p2, v2, :cond_0

    .line 1011
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_decodeEscaped()C

    move-result v1

    .line 1015
    .local v1, "unescaped":I
    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 1016
    if-nez p3, :cond_2

    .line 1017
    const/4 v0, -0x1

    .line 1025
    :cond_1
    return v0

    .line 1021
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1022
    .local v0, "bits":I
    if-gez v0, :cond_1

    .line 1023
    invoke-virtual {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method protected _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 503
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method protected _handleEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 475
    :cond_0
    return-void
.end method

.method protected _parseNumericValue(I)V
    .locals 9
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 721
    iget-object v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_7

    .line 722
    iget-object v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 723
    .local v0, "buf":[C
    iget-object v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v6}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v5

    .line 724
    .local v5, "offset":I
    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 725
    .local v4, "len":I
    iget-boolean v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_0

    .line 726
    add-int/lit8 v5, v5, 0x1

    .line 728
    :cond_0
    const/16 v6, 0x9

    if-gt v4, v6, :cond_2

    .line 729
    invoke-static {v0, v5, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    .line 730
    .local v1, "i":I
    iget-boolean v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_1

    neg-int v1, v1

    .end local v1    # "i":I
    :cond_1
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 731
    iput v8, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 767
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :goto_0
    return-void

    .line 734
    .restart local v0    # "buf":[C
    .restart local v4    # "len":I
    .restart local v5    # "offset":I
    :cond_2
    const/16 v6, 0x12

    if-gt v4, v6, :cond_6

    .line 735
    invoke-static {v0, v5, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v2

    .line 736
    .local v2, "l":J
    iget-boolean v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_3

    .line 737
    neg-long v2, v2

    .line 740
    :cond_3
    const/16 v6, 0xa

    if-ne v4, v6, :cond_5

    .line 741
    iget-boolean v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    if-eqz v6, :cond_4

    .line 742
    const-wide/32 v6, -0x80000000

    cmp-long v6, v2, v6

    if-ltz v6, :cond_5

    .line 743
    long-to-int v6, v2

    iput v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 744
    iput v8, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 748
    :cond_4
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-gtz v6, :cond_5

    .line 749
    long-to-int v6, v2

    iput v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 750
    iput v8, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 755
    :cond_5
    iput-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 756
    const/4 v6, 0x2

    iput v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    goto :goto_0

    .line 759
    .end local v2    # "l":J
    :cond_6
    invoke-direct {p0, p1, v0, v5, v4}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseSlowIntValue(I[CII)V

    goto :goto_0

    .line 762
    .end local v0    # "buf":[C
    .end local v4    # "len":I
    .end local v5    # "offset":I
    :cond_7
    iget-object v6, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v6, v7, :cond_8

    .line 763
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseSlowFloatValue(I)V

    goto :goto_0

    .line 766
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current token ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 457
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 458
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 459
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 460
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 462
    :cond_0
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 4
    .param p1, "actCh"    # I
    .param p2, "expCh"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "startDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 346
    :cond_0
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    throw v0
.end method

.method protected convertNumberToBigDecimal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 938
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 943
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 953
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 954
    return-void

    .line 944
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 945
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 946
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 947
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 948
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 949
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 890
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 902
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 903
    return-void

    .line 893
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 894
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 895
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 896
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 897
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 898
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 900
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToDouble()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 914
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 926
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 927
    return-void

    .line 916
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 918
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 919
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 920
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 921
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    goto :goto_0

    .line 923
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 825
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 827
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    long-to-int v0, v1

    .line 828
    .local v0, "result":I
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 831
    :cond_0
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    .line 854
    .end local v0    # "result":I
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 855
    return-void

    .line 832
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 833
    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_INT:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_INT:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3

    .line 835
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 837
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 838
    :cond_4
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 840
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_5

    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    .line 841
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 843
    :cond_6
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-int v1, v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 844
    :cond_7
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 845
    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_8

    sget-object v1, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_9

    .line 847
    :cond_8
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowInt()V

    .line 849
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    goto :goto_0

    .line 851
    :cond_a
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method protected convertNumberToLong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 860
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 861
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    .line 884
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 885
    return-void

    .line 862
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 863
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MIN_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BI_MAX_LONG:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 865
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 867
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 868
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 870
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 871
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 873
    :cond_5
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 874
    :cond_6
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 875
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 877
    :cond_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportOverflowLong()V

    .line 879
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    goto :goto_0

    .line 881
    :cond_9
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 648
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 649
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 652
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigInteger()V

    .line 656
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 378
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 379
    .local v5, "col":I
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 327
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 328
    .local v0, "parent":Lorg/codehaus/jackson/impl/JsonReadContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 330
    .end local v0    # "parent":Lorg/codehaus/jackson/impl/JsonReadContext;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 691
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 692
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 693
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 695
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 696
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToBigDecimal()V

    .line 699
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 677
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 678
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 679
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 681
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 682
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToDouble()V

    .line 685
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 671
    .local v0, "value":D
    double-to-float v2, v0

    return v2
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 620
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 621
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 624
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToInt()V

    .line 628
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    return v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 634
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 635
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 638
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->convertNumberToLong()V

    .line 642
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    return-wide v0
.end method

.method public getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 592
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 596
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 597
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 614
    :goto_0
    return-object v0

    .line 599
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 600
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 602
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 611
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 612
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 614
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 559
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    if-nez v0, :cond_0

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_parseNumericValue(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 564
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 565
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 586
    :goto_0
    return-object v0

    .line 567
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 568
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigInt:Ljava/math/BigInteger;

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 580
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 581
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    goto :goto_0

    .line 583
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 584
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_throwInternal()V

    .line 586
    :cond_6
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .prologue
    .line 408
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 413
    .local v0, "col":I
    if-gez v0, :cond_0

    .end local v0    # "col":I
    :goto_0
    return v0

    .restart local v0    # "col":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 365
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 397
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    .line 428
    :cond_0
    return-void
.end method

.method protected reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1053
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidBase64Char(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "ch"    # I
    .param p3, "bindex"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1064
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "base":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1066
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1068
    .end local v0    # "base":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1070
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_0

    .line 1072
    .end local v0    # "base":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method protected reportOverflowInt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method protected reportOverflowLong()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    :cond_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method protected final reset(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    const/4 v0, 0x1

    .line 516
    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 517
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;->resetInt(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/impl/JsonParserBase;->resetFloat(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "valueStr"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 544
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 545
    iput-wide p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberDouble:D

    .line 546
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 547
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetFloat(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I
    .param p3, "fractLen"    # I
    .param p4, "expLen"    # I

    .prologue
    .line 534
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 535
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 536
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 537
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 539
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final resetInt(ZI)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .param p1, "negative"    # Z
    .param p2, "intLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 524
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numberNegative:Z

    .line 525
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_intLength:I

    .line 526
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_fractLength:I

    .line 527
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_expLength:I

    .line 528
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_numTypesValid:I

    .line 529
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
