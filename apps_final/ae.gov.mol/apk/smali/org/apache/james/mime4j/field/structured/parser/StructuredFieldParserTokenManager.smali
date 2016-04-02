.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;
.source "StructuredFieldParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

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
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    .line 596
    new-array v0, v3, [I

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    .line 598
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 601
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v3

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v4

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 607
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    .line 610
    new-array v0, v4, [J

    const-wide/32 v1, 0xf801

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    .line 613
    new-array v0, v4, [J

    const-wide/16 v1, 0x3fe

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    .line 616
    new-array v0, v4, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoMore:[J

    return-void

    .line 101
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 607
    :array_1
    .array-data 4
        -0x1
        0x1
        0x0
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 620
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    .line 621
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    .line 675
    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 676
    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    .line 629
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 630
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 633
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    .line 634
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 645
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    .line 646
    const/4 v0, 0x6

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 647
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 648
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
    .line 82
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 83
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 84
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
    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 78
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 98
    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 99
    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 100
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 93
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 94
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 95
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
    .line 87
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 88
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 89
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 107
    const/4 v8, 0x0

    .line 108
    .local v8, "startsAt":I
    const/4 v9, 0x2

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 109
    const/4 v1, 0x1

    .line 110
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 111
    const v3, 0x7fffffff

    .line 114
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 115
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 116
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_7

    .line 118
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 121
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 151
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 189
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 191
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 192
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 193
    const v3, 0x7fffffff

    .line 195
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 196
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x2

    if-ne v1, v8, :cond_d

    .line 199
    :goto_3
    return p2

    .line 124
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x10500002601L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 126
    const/16 v9, 0xf

    if-le v3, v9, :cond_4

    .line 127
    const/16 v3, 0xf

    .line 128
    :cond_4
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 130
    :cond_5
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 132
    const/16 v9, 0xe

    if-le v3, v9, :cond_6

    .line 133
    const/16 v3, 0xe

    .line 134
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 138
    :pswitch_1
    const-wide v9, 0x100002600L    # 2.122000597E-314

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 140
    const/16 v3, 0xe

    .line 141
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 144
    :pswitch_2
    const-wide v9, -0x10500002601L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 146
    const/16 v3, 0xf

    .line 147
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 153
    .end local v4    # "l":J
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_9

    .line 155
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 158
    .restart local v4    # "l":J
    :cond_8
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 167
    :goto_4
    if-ne v1, v8, :cond_8

    goto/16 :goto_2

    .line 162
    :pswitch_3
    const/16 v3, 0xf

    .line 163
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 171
    .end local v4    # "l":J
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 172
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 175
    .local v6, "l2":J
    :cond_a
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 187
    :cond_b
    :goto_5
    if-ne v1, v8, :cond_a

    goto/16 :goto_2

    .line 179
    :pswitch_4
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    .line 181
    const/16 v9, 0xf

    if-le v3, v9, :cond_c

    .line 182
    const/16 v3, 0xf

    .line 183
    :cond_c
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 198
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_d
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 158
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 175
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 237
    const/4 v8, 0x0

    .line 238
    .local v8, "startsAt":I
    const/4 v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 239
    const/4 v1, 0x1

    .line 240
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 241
    const v3, 0x7fffffff

    .line 244
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 245
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 246
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 248
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 251
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 259
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 291
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 293
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 294
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 295
    const v3, 0x7fffffff

    .line 297
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 298
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x1

    if-ne v1, v8, :cond_9

    .line 301
    :goto_3
    return p2

    .line 254
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x30000000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 255
    const/4 v3, 0x4

    goto :goto_1

    .line 261
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_6

    .line 263
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 266
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 273
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 269
    :pswitch_1
    const/4 v3, 0x4

    .line 270
    goto :goto_4

    .line 277
    .end local v4    # "l":J
    :cond_6
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 278
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 281
    .local v6, "l2":J
    :cond_7
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 289
    :cond_8
    :goto_5
    if-ne v1, v8, :cond_7

    goto :goto_2

    .line 284
    :pswitch_2
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    const/4 v9, 0x4

    if-le v3, v9, :cond_8

    .line 285
    const/4 v3, 0x4

    goto :goto_5

    .line 300
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_9
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_3

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 281
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 505
    const/4 v8, 0x0

    .line 506
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 507
    const/4 v1, 0x1

    .line 508
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 509
    const v3, 0x7fffffff

    .line 512
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 513
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 514
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 516
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 519
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 532
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 583
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 585
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 586
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 587
    const v3, 0x7fffffff

    .line 589
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 590
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_e

    .line 593
    :goto_3
    return p2

    .line 522
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x30000000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    if-le v3, v9, :cond_2

    .line 523
    const/16 v3, 0x8

    goto :goto_1

    .line 526
    :pswitch_1
    const/4 v9, 0x7

    if-le v3, v9, :cond_4

    .line 527
    const/4 v3, 0x7

    .line 528
    :cond_4
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_1

    .line 534
    .end local v4    # "l":J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_a

    .line 536
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 539
    .restart local v4    # "l":J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 558
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 542
    :pswitch_2
    const/16 v9, 0x8

    if-le v3, v9, :cond_8

    .line 543
    const/16 v3, 0x8

    .line 544
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 545
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 548
    :pswitch_3
    const/4 v9, 0x7

    if-le v3, v9, :cond_9

    .line 549
    const/4 v3, 0x7

    .line 550
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 553
    :pswitch_4
    const/16 v9, 0x8

    if-le v3, v9, :cond_7

    .line 554
    const/16 v3, 0x8

    goto :goto_4

    .line 562
    .end local v4    # "l":J
    :cond_a
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 563
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 566
    .local v6, "l2":J
    :cond_b
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 581
    :cond_c
    :goto_5
    if-ne v1, v8, :cond_b

    goto/16 :goto_2

    .line 569
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    const/16 v9, 0x8

    if-le v3, v9, :cond_c

    .line 570
    const/16 v3, 0x8

    goto :goto_5

    .line 573
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 575
    const/4 v9, 0x7

    if-le v3, v9, :cond_d

    .line 576
    const/4 v3, 0x7

    .line 577
    :cond_d
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_5

    .line 592
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_e
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 593
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 539
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 566
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
    .line 337
    const/4 v8, 0x0

    .line 338
    .local v8, "startsAt":I
    const/4 v9, 0x6

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 339
    const/4 v1, 0x1

    .line 340
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 341
    const v3, 0x7fffffff

    .line 344
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 345
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 346
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_a

    .line 348
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 351
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 395
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 457
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 459
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 460
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 461
    const v3, 0x7fffffff

    .line 463
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 464
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x6

    if-ne v1, v8, :cond_16

    .line 467
    :goto_3
    return p2

    .line 354
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x400002001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 356
    const/16 v9, 0xb

    if-le v3, v9, :cond_4

    .line 357
    const/16 v3, 0xb

    .line 358
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 360
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 361
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x3

    aput v11, v9, v10

    goto :goto_1

    .line 364
    :pswitch_1
    const/16 v9, 0xa

    if-le v3, v9, :cond_6

    .line 365
    const/16 v3, 0xa

    .line 366
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_1

    .line 369
    :pswitch_2
    const-wide v9, -0x400002001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 371
    const/16 v9, 0xb

    if-le v3, v9, :cond_7

    .line 372
    const/16 v3, 0xb

    .line 373
    :cond_7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 376
    :pswitch_3
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2

    .line 378
    const/16 v9, 0xc

    if-le v3, v9, :cond_8

    .line 379
    const/16 v3, 0xc

    .line 380
    :cond_8
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 383
    :pswitch_4
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 385
    const/16 v9, 0xc

    if-le v3, v9, :cond_9

    .line 386
    const/16 v3, 0xc

    .line 387
    :cond_9
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 390
    :pswitch_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 391
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x3

    aput v11, v9, v10

    goto/16 :goto_1

    .line 397
    .end local v4    # "l":J
    :cond_a
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_11

    .line 399
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 402
    .restart local v4    # "l":J
    :cond_b
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 428
    :cond_c
    :goto_4
    if-ne v1, v8, :cond_b

    goto/16 :goto_2

    .line 405
    :pswitch_6
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_e

    .line 407
    const/16 v9, 0xb

    if-le v3, v9, :cond_d

    .line 408
    const/16 v3, 0xb

    .line 409
    :cond_d
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 411
    :cond_e
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_c

    .line 412
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 415
    :pswitch_7
    const/16 v9, 0xa

    if-le v3, v9, :cond_f

    .line 416
    const/16 v3, 0xa

    .line 417
    :cond_f
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 420
    :pswitch_8
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 422
    const/16 v9, 0xb

    if-le v3, v9, :cond_10

    .line 423
    const/16 v3, 0xb

    .line 424
    :cond_10
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 432
    .end local v4    # "l":J
    :cond_11
    iget-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 433
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 436
    .local v6, "l2":J
    :cond_12
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 455
    :cond_13
    :goto_5
    if-ne v1, v8, :cond_12

    goto/16 :goto_2

    .line 440
    :pswitch_9
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_13

    .line 442
    const/16 v9, 0xb

    if-le v3, v9, :cond_14

    .line 443
    const/16 v3, 0xb

    .line 444
    :cond_14
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 447
    :pswitch_a
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_13

    .line 449
    const/16 v9, 0xa

    if-le v3, v9, :cond_15

    .line 450
    const/16 v3, 0xa

    .line 451
    :cond_15
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_5

    .line 466
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_16
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 402
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 436
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 227
    :pswitch_0
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 229
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 224
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

    .line 492
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 499
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 495
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 497
    :pswitch_1
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 492
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

    .line 326
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 331
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 329
    :pswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 326
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
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

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
    .line 216
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 217
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 218
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 219
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
    .line 484
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 485
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 486
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 487
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
    .line 318
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 319
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 320
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 321
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
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 480
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

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
    .line 204
    .line 207
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 472
    .line 475
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 306
    .line 309
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 3

    .prologue
    .line 818
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 819
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 831
    :goto_0
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 824
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 825
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 826
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .prologue
    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 638
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 639
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 640
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 641
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 652
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    .line 653
    return-void
.end method

.method SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 5
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/structured/parser/Token;

    .prologue
    const/4 v4, 0x1

    .line 786
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 815
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 789
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 791
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 792
    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 796
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 797
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 798
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 802
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 803
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 804
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 807
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 808
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 809
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 810
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 656
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 657
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 659
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 660
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/structured/parser/Token;

    .prologue
    .line 834
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 845
    :goto_0
    return-void

    .line 837
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 840
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 17

    .prologue
    .line 685
    const/4 v14, 0x0

    .line 687
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    const/4 v9, 0x0

    .line 694
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 703
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 707
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_6

    .line 732
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    .line 734
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 736
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v12

    .line 737
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 738
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 739
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 740
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :goto_3
    return-object v13

    .line 696
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :catch_0
    move-exception v10

    .line 698
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 699
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v12

    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    move-object v13, v12

    .line 700
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    goto :goto_3

    .line 710
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/structured/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 711
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 712
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 713
    goto :goto_2

    .line 715
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 716
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 717
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 718
    goto/16 :goto_2

    .line 720
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 721
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 722
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 723
    goto/16 :goto_2

    .line 725
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 726
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 727
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    goto/16 :goto_2

    .line 742
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 744
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 745
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 746
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 749
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->MoreLexicalActions()V

    .line 750
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 751
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 752
    :cond_5
    const/4 v9, 0x0

    .line 753
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 755
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 758
    :catch_1
    move-exception v1

    .line 760
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 761
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 762
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 763
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 764
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 775
    :goto_4
    if-nez v2, :cond_7

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    .line 777
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 779
    :cond_7
    :goto_5
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 765
    :catch_2
    move-exception v11

    .line 766
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 767
    const/4 v1, 0x1

    if-gt v9, v1, :cond_9

    const-string v6, ""

    .line 768
    :goto_6
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a

    .line 769
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 770
    const/4 v5, 0x0

    goto :goto_4

    .line 767
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 773
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 777
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 4

    .prologue
    .line 664
    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/structured/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    .line 665
    .local v1, "t":Lorg/apache/james/mime4j/field/structured/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    .line 666
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 667
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    .line 668
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginLine:I

    .line 669
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginColumn:I

    .line 670
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->endLine:I

    .line 671
    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->endColumn:I

    .line 672
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
