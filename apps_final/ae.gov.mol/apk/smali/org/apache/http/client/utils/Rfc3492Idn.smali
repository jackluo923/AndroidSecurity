.class public Lorg/apache/http/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lorg/apache/http/client/utils/Idn;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .locals 3
    .param p1, "delta"    # I
    .param p2, "numpoints"    # I
    .param p3, "firsttime"    # Z

    .prologue
    .line 55
    if-eqz p3, :cond_0

    div-int/lit16 p1, p1, 0x2bc

    .line 57
    :goto_0
    div-int v1, p1, p2

    add-int/2addr p1, v1

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "k":I
    :goto_1
    const/16 v1, 0x1c7

    if-le p1, v1, :cond_1

    .line 60
    div-int/lit8 p1, p1, 0x23

    .line 61
    add-int/lit8 v0, v0, 0x24

    goto :goto_1

    .line 56
    .end local v0    # "k":I
    :cond_0
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 63
    .restart local v0    # "k":I
    :cond_1
    mul-int/lit8 v1, p1, 0x24

    add-int/lit8 v2, p1, 0x26

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private digit(C)I
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 67
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x41

    .line 69
    :goto_0
    return v0

    .line 68
    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x61

    goto :goto_0

    .line 69
    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 86
    const/16 v6, 0x80

    .line 87
    .local v6, "n":I
    const/4 v3, 0x0

    .line 88
    .local v3, "i":I
    const/16 v0, 0x48

    .line 89
    .local v0, "bias":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v8, "output":Ljava/lang/StringBuilder;
    const/16 v11, 0x2d

    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 91
    .local v5, "lastdelim":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 92
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 97
    move v7, v3

    .line 98
    .local v7, "oldi":I
    const/4 v10, 0x1

    .line 99
    .local v10, "w":I
    const/16 v4, 0x24

    .line 100
    .local v4, "k":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 116
    :cond_1
    sub-int v12, v3, v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v13, v11, 0x1

    if-nez v7, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-direct {p0, v12, v13, v11}, Lorg/apache/http/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v0

    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    div-int v11, v3, v11

    add-int/2addr v6, v11

    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    rem-int/2addr v3, v11

    .line 120
    int-to-char v11, v6

    invoke-virtual {v8, v3, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    goto :goto_0

    .line 101
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 102
    .local v1, "c":C
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/Rfc3492Idn;->digit(C)I

    move-result v2

    .line 104
    .local v2, "digit":I
    mul-int v11, v2, v10

    add-int/2addr v3, v11

    .line 106
    add-int/lit8 v11, v0, 0x1

    if-gt v4, v11, :cond_3

    .line 107
    const/4 v9, 0x1

    .line 113
    .local v9, "t":I
    :goto_3
    if-lt v2, v9, :cond_1

    .line 114
    rsub-int/lit8 v11, v9, 0x24

    mul-int/2addr v10, v11

    .line 99
    add-int/lit8 v4, v4, 0x24

    goto :goto_1

    .line 108
    .end local v9    # "t":I
    :cond_3
    add-int/lit8 v11, v0, 0x1a

    if-lt v4, v11, :cond_4

    .line 109
    const/16 v9, 0x1a

    .restart local v9    # "t":I
    goto :goto_3

    .line 111
    .end local v9    # "t":I
    :cond_4
    sub-int v9, v4, v0

    .restart local v9    # "t":I
    goto :goto_3

    .line 116
    .end local v1    # "c":C
    .end local v2    # "digit":I
    .end local v9    # "t":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 123
    .end local v4    # "k":I
    .end local v7    # "oldi":I
    .end local v10    # "w":I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "punycode"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v2, "unicode":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    const-string v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    .end local v0    # "t":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
