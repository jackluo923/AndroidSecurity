.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;
.source "ContentLanguageParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


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

.field protected input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

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

    .line 268
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    .line 615
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    .line 617
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ","

    aput-object v1, v0, v5

    const-string v1, "-"

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

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 620
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

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 626
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    .line 629
    new-array v0, v5, [J

    const-wide/32 v1, 0x1f0007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    .line 632
    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    .line 635
    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    .line 638
    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoMore:[J

    return-void

    .line 268
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 626
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
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 642
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    .line 643
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    .line 697
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 698
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    .line 651
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 652
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 655
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    .line 656
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 667
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    .line 668
    const/4 v0, 0x4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 669
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 670
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
    .line 90
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 91
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 92
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
    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 86
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 106
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 107
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 108
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 101
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 102
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 103
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
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 96
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 97
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 112
    const/4 v8, 0x0

    .line 113
    .local v8, "startsAt":I
    const/4 v9, 0x4

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 114
    const/4 v1, 0x1

    .line 115
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 116
    const v3, 0x7fffffff

    .line 119
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 121
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    .line 123
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 126
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 170
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 223
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 225
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 226
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 227
    const v3, 0x7fffffff

    .line 229
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 230
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v1, v8, :cond_15

    .line 233
    :goto_3
    return p2

    .line 129
    .restart local v4    # "l":J
    :pswitch_1
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 131
    const/16 v9, 0x13

    if-le v3, v9, :cond_4

    .line 132
    const/16 v3, 0x13

    .line 133
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 141
    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 143
    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 144
    const/16 v3, 0x11

    .line 145
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 135
    :cond_7
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 137
    const/4 v9, 0x3

    if-le v3, v9, :cond_8

    .line 138
    const/4 v3, 0x3

    .line 139
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 149
    :pswitch_2
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 151
    const/4 v3, 0x3

    .line 152
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 155
    :pswitch_3
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 157
    const/16 v9, 0x11

    if-le v3, v9, :cond_9

    .line 158
    const/16 v3, 0x11

    .line 159
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 162
    :pswitch_4
    const-wide/high16 v9, 0x3ff000000000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 164
    const/16 v9, 0x13

    if-le v3, v9, :cond_a

    .line 165
    const/16 v3, 0x13

    .line 166
    :cond_a
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 172
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_13

    .line 174
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 177
    .restart local v4    # "l":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 209
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 180
    :pswitch_5
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    .line 182
    const/16 v9, 0x13

    if-le v3, v9, :cond_e

    .line 183
    const/16 v3, 0x13

    .line 184
    :cond_e
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 186
    :cond_f
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 188
    const/16 v9, 0x12

    if-le v3, v9, :cond_10

    .line 189
    const/16 v3, 0x12

    .line 190
    :cond_10
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 194
    :pswitch_6
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 196
    const/16 v9, 0x12

    if-le v3, v9, :cond_11

    .line 197
    const/16 v3, 0x12

    .line 198
    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 201
    :pswitch_7
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 203
    const/16 v9, 0x13

    if-le v3, v9, :cond_12

    .line 204
    const/16 v3, 0x13

    .line 205
    :cond_12
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 213
    .end local v4    # "l":J
    :cond_13
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 214
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 217
    .local v6, "l2":J
    :cond_14
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 221
    if-ne v1, v8, :cond_14

    goto/16 :goto_2

    .line 232
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_15
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 274
    const/4 v8, 0x0

    .line 275
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 276
    const/4 v1, 0x1

    .line 277
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 278
    const v3, 0x7fffffff

    .line 281
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 282
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 283
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 285
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 288
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 300
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 347
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 349
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 350
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 351
    const v3, 0x7fffffff

    .line 353
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 354
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 357
    :goto_3
    return p2

    .line 291
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x8

    if-le v3, v9, :cond_2

    .line 292
    const/16 v3, 0x8

    goto :goto_1

    .line 295
    :pswitch_1
    const/4 v9, 0x6

    if-le v3, v9, :cond_2

    .line 296
    const/4 v3, 0x6

    goto :goto_1

    .line 302
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 304
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 307
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 325
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 310
    :pswitch_2
    const/16 v9, 0x8

    if-le v3, v9, :cond_7

    .line 311
    const/16 v3, 0x8

    .line 312
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 313
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 316
    :pswitch_3
    const/4 v9, 0x6

    if-le v3, v9, :cond_6

    .line 317
    const/4 v3, 0x6

    goto :goto_4

    .line 320
    :pswitch_4
    const/16 v9, 0x8

    if-le v3, v9, :cond_6

    .line 321
    const/16 v3, 0x8

    goto :goto_4

    .line 329
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 330
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 333
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 345
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 336
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    if-le v3, v9, :cond_a

    .line 337
    const/16 v3, 0x8

    goto :goto_5

    .line 340
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/4 v9, 0x6

    if-le v3, v9, :cond_a

    .line 341
    const/4 v3, 0x6

    goto :goto_5

    .line 356
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 333
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
    .line 529
    const/4 v8, 0x0

    .line 530
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 531
    const/4 v1, 0x1

    .line 532
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 533
    const v3, 0x7fffffff

    .line 536
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 537
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 538
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 540
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 543
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 555
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 602
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 604
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 605
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 606
    const v3, 0x7fffffff

    .line 608
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 609
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 612
    :goto_3
    return p2

    .line 546
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    .line 547
    const/16 v3, 0xc

    goto :goto_1

    .line 550
    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    .line 551
    const/16 v3, 0x9

    goto :goto_1

    .line 557
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 559
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 562
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 580
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 565
    :pswitch_2
    const/16 v9, 0xc

    if-le v3, v9, :cond_7

    .line 566
    const/16 v3, 0xc

    .line 567
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 568
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 571
    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    .line 572
    const/16 v3, 0x9

    goto :goto_4

    .line 575
    :pswitch_4
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 576
    const/16 v3, 0xc

    goto :goto_4

    .line 584
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 585
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 588
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 600
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 591
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    .line 592
    const/16 v3, 0xc

    goto :goto_5

    .line 595
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    .line 596
    const/16 v3, 0x9

    goto :goto_5

    .line 611
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 562
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 588
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
    .line 393
    const/4 v8, 0x0

    .line 394
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 395
    const/4 v1, 0x1

    .line 396
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 397
    const v3, 0x7fffffff

    .line 400
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 401
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 402
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 404
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 407
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 423
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 481
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 483
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 484
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 485
    const v3, 0x7fffffff

    .line 487
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 488
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 491
    :goto_3
    return p2

    .line 411
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 413
    const/16 v9, 0xf

    if-le v3, v9, :cond_4

    .line 414
    const/16 v3, 0xf

    .line 415
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 418
    :pswitch_1
    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 419
    const/16 v3, 0xe

    goto :goto_1

    .line 425
    .end local v4    # "l":J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 427
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 430
    .restart local v4    # "l":J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 455
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 433
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 435
    const/16 v9, 0xf

    if-le v3, v9, :cond_8

    .line 436
    const/16 v3, 0xf

    .line 437
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 439
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 440
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 443
    :pswitch_3
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 444
    const/16 v3, 0xe

    goto :goto_4

    .line 447
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 449
    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    .line 450
    const/16 v3, 0xf

    .line 451
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 459
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 460
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 463
    .local v6, "l2":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 479
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 467
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 469
    const/16 v9, 0xf

    if-le v3, v9, :cond_e

    .line 470
    const/16 v3, 0xf

    .line 471
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 474
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0xe

    if-le v3, v9, :cond_d

    .line 475
    const/16 v3, 0xe

    goto :goto_5

    .line 490
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 430
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 463
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
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 63
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 66
    :sswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_4
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 265
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 263
    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 258
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

    .line 516
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 523
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 519
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 521
    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 516
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

    .line 382
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 387
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 385
    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 382
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
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 56
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

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
    .line 250
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 251
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 253
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
    .line 508
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 509
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 511
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
    .line 374
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 375
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 376
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 377
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
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 370
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 49
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

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
    .line 238
    .line 241
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 496
    .line 499
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 362
    .line 365
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 820
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 821
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 875
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 824
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 825
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 826
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 827
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 828
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 831
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 832
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 833
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 834
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 835
    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 838
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 840
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 841
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 842
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 845
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 847
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 848
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 849
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 852
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 854
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 855
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 856
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 859
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 860
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 861
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 862
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 863
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 866
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 867
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 868
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 869
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 870
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 821
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

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .prologue
    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 660
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 661
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 662
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 663
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 674
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    .line 675
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 678
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 679
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 681
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 682
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/language/parser/Token;

    .prologue
    .line 878
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 889
    :goto_0
    return-void

    .line 881
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 884
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 17

    .prologue
    .line 707
    const/4 v14, 0x0

    .line 709
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    const/4 v9, 0x0

    .line 716
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 726
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 730
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 753
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 755
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 757
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 759
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v12

    .line 760
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 761
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V

    .line 762
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 763
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 764
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :goto_3
    return-object v13

    .line 718
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :catch_0
    move-exception v10

    .line 720
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v12

    .line 722
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    move-object v13, v12

    .line 723
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    goto :goto_3

    .line 733
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 734
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 735
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 736
    goto :goto_2

    .line 738
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 739
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 740
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 741
    goto/16 :goto_2

    .line 743
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 744
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 745
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 746
    goto/16 :goto_2

    .line 748
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 749
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 750
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 766
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 768
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 770
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v12

    .line 771
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    if-nez v14, :cond_5

    .line 772
    move-object v14, v12

    .line 779
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 780
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 775
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :cond_5
    iput-object v14, v12, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 776
    iput-object v12, v14, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 783
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    .line 784
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 785
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 786
    :cond_7
    const/4 v9, 0x0

    .line 787
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 789
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 792
    :catch_1
    move-exception v1

    .line 794
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 795
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 796
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 797
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 798
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 809
    :goto_5
    if-nez v2, :cond_9

    .line 810
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 811
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 813
    :cond_9
    :goto_6
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 799
    :catch_2
    move-exception v11

    .line 800
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 801
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 802
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 803
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 804
    const/4 v5, 0x0

    goto :goto_5

    .line 801
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 807
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 811
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 4

    .prologue
    .line 686
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/language/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    .line 687
    .local v1, "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    .line 688
    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 689
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    .line 690
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->beginLine:I

    .line 691
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->beginColumn:I

    .line 692
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->endLine:I

    .line 693
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->endColumn:I

    .line 694
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
