.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;
.super Ljava/lang/Object;
.source "ContentDispositionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;


# static fields
.field static commentNest:I

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
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

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

    .line 111
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    .line 604
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    .line 606
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ";"

    aput-object v2, v0, v1

    const-string v1, "="

    aput-object v1, v0, v6

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

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 609
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

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 615
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    .line 618
    new-array v0, v5, [J

    const-wide/32 v1, 0x1c001f

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoToken:[J

    .line 621
    new-array v0, v5, [J

    const-wide/16 v1, 0xa0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSkip:[J

    .line 624
    new-array v0, v5, [J

    const-wide/16 v1, 0x20

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSpecial:[J

    .line 627
    new-array v0, v5, [J

    const-wide/32 v1, 0x3ff40

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoMore:[J

    return-void

    .line 111
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 615
    :array_1
    .array-data 4
        -0x1
        -0x1
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

.method public constructor <init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 631
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    .line 632
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    .line 686
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 687
    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->defaultLexState:I

    .line 640
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    .line 641
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    .line 644
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->SwitchTo(I)V

    .line 645
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 656
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    .line 657
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

    .line 658
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 659
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
    .line 92
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 93
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 94
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
    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 88
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 108
    sget-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 109
    sget-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 110
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 103
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 104
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 105
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
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 98
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 99
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 117
    const/4 v8, 0x0

    .line 118
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 119
    const/4 v1, 0x1

    .line 120
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 121
    const v3, 0x7fffffff

    .line 124
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 126
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    .line 128
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 131
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 175
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 215
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 217
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 218
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 219
    const v3, 0x7fffffff

    .line 221
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 222
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_12

    .line 225
    :goto_3
    return p2

    .line 134
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 136
    const/16 v9, 0x14

    if-le v3, v9, :cond_4

    .line 137
    const/16 v3, 0x14

    .line 138
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    .line 146
    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 148
    const/16 v9, 0x13

    if-le v3, v9, :cond_6

    .line 149
    const/16 v3, 0x13

    .line 150
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 140
    :cond_7
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 142
    const/4 v9, 0x5

    if-le v3, v9, :cond_8

    .line 143
    const/4 v3, 0x5

    .line 144
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 154
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 156
    const/4 v3, 0x5

    .line 157
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 160
    :pswitch_2
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 162
    const/16 v9, 0x13

    if-le v3, v9, :cond_9

    .line 163
    const/16 v3, 0x13

    .line 164
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 167
    :pswitch_3
    const-wide v9, 0x3ff6cfafffffdffL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 169
    const/16 v9, 0x14

    if-le v3, v9, :cond_a

    .line 170
    const/16 v3, 0x14

    .line 171
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 177
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_e

    .line 179
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 182
    .restart local v4    # "l":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 193
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 186
    :pswitch_4
    const-wide/32 v9, -0x38000002

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 188
    const/16 v3, 0x14

    .line 189
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 197
    .end local v4    # "l":J
    :cond_e
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 198
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 201
    .local v6, "l2":J
    :cond_f
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 213
    :cond_10
    :goto_6
    if-ne v1, v8, :cond_f

    goto/16 :goto_2

    .line 205
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_10

    .line 207
    const/16 v9, 0x14

    if-le v3, v9, :cond_11

    .line 208
    const/16 v3, 0x14

    .line 209
    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    .line 224
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_12
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 182
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 201
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 263
    const/4 v8, 0x0

    .line 264
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 265
    const/4 v1, 0x1

    .line 266
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 267
    const v3, 0x7fffffff

    .line 270
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 271
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 272
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 274
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 277
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 289
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 336
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 338
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 339
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 340
    const v3, 0x7fffffff

    .line 342
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 343
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 346
    :goto_3
    return p2

    .line 280
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0xa

    if-le v3, v9, :cond_2

    .line 281
    const/16 v3, 0xa

    goto :goto_1

    .line 284
    :pswitch_1
    const/16 v9, 0x8

    if-le v3, v9, :cond_2

    .line 285
    const/16 v3, 0x8

    goto :goto_1

    .line 291
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 293
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 296
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 314
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 299
    :pswitch_2
    const/16 v9, 0xa

    if-le v3, v9, :cond_7

    .line 300
    const/16 v3, 0xa

    .line 301
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 302
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 305
    :pswitch_3
    const/16 v9, 0x8

    if-le v3, v9, :cond_6

    .line 306
    const/16 v3, 0x8

    goto :goto_4

    .line 309
    :pswitch_4
    const/16 v9, 0xa

    if-le v3, v9, :cond_6

    .line 310
    const/16 v3, 0xa

    goto :goto_4

    .line 318
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 319
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 322
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 334
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 325
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xa

    if-le v3, v9, :cond_a

    .line 326
    const/16 v3, 0xa

    goto :goto_5

    .line 329
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    if-le v3, v9, :cond_a

    .line 330
    const/16 v3, 0x8

    goto :goto_5

    .line 345
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 346
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 322
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
    .line 518
    const/4 v8, 0x0

    .line 519
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 520
    const/4 v1, 0x1

    .line 521
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 522
    const v3, 0x7fffffff

    .line 525
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 527
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 529
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 532
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 544
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 591
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 593
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 594
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 595
    const v3, 0x7fffffff

    .line 597
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 598
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 601
    :goto_3
    return p2

    .line 535
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 536
    const/16 v3, 0xe

    goto :goto_1

    .line 539
    :pswitch_1
    const/16 v9, 0xb

    if-le v3, v9, :cond_2

    .line 540
    const/16 v3, 0xb

    goto :goto_1

    .line 546
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 548
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 551
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 569
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 554
    :pswitch_2
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 555
    const/16 v3, 0xe

    .line 556
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 557
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 560
    :pswitch_3
    const/16 v9, 0xb

    if-le v3, v9, :cond_6

    .line 561
    const/16 v3, 0xb

    goto :goto_4

    .line 564
    :pswitch_4
    const/16 v9, 0xe

    if-le v3, v9, :cond_6

    .line 565
    const/16 v3, 0xe

    goto :goto_4

    .line 573
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 574
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 577
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 589
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 580
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xe

    if-le v3, v9, :cond_a

    .line 581
    const/16 v3, 0xe

    goto :goto_5

    .line 584
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xb

    if-le v3, v9, :cond_a

    .line 585
    const/16 v3, 0xb

    goto :goto_5

    .line 600
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 601
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 577
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
    .line 382
    const/4 v8, 0x0

    .line 383
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    .line 384
    const/4 v1, 0x1

    .line 385
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 386
    const v3, 0x7fffffff

    .line 389
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 390
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 391
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 393
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 396
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 412
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 470
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 472
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 473
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 474
    const v3, 0x7fffffff

    .line 476
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 477
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 480
    :goto_3
    return p2

    .line 400
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 402
    const/16 v9, 0x11

    if-le v3, v9, :cond_4

    .line 403
    const/16 v3, 0x11

    .line 404
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 407
    :pswitch_1
    const/16 v9, 0x10

    if-le v3, v9, :cond_2

    .line 408
    const/16 v3, 0x10

    goto :goto_1

    .line 414
    .end local v4    # "l":J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 416
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 419
    .restart local v4    # "l":J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 444
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 422
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 424
    const/16 v9, 0x11

    if-le v3, v9, :cond_8

    .line 425
    const/16 v3, 0x11

    .line 426
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 428
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 429
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 432
    :pswitch_3
    const/16 v9, 0x10

    if-le v3, v9, :cond_7

    .line 433
    const/16 v3, 0x10

    goto :goto_4

    .line 436
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 438
    const/16 v9, 0x11

    if-le v3, v9, :cond_a

    .line 439
    const/16 v3, 0x11

    .line 440
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 448
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 449
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 452
    .local v6, "l2":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 468
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 456
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 458
    const/16 v9, 0x11

    if-le v3, v9, :cond_e

    .line 459
    const/16 v3, 0x11

    .line 460
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 463
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x10

    if-le v3, v9, :cond_d

    .line 464
    const/16 v3, 0x10

    goto :goto_5

    .line 479
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 480
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 419
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 452
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 63
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 66
    :sswitch_0
    invoke-direct {p0, v1, v2, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_2
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_3
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_4
    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_5
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x3b -> :sswitch_4
        0x3d -> :sswitch_5
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 253
    :pswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_1
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 250
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

    .line 505
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 512
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 508
    :pswitch_0
    const/16 v0, 0xc

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 510
    :pswitch_1
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 505
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

    .line 371
    iget-char v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 376
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 374
    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 371
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
    .line 55
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 56
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 58
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
    .line 242
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 243
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 244
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 245
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
    .line 497
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 498
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 499
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 500
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
    .line 363
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 364
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 365
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 366
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
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 493
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 359
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 49
    iput p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 51
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 37
    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 230
    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 485
    .line 488
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 351
    .line 354
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 809
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 810
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 864
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 813
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 814
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 815
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 816
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 817
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 820
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 821
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 822
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 823
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 824
    sput v4, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 827
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 828
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 829
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 830
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 831
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 834
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 835
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 836
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 837
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 838
    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 841
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 842
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 843
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 844
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 845
    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 848
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 849
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 850
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 851
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 852
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 855
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 856
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 857
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 858
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 859
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x8
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

.method public ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    .prologue
    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 649
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 650
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    .line 651
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInitRounds()V

    .line 652
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    .line 663
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->SwitchTo(I)V

    .line 664
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 667
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 668
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 670
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 671
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .prologue
    .line 867
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 878
    :goto_0
    return-void

    .line 870
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 873
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 17

    .prologue
    .line 696
    const/4 v14, 0x0

    .line 698
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    const/4 v9, 0x0

    .line 705
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 715
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjimageLen:I

    .line 719
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 742
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 744
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V

    .line 746
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 748
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v12

    .line 749
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;)V

    .line 751
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 752
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 753
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :goto_3
    return-object v13

    .line 707
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :catch_0
    move-exception v10

    .line 709
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 710
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v12

    .line 711
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-object v13, v12

    .line 712
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    goto :goto_3

    .line 722
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 723
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 724
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 725
    goto :goto_2

    .line 727
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 728
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 729
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 730
    goto/16 :goto_2

    .line 732
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 733
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 734
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 735
    goto/16 :goto_2

    .line 737
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 738
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedPos:I

    .line 739
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 755
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 757
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 759
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v12

    .line 760
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    if-nez v14, :cond_5

    .line 761
    move-object v14, v12

    .line 768
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 769
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 764
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :cond_5
    iput-object v14, v12, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 765
    iput-object v12, v14, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 772
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->MoreLexicalActions()V

    .line 773
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 774
    sget-object v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    .line 775
    :cond_7
    const/4 v9, 0x0

    .line 776
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    .line 778
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 781
    :catch_1
    move-exception v1

    .line 783
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 784
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 785
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 786
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 787
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 798
    :goto_5
    if-nez v2, :cond_9

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->backup(I)V

    .line 800
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 802
    :cond_9
    :goto_6
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 788
    :catch_2
    move-exception v11

    .line 789
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 790
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 791
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 792
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 793
    const/4 v5, 0x0

    goto :goto_5

    .line 790
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 796
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 800
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 4

    .prologue
    .line 675
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    .line 676
    .local v1, "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    .line 677
    sget-object v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 678
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    .line 679
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->beginLine:I

    .line 680
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->beginColumn:I

    .line 681
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->endLine:I

    .line 682
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->endColumn:I

    .line 683
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
