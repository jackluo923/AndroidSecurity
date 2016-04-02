.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;
.super Ljava/lang/Object;
.source "MimeVersionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 224
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    .line 571
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    .line 573
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 576
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 582
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    .line 585
    new-array v0, v5, [J

    const-wide/32 v1, 0x70007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    .line 588
    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    .line 591
    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    .line 594
    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoMore:[J

    return-void

    .line 224
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 582
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 598
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    .line 599
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    .line 653
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 654
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    .line 607
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .line 608
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 611
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    .line 612
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 623
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    .line 624
    const/4 v0, 0x3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 625
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 626
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 88
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 89
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 90
    return-void

    :cond_0
    move p1, v0

    .end local v0    # "start":I
    .restart local p1    # "start":I
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 82
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 84
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 104
    sget-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 105
    sget-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 106
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 99
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 100
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 101
    return-void

    :cond_0
    move p1, v0

    .end local v0    # "start":I
    .restart local p1    # "start":I
    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 94
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 95
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, "startsAt":I
    const/4 v9, 0x2

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 112
    const/4 v1, 0x1

    .line 113
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 114
    const v3, 0x7fffffff

    .line 117
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 119
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_7

    .line 121
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 124
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 154
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 179
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 181
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 182
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 183
    const v3, 0x7fffffff

    .line 185
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 186
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x2

    if-ne v1, v8, :cond_b

    .line 189
    :goto_3
    return p2

    .line 127
    .restart local v4    # "l":J
    :pswitch_0
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 129
    const/16 v9, 0x11

    if-le v3, v9, :cond_4

    .line 130
    const/16 v3, 0x11

    .line 131
    :cond_4
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 133
    :cond_5
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 135
    const/4 v9, 0x3

    if-le v3, v9, :cond_6

    .line 136
    const/4 v3, 0x3

    .line 137
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 141
    :pswitch_1
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 143
    const/4 v3, 0x3

    .line 144
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 147
    :pswitch_2
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 149
    const/16 v3, 0x11

    .line 150
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 156
    .end local v4    # "l":J
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_9

    .line 158
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 161
    .restart local v4    # "l":J
    :cond_8
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 165
    if-ne v1, v8, :cond_8

    goto :goto_2

    .line 169
    .end local v4    # "l":J
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 170
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 173
    .local v6, "l2":J
    :cond_a
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 177
    if-ne v1, v8, :cond_a

    goto/16 :goto_2

    .line 188
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 230
    const/4 v8, 0x0

    .line 231
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 232
    const/4 v1, 0x1

    .line 233
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 234
    const v3, 0x7fffffff

    .line 237
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 238
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 239
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 241
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 244
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 256
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 303
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 305
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 306
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 307
    const v3, 0x7fffffff

    .line 309
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 310
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 313
    :goto_3
    return p2

    .line 247
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x8

    if-le v3, v9, :cond_2

    .line 248
    const/16 v3, 0x8

    goto :goto_1

    .line 251
    :pswitch_1
    const/4 v9, 0x6

    if-le v3, v9, :cond_2

    .line 252
    const/4 v3, 0x6

    goto :goto_1

    .line 258
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 260
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 263
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 281
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 266
    :pswitch_2
    const/16 v9, 0x8

    if-le v3, v9, :cond_7

    .line 267
    const/16 v3, 0x8

    .line 268
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 269
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 272
    :pswitch_3
    const/4 v9, 0x6

    if-le v3, v9, :cond_6

    .line 273
    const/4 v3, 0x6

    goto :goto_4

    .line 276
    :pswitch_4
    const/16 v9, 0x8

    if-le v3, v9, :cond_6

    .line 277
    const/16 v3, 0x8

    goto :goto_4

    .line 285
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 286
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 289
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 301
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 292
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    if-le v3, v9, :cond_a

    .line 293
    const/16 v3, 0x8

    goto :goto_5

    .line 296
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/4 v9, 0x6

    if-le v3, v9, :cond_a

    .line 297
    const/4 v3, 0x6

    goto :goto_5

    .line 312
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 313
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 289
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 485
    const/4 v8, 0x0

    .line 486
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 487
    const/4 v1, 0x1

    .line 488
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 489
    const v3, 0x7fffffff

    .line 492
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 493
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 494
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 496
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 499
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 511
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 558
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 560
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 561
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 562
    const v3, 0x7fffffff

    .line 564
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 565
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 568
    :goto_3
    return p2

    .line 502
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    .line 503
    const/16 v3, 0xc

    goto :goto_1

    .line 506
    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    .line 507
    const/16 v3, 0x9

    goto :goto_1

    .line 513
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 515
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 518
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 536
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 521
    :pswitch_2
    const/16 v9, 0xc

    if-le v3, v9, :cond_7

    .line 522
    const/16 v3, 0xc

    .line 523
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 524
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 527
    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    .line 528
    const/16 v3, 0x9

    goto :goto_4

    .line 531
    :pswitch_4
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 532
    const/16 v3, 0xc

    goto :goto_4

    .line 540
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 541
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 544
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 556
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 547
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    .line 548
    const/16 v3, 0xc

    goto :goto_5

    .line 551
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    .line 552
    const/16 v3, 0x9

    goto :goto_5

    .line 567
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 568
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 518
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 544
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 349
    const/4 v8, 0x0

    .line 350
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 351
    const/4 v1, 0x1

    .line 352
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 353
    const v3, 0x7fffffff

    .line 356
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 357
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 358
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 360
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 363
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 379
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 437
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 439
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 440
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 441
    const v3, 0x7fffffff

    .line 443
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 444
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 447
    :goto_3
    return p2

    .line 367
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 369
    const/16 v9, 0xf

    if-le v3, v9, :cond_4

    .line 370
    const/16 v3, 0xf

    .line 371
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 374
    :pswitch_1
    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 375
    const/16 v3, 0xe

    goto :goto_1

    .line 381
    .end local v4    # "l":J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 383
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 386
    .restart local v4    # "l":J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 411
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 389
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 391
    const/16 v9, 0xf

    if-le v3, v9, :cond_8

    .line 392
    const/16 v3, 0xf

    .line 393
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 395
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 396
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 399
    :pswitch_3
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 400
    const/16 v3, 0xe

    goto :goto_4

    .line 403
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 405
    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    .line 406
    const/16 v3, 0xf

    .line 407
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 415
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 416
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 419
    .local v6, "l2":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 435
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 423
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 425
    const/16 v9, 0xf

    if-le v3, v9, :cond_e

    .line 426
    const/16 v3, 0xf

    .line 427
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 430
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0xe

    if-le v3, v9, :cond_d

    .line 431
    const/16 v3, 0xe

    goto :goto_5

    .line 446
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 447
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 386
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 419
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 74
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    invoke-direct {p0, v1, v2, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_2
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_4
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2e -> :sswitch_4
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 217
    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 219
    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 479
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 475
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 477
    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 343
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 341
    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 206
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 207
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 208
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 464
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 465
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 466
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 330
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 331
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 332
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 460
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 49
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 35
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 194
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 452
    .line 455
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 318
    .line 321
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 777
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 831
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 780
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 781
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 783
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 784
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 787
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 788
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 789
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 790
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 791
    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 794
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 795
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 796
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 797
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 798
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 801
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 802
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 803
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 804
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 805
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 808
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 809
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 810
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 811
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 812
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 815
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 816
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 817
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 818
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 819
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 822
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 824
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 825
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 826
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .prologue
    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 616
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 617
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .line 618
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 619
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 630
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    .line 631
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 634
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 635
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 637
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 638
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .prologue
    .line 834
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 845
    :goto_0
    return-void

    .line 837
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 840
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 17

    .prologue
    .line 663
    const/4 v14, 0x0

    .line 665
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    const/4 v9, 0x0

    .line 672
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 682
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 686
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 709
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 711
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    .line 713
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 715
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v12

    .line 716
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 717
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V

    .line 718
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 719
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 720
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :goto_3
    return-object v13

    .line 674
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :catch_0
    move-exception v10

    .line 676
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 677
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v12

    .line 678
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-object v13, v12

    .line 679
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    goto :goto_3

    .line 689
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 690
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 691
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 692
    goto :goto_2

    .line 694
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 695
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 696
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 697
    goto/16 :goto_2

    .line 699
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 700
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 701
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 702
    goto/16 :goto_2

    .line 704
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 705
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 706
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 722
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 724
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 726
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v12

    .line 727
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    if-nez v14, :cond_5

    .line 728
    move-object v14, v12

    .line 735
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 736
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 731
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :cond_5
    iput-object v14, v12, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 732
    iput-object v12, v14, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 739
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->MoreLexicalActions()V

    .line 740
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 741
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 742
    :cond_7
    const/4 v9, 0x0

    .line 743
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 745
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 748
    :catch_1
    move-exception v1

    .line 750
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 751
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 752
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 753
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 754
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 765
    :goto_5
    if-nez v2, :cond_9

    .line 766
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    .line 767
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 769
    :cond_9
    :goto_6
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 755
    :catch_2
    move-exception v11

    .line 756
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 757
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 758
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 759
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 760
    const/4 v5, 0x0

    goto :goto_5

    .line 757
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 763
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 767
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 4

    .prologue
    .line 642
    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 643
    .local v1, "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    .line 644
    sget-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 645
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    .line 646
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginLine:I

    .line 647
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginColumn:I

    .line 648
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endLine:I

    .line 649
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endColumn:I

    .line 650
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
