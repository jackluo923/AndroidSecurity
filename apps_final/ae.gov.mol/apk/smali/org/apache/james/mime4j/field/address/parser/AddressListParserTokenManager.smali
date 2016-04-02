.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


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

.field protected input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

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

    .line 247
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    .line 716
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    .line 718
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, ":"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "."

    aput-object v2, v0, v1

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

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 722
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "NESTED_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 729
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    .line 733
    new-array v0, v5, [J

    const-wide v1, 0x800443ffL

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    .line 736
    new-array v0, v5, [J

    const-wide/32 v1, 0x100400

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    .line 739
    new-array v0, v5, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 742
    new-array v0, v5, [J

    const-wide/32 v1, 0x7feb8000

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoMore:[J

    return-void

    .line 247
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 729
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .prologue
    const/4 v1, 0x0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 746
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    .line 747
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    .line 801
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 802
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    .line 755
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 756
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 759
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 760
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 771
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    .line 772
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

    .line 773
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 774
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
    .line 102
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 103
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 104
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
    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 98
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 118
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 119
    sget-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 120
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 113
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 114
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 115
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
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 108
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 109
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 124
    const/4 v8, 0x0

    .line 125
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 126
    const/4 v1, 0x1

    .line 127
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 128
    const v3, 0x7fffffff

    .line 131
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 133
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_8

    .line 135
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 138
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 169
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 202
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 204
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 205
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 206
    const v3, 0x7fffffff

    .line 208
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 209
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_e

    .line 212
    :goto_3
    return p2

    .line 141
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x5c00530600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 143
    const/16 v9, 0xe

    if-le v3, v9, :cond_4

    .line 144
    const/16 v3, 0xe

    .line 145
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 147
    :cond_5
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 149
    const/16 v9, 0xa

    if-le v3, v9, :cond_6

    .line 150
    const/16 v3, 0xa

    .line 151
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 155
    :pswitch_1
    const-wide v9, 0x100000200L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 157
    const/16 v3, 0xa

    .line 158
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 161
    :pswitch_2
    const-wide v9, -0x5c00130600000000L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 163
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 164
    const/16 v3, 0xe

    .line 165
    :cond_7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 171
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_c

    .line 173
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 176
    .restart local v4    # "l":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 188
    :cond_a
    :goto_4
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 180
    :pswitch_3
    const-wide v9, 0x7fffffffc7fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 182
    const/16 v9, 0xe

    if-le v3, v9, :cond_b

    .line 183
    const/16 v3, 0xe

    .line 184
    :cond_b
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 192
    .end local v4    # "l":J
    :cond_c
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 193
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 196
    .local v6, "l2":J
    :cond_d
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 200
    if-ne v1, v8, :cond_d

    goto/16 :goto_2

    .line 211
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_e
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 629
    const/4 v1, 0x1

    .line 630
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 631
    const v3, 0x7fffffff

    .line 634
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 635
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 636
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 638
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 641
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 653
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 703
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 705
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 706
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 707
    const v3, 0x7fffffff

    .line 709
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 710
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 713
    :goto_3
    return p2

    .line 644
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x11

    if-le v3, v9, :cond_2

    .line 645
    const/16 v3, 0x11

    goto :goto_1

    .line 648
    :pswitch_1
    const/16 v9, 0x10

    if-le v3, v9, :cond_2

    .line 649
    const/16 v3, 0x10

    goto :goto_1

    .line 655
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 657
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 660
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 681
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 663
    :pswitch_2
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 665
    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 666
    const/16 v3, 0x11

    goto :goto_4

    .line 668
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 669
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 672
    :pswitch_3
    const/16 v9, 0x10

    if-le v3, v9, :cond_6

    .line 673
    const/16 v3, 0x10

    goto :goto_4

    .line 676
    :pswitch_4
    const-wide/32 v9, -0x38000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 677
    const/16 v3, 0x11

    goto :goto_4

    .line 685
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 686
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 689
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 701
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto/16 :goto_2

    .line 692
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x11

    if-le v3, v9, :cond_a

    .line 693
    const/16 v3, 0x11

    goto :goto_5

    .line 696
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x10

    if-le v3, v9, :cond_a

    .line 697
    const/16 v3, 0x10

    goto :goto_5

    .line 712
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 713
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 689
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
    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 255
    const/4 v1, 0x1

    .line 256
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 257
    const v3, 0x7fffffff

    .line 260
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 261
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 262
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 264
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 267
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 279
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 326
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 328
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 329
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 330
    const v3, 0x7fffffff

    .line 332
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 333
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 336
    :goto_3
    return p2

    .line 270
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x17

    if-le v3, v9, :cond_2

    .line 271
    const/16 v3, 0x17

    goto :goto_1

    .line 274
    :pswitch_1
    const/16 v9, 0x15

    if-le v3, v9, :cond_2

    .line 275
    const/16 v3, 0x15

    goto :goto_1

    .line 281
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 283
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 286
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 304
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 289
    :pswitch_2
    const/16 v9, 0x17

    if-le v3, v9, :cond_7

    .line 290
    const/16 v3, 0x17

    .line 291
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 292
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 295
    :pswitch_3
    const/16 v9, 0x15

    if-le v3, v9, :cond_6

    .line 296
    const/16 v3, 0x15

    goto :goto_4

    .line 299
    :pswitch_4
    const/16 v9, 0x17

    if-le v3, v9, :cond_6

    .line 300
    const/16 v3, 0x17

    goto :goto_4

    .line 308
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 309
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 312
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 324
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 315
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x17

    if-le v3, v9, :cond_a

    .line 316
    const/16 v3, 0x17

    goto :goto_5

    .line 319
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x15

    if-le v3, v9, :cond_a

    .line 320
    const/16 v3, 0x15

    goto :goto_5

    .line 335
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 312
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
    .line 508
    const/4 v8, 0x0

    .line 509
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 510
    const/4 v1, 0x1

    .line 511
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 512
    const v3, 0x7fffffff

    .line 515
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 516
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 517
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 519
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 522
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 534
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 581
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 583
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 584
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 585
    const v3, 0x7fffffff

    .line 587
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 588
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_b

    .line 591
    :goto_3
    return p2

    .line 525
    .restart local v4    # "l":J
    :pswitch_0
    const/16 v9, 0x1b

    if-le v3, v9, :cond_2

    .line 526
    const/16 v3, 0x1b

    goto :goto_1

    .line 529
    :pswitch_1
    const/16 v9, 0x18

    if-le v3, v9, :cond_2

    .line 530
    const/16 v3, 0x18

    goto :goto_1

    .line 536
    .end local v4    # "l":J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 538
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 541
    .restart local v4    # "l":J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 559
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 544
    :pswitch_2
    const/16 v9, 0x1b

    if-le v3, v9, :cond_7

    .line 545
    const/16 v3, 0x1b

    .line 546
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 547
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 550
    :pswitch_3
    const/16 v9, 0x18

    if-le v3, v9, :cond_6

    .line 551
    const/16 v3, 0x18

    goto :goto_4

    .line 554
    :pswitch_4
    const/16 v9, 0x1b

    if-le v3, v9, :cond_6

    .line 555
    const/16 v3, 0x1b

    goto :goto_4

    .line 563
    .end local v4    # "l":J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 564
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 567
    .local v6, "l2":J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 579
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 570
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x1b

    if-le v3, v9, :cond_a

    .line 571
    const/16 v3, 0x1b

    goto :goto_5

    .line 574
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x18

    if-le v3, v9, :cond_a

    .line 575
    const/16 v3, 0x18

    goto :goto_5

    .line 590
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 591
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 541
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 567
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_4(II)I
    .locals 13
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .prologue
    .line 372
    const/4 v8, 0x0

    .line 373
    .local v8, "startsAt":I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 374
    const/4 v1, 0x1

    .line 375
    .local v1, "i":I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 376
    const v3, 0x7fffffff

    .line 379
    .local v3, "kind":I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 380
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 381
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 383
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 386
    .local v4, "l":J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 402
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 460
    .end local v4    # "l":J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 462
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 463
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 464
    const v3, 0x7fffffff

    .line 466
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 467
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x3

    if-ne v1, v8, :cond_f

    .line 470
    :goto_3
    return p2

    .line 390
    .restart local v4    # "l":J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 392
    const/16 v9, 0x1e

    if-le v3, v9, :cond_4

    .line 393
    const/16 v3, 0x1e

    .line 394
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 397
    :pswitch_1
    const/16 v9, 0x1d

    if-le v3, v9, :cond_2

    .line 398
    const/16 v3, 0x1d

    goto :goto_1

    .line 404
    .end local v4    # "l":J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 406
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 409
    .restart local v4    # "l":J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 434
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 412
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 414
    const/16 v9, 0x1e

    if-le v3, v9, :cond_8

    .line 415
    const/16 v3, 0x1e

    .line 416
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 418
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 419
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 422
    :pswitch_3
    const/16 v9, 0x1d

    if-le v3, v9, :cond_7

    .line 423
    const/16 v3, 0x1d

    goto :goto_4

    .line 426
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 428
    const/16 v9, 0x1e

    if-le v3, v9, :cond_a

    .line 429
    const/16 v3, 0x1e

    .line 430
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 438
    .end local v4    # "l":J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 439
    .local v2, "i2":I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 442
    .local v6, "l2":J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 458
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 446
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 448
    const/16 v9, 0x1e

    if-le v3, v9, :cond_e

    .line 449
    const/16 v3, 0x1e

    .line 450
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 453
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0x1d

    if-le v3, v9, :cond_d

    .line 454
    const/16 v3, 0x1d

    goto :goto_5

    .line 469
    .end local v2    # "i2":I
    .end local v6    # "l2":J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 470
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 442
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 88
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_2
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_6
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 78
    :sswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 80
    :sswitch_8
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 82
    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 84
    :sswitch_a
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 86
    :sswitch_b
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 61
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 621
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 619
    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 244
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 240
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 242
    :pswitch_1
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 237
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

    .line 495
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 502
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 498
    :pswitch_0
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 500
    :pswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_4()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 366
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    :goto_0
    return v0

    .line 364
    :pswitch_0
    const/16 v0, 0x1f

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 361
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
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

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
    .line 608
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 609
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 610
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 611
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
    .line 229
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 230
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 232
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
    .line 487
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 488
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 489
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_4(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .prologue
    .line 353
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 354
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 355
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v1

    :goto_0
    return v1

    .line 356
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
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 604
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 483
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_4(IJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .prologue
    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

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
    .line 596
    .line 599
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 217
    .line 220
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 475
    .line 478
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_4(IJ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "active0"    # J

    .prologue
    .line 341
    .line 344
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 929
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 930
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 991
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 933
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 934
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 935
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 936
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 937
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 940
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 941
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 942
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 943
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 944
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 947
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 948
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 949
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 950
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 951
    const/4 v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto :goto_0

    .line 954
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 955
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 956
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 957
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 958
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 961
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 962
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 963
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 964
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 965
    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 968
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 969
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 970
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 971
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 972
    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 975
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 976
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 977
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 978
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 979
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 982
    :pswitch_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    .line 983
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 984
    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 985
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 986
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .prologue
    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 764
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 765
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 766
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    .line 767
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
    .param p2, "lexState"    # I

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 778
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    .line 779
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .prologue
    .line 782
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 783
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 785
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 786
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 4
    .param p1, "matchedToken"    # Lorg/apache/james/mime4j/field/address/parser/Token;

    .prologue
    .line 994
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    .line 1011
    :goto_0
    return-void

    .line 997
    :sswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1000
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 1003
    :sswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 1004
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 1005
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1006
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 994
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 17

    .prologue
    .line 811
    const/4 v14, 0x0

    .line 813
    .local v14, "specialToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/4 v9, 0x0

    .line 820
    .local v9, "curPos":I
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->BeginToken()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 830
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    .line 834
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v1, :pswitch_data_0

    .line 862
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_8

    .line 864
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v3, v9, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 866
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_3

    .line 868
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 869
    .local v12, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 870
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 871
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 872
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_2
    move-object v13, v12

    .line 873
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v13, "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    return-object v13

    .line 822
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :catch_0
    move-exception v10

    .line 824
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 825
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 826
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iput-object v14, v12, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v13, v12

    .line 827
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v13    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_3

    .line 837
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :pswitch_0
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 838
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 839
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v9

    .line 840
    goto :goto_2

    .line 842
    :pswitch_1
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 843
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 844
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v9

    .line 845
    goto/16 :goto_2

    .line 847
    :pswitch_2
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 848
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 849
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v9

    .line 850
    goto/16 :goto_2

    .line 852
    :pswitch_3
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 853
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 854
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v9

    .line 855
    goto/16 :goto_2

    .line 857
    :pswitch_4
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 858
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    .line 859
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v9

    goto/16 :goto_2

    .line 875
    :cond_3
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_6

    .line 877
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v7, v1, v3

    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v15, v1

    and-long/2addr v7, v15

    const-wide/16 v15, 0x0

    cmp-long v1, v7, v15

    if-eqz v1, :cond_4

    .line 879
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v12

    .line 880
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    if-nez v14, :cond_5

    .line 881
    move-object v14, v12

    .line 888
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_4
    :goto_4
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 889
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 884
    .restart local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_5
    iput-object v14, v12, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 885
    iput-object v12, v14, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v14, v12

    goto :goto_4

    .line 892
    .end local v12    # "matchedToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->MoreLexicalActions()V

    .line 893
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 894
    sget-object v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    .line 895
    :cond_7
    const/4 v9, 0x0

    .line 896
    const v1, 0x7fffffff

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    .line 898
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 901
    :catch_1
    move-exception v1

    .line 903
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 904
    .local v4, "error_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v5

    .line 905
    .local v5, "error_column":I
    const/4 v6, 0x0

    .line 906
    .local v6, "error_after":Ljava/lang/String;
    const/4 v2, 0x0

    .line 907
    .local v2, "EOFSeen":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 918
    :goto_5
    if-nez v2, :cond_9

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 920
    const/4 v1, 0x1

    if-gt v9, v1, :cond_d

    const-string v6, ""

    .line 922
    :cond_9
    :goto_6
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 908
    :catch_2
    move-exception v11

    .line 909
    .local v11, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 910
    const/4 v1, 0x1

    if-gt v9, v1, :cond_b

    const-string v6, ""

    .line 911
    :goto_7
    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-eq v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-char v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 912
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 913
    const/4 v5, 0x0

    goto :goto_5

    .line 910
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 916
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 920
    .end local v11    # "e1":Ljava/io/IOException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4

    .prologue
    .line 790
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 791
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    .line 792
    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 793
    .local v0, "im":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "im":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    .line 794
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    .line 795
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    .line 796
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endLine:I

    .line 797
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endColumn:I

    .line 798
    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
