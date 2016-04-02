.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;


# static fields
.field protected static final typeFieldName:[C


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->typeFieldName:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5

    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    if-ne p4, v2, :cond_4

    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    :cond_2
    if-ne p6, v2, :cond_5

    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_0

    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6

    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_6
    if-ne p3, v5, :cond_0

    if-eq p4, v2, :cond_3

    goto :goto_0

    :cond_7
    if-ne p5, v5, :cond_0

    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v0, v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p4

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, p5

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, p7

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, p8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final arrayCopy(I[CII)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final bytesValue()[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final indexOf(CI)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public final isEOF()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final scanISO8601DateIfMatch()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public final scanISO8601DateIfMatch(Z)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v18, v1, v2

    if-nez p1, :cond_4

    const/16 v1, 0xd

    move/from16 v0, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v7, v7, v18

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v8, v8, v18

    add-int/lit8 v8, v8, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v1, v9, :cond_4

    const/16 v1, 0x44

    if-ne v2, v1, :cond_4

    const/16 v1, 0x61

    if-ne v3, v1, :cond_4

    const/16 v1, 0x74

    if-ne v4, v1, :cond_4

    const/16 v1, 0x65

    if-ne v5, v1, :cond_4

    const/16 v1, 0x28

    if-ne v6, v1, :cond_4

    const/16 v1, 0x2f

    if-ne v7, v1, :cond_4

    const/16 v1, 0x29

    if-ne v8, v1, :cond_4

    const/4 v1, -0x1

    const/4 v2, 0x6

    :goto_0
    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x6

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    move/from16 v0, v18

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    move/from16 v0, v18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x11

    move/from16 v0, v18

    if-ne v0, v1, :cond_11

    :cond_5
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v9, p0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v1, 0x8

    move/from16 v0, v18

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x11

    move/from16 v0, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v9, v9, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v1, v10, :cond_9

    const/16 v10, 0x39

    if-le v1, v10, :cond_a

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v10, 0x30

    if-lt v8, v10, :cond_b

    const/16 v10, 0x39

    if-le v8, v10, :cond_c

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v10, 0x30

    if-lt v9, v10, :cond_d

    const/16 v10, 0x39

    if-le v9, v10, :cond_e

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_e
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v10, v1

    mul-int/lit8 v1, v1, 0x64

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v10, v8

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v1, v8

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v8, v8, v9

    add-int/2addr v1, v8

    :goto_2
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v8, v2

    mul-int/lit8 v2, v2, 0xa

    sget-object v8, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v8, v3

    add-int/2addr v3, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v5

    add-int/2addr v4, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v6

    mul-int/lit8 v2, v2, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_12

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_13

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_14

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v9

    if-nez v9, :cond_15

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v9, p0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_16

    const/16 v2, 0x20

    if-ne v1, v2, :cond_17

    if-nez p1, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v2, 0x22

    if-eq v1, v2, :cond_18

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1b

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1d
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v18

    if-ge v0, v1, :cond_1f

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_20

    const/16 v2, 0x39

    if-le v1, v2, :cond_21

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_21
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v1, v2, v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_22

    const/16 v4, 0x39

    if-gt v3, v4, :cond_22

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    :cond_22
    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_23

    const/16 v4, 0x39

    if-gt v3, v4, :cond_23

    mul-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x3

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_24

    const/16 v3, 0x2d

    if-ne v4, v3, :cond_2c

    :cond_24
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v1, 0x30

    if-lt v3, v1, :cond_25

    const/16 v1, 0x31

    if-le v3, v1, :cond_26

    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_26
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v1, 0x30

    if-lt v5, v1, :cond_27

    const/16 v1, 0x39

    if-le v5, v1, :cond_28

    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x3a

    if-ne v1, v6, :cond_2d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x30

    if-eq v1, v6, :cond_29

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x30

    if-eq v1, v6, :cond_2a

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2a
    const/4 v1, 0x6

    :goto_4
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v3, v6, v3

    mul-int/lit8 v3, v3, 0xa

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v6, v5

    add-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2b

    neg-int v3, v3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eq v4, v3, :cond_2c

    invoke-static {v3}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_2c

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v2, 0x14

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_30

    const/16 v4, 0x22

    if-eq v3, v4, :cond_30

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2d
    const/16 v6, 0x30

    if-ne v1, v6, :cond_2f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x30

    if-eq v1, v6, :cond_2e

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2e
    const/4 v1, 0x5

    goto :goto_4

    :cond_2f
    const/4 v1, 0x3

    goto :goto_4

    :cond_30
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 4

    new-array v1, p2, [C

    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    sub-int v2, v0, p1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
