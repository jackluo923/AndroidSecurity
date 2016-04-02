.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;,
        Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    }
.end annotation


# static fields
.field private static final ignoreMilitaryZoneOffset:Z = true

.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field private jj_ntk:I

.field public token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 419
    invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0()V

    .line 420
    invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1()V

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x7

    const/4 v5, -0x1

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 525
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 527
    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 433
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 435
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 436
    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 437
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 439
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 525
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 527
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 454
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 455
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 456
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 457
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 458
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 4
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .prologue
    const/4 v3, 0x7

    const/4 v2, -0x1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 525
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 527
    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 472
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 473
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 474
    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 475
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method private static getMilitaryZoneOffset(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 3
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 491
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 492
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 493
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 494
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    return-object v1

    .line 490
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0

    .line 496
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 497
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 498
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->generateParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    .line 424
    return-void

    .line 423
    nop

    :array_0
    .array-data 4
        0x2
        0x7f0
        0x7f0
        0x7ff800
        0x800000
        -0x1000000
        -0x2000000
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    .line 427
    return-void

    .line 426
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0xf
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 522
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v0, "parser":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseLine()Lorg/apache/james/mime4j/field/datetime/DateTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    .end local v0    # "parser":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "x":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    return-void
.end method

.method private static parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
    .locals 2
    .param p0, "token"    # Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 445
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 447
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 448
    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 449
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 451
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 463
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 464
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 465
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 466
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 467
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 480
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 481
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 482
    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 483
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method

.method public final date()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day()I

    move-result v0

    .line 206
    .local v0, "d":I
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->month()I

    move-result v1

    .line 207
    .local v1, "m":I
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->year()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "y":Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    invoke-direct {v3, v2, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method public final date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 154
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    .line 157
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    move-result-object v8

    .line 158
    .local v8, "d":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->time()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    move-result-object v9

    .line 159
    .local v9, "t":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/DateTime;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getMonth()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getDay()I

    move-result v3

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getHour()I

    move-result v4

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getMinute()I

    move-result v5

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getSecond()I

    move-result v6

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getZone()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/DateTime;-><init>(Ljava/lang/String;IIIIII)V

    return-object v0

    .line 142
    .end local v8    # "d":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    .end local v9    # "t":Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day_of_week()Ljava/lang/String;

    .line 151
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final day()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 215
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final day_of_week()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 172
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    .line 196
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 197
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 172
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 174
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 199
    :goto_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    return-object v0

    .line 177
    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 180
    :pswitch_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 183
    :pswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 186
    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 189
    :pswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 192
    :pswitch_6
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x31

    const/4 v6, 0x1

    .line 530
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 531
    new-array v3, v7, [Z

    .line 532
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 533
    aput-boolean v8, v3, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 536
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 537
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 539
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v1, v4, :cond_5

    .line 540
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    .line 541
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 542
    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 543
    aput-boolean v6, v3, v2

    .line 545
    :cond_2
    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 546
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 541
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 539
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 551
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_7

    .line 552
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 553
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    .line 554
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 555
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 551
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 558
    :cond_7
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 559
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 560
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 562
    :cond_8
    new-instance v4, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 504
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 505
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 506
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 510
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 511
    .local v1, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 512
    iget-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 511
    .end local v2    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_0

    .line 513
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_1

    .line 515
    .end local v1    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_1
    return-object v2
.end method

.method public final hour()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 305
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 306
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final minute()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 312
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 313
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final month()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    const/4 v0, 0x3

    const/4 v4, -0x1

    .line 220
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 270
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v1, v0

    .line 271
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 272
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 220
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 222
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 223
    const/4 v0, 0x1

    .line 267
    :goto_1
    return v0

    .line 226
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 227
    const/4 v0, 0x2

    goto :goto_1

    .line 230
    :pswitch_2
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 234
    :pswitch_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 235
    const/4 v0, 0x4

    goto :goto_1

    .line 238
    :pswitch_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 239
    const/4 v0, 0x5

    goto :goto_1

    .line 242
    :pswitch_5
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 243
    const/4 v0, 0x6

    goto :goto_1

    .line 246
    :pswitch_6
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 247
    const/4 v0, 0x7

    goto :goto_1

    .line 250
    :pswitch_7
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 251
    const/16 v0, 0x8

    goto :goto_1

    .line 254
    :pswitch_8
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 255
    const/16 v0, 0x9

    goto :goto_1

    .line 258
    :pswitch_9
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 259
    const/16 v0, 0xa

    goto :goto_1

    .line 262
    :pswitch_a
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v1

    .line 263
    goto :goto_1

    .line 266
    :pswitch_b
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v2

    .line 267
    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final obs_zone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 356
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 402
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v2, v3

    .line 403
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 404
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v2

    .line 356
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 358
    :pswitch_0
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 359
    const/4 v1, 0x0

    .line 406
    .local v1, "z":I
    :goto_1
    mul-int/lit8 v2, v1, 0x64

    return v2

    .line 362
    .end local v1    # "z":I
    :pswitch_1
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 363
    const/4 v1, 0x0

    .line 364
    .restart local v1    # "z":I
    goto :goto_1

    .line 366
    .end local v1    # "z":I
    :pswitch_2
    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 367
    const/4 v1, -0x5

    .line 368
    .restart local v1    # "z":I
    goto :goto_1

    .line 370
    .end local v1    # "z":I
    :pswitch_3
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 371
    const/4 v1, -0x4

    .line 372
    .restart local v1    # "z":I
    goto :goto_1

    .line 374
    .end local v1    # "z":I
    :pswitch_4
    const/16 v2, 0x1d

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 375
    const/4 v1, -0x6

    .line 376
    .restart local v1    # "z":I
    goto :goto_1

    .line 378
    .end local v1    # "z":I
    :pswitch_5
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 379
    const/4 v1, -0x5

    .line 380
    .restart local v1    # "z":I
    goto :goto_1

    .line 382
    .end local v1    # "z":I
    :pswitch_6
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 383
    const/4 v1, -0x7

    .line 384
    .restart local v1    # "z":I
    goto :goto_1

    .line 386
    .end local v1    # "z":I
    :pswitch_7
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 387
    const/4 v1, -0x6

    .line 388
    .restart local v1    # "z":I
    goto :goto_1

    .line 390
    .end local v1    # "z":I
    :pswitch_8
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 391
    const/4 v1, -0x8

    .line 392
    .restart local v1    # "z":I
    goto :goto_1

    .line 394
    .end local v1    # "z":I
    :pswitch_9
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 395
    const/4 v1, -0x7

    .line 396
    .restart local v1    # "z":I
    goto :goto_1

    .line 398
    .end local v1    # "z":I
    :pswitch_a
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 399
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->getMilitaryZoneOffset(C)I

    move-result v1

    .line 400
    .restart local v1    # "z":I
    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    .line 135
    .local v0, "dt":Lorg/apache/james/mime4j/field/datetime/DateTime;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 136
    return-object v0
.end method

.method public final parseLine()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    .line 119
    .local v0, "dt":Lorg/apache/james/mime4j/field/datetime/DateTime;
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 124
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v3, v1, v2

    .line 127
    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 128
    return-object v0

    .line 119
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 121
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final second()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 319
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 320
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final time()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x17

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "s":I
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->hour()I

    move-result v0

    .line 287
    .local v0, "h":I
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 288
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->minute()I

    move-result v1

    .line 289
    .local v1, "m":I
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 295
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x4

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    .line 298
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->zone()I

    move-result v3

    .line 299
    .local v3, "z":I
    new-instance v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;-><init>(IIII)V

    return-object v4

    .line 289
    .end local v3    # "z":I
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 292
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->second()I

    move-result v2

    .line 293
    goto :goto_1

    .line 289
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final year()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 279
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 280
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method public final zone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 326
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 346
    iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x5

    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    .line 347
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 348
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v3

    .line 326
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 328
    :pswitch_0
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 329
    .local v0, "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 330
    .local v1, "u":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v4

    iget-object v5, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    mul-int v2, v4, v3

    .line 350
    .end local v0    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .end local v1    # "u":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .local v2, "z":I
    :goto_2
    return v2

    .line 330
    .end local v2    # "z":I
    .restart local v0    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1    # "u":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 343
    .end local v0    # "t":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .end local v1    # "u":Lorg/apache/james/mime4j/field/datetime/parser/Token;
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->obs_zone()I

    move-result v2

    .line 344
    .restart local v2    # "z":I
    goto :goto_2

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
