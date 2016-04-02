.class public Lorg/joda/time/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static final LOG_10:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;II)V
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/16 v4, 0x30

    .line 50
    if-gez p1, :cond_0

    .line 51
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 53
    neg-int p1, p1

    .line 62
    :cond_0
    if-ge p1, v1, :cond_4

    .line 63
    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    if-le p2, v1, :cond_2

    .line 56
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :goto_2
    return-void

    .line 66
    :cond_3
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 67
    :cond_4
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 68
    :goto_3
    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 69
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 74
    :cond_5
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 75
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 80
    :cond_6
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_7

    .line 81
    const/4 v0, 0x3

    .line 87
    :goto_4
    if-le p2, v0, :cond_9

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 82
    :cond_7
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 83
    const/4 v0, 0x4

    goto :goto_4

    .line 85
    :cond_8
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 90
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;JI)V
    .locals 5

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x13

    .line 105
    long-to-int v0, p1

    .line 106
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 107
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 129
    :goto_0
    return-void

    .line 108
    :cond_0
    if-gt p3, v3, :cond_1

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 112
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 114
    neg-long p1, p1

    .line 123
    :cond_2
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 124
    :goto_1
    if-le p3, v0, :cond_5

    .line 125
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 116
    :cond_3
    :goto_2
    if-le p3, v3, :cond_4

    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 119
    :cond_4
    const-string v0, "9223372036854775808"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 127
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;I)V
    .locals 2

    .prologue
    .line 236
    if-gez p1, :cond_0

    .line 237
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 239
    neg-int p1, p1

    .line 245
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 246
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 247
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 251
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 252
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;J)V
    .locals 3

    .prologue
    .line 269
    long-to-int v0, p1

    .line 270
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 271
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/StringBuffer;I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static calculateDigitCount(J)I
    .locals 4

    .prologue
    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 337
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 338
    neg-long v0, p0

    invoke-static {v0, v1}, Lorg/joda/time/format/FormatUtils;->calculateDigitCount(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 340
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 343
    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 357
    add-int/lit8 v0, p1, 0x20

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    if-gt v1, v2, :cond_0

    move-object v0, p0

    .line 365
    :goto_0
    if-gtz p1, :cond_1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_1
    return-object v0

    .line 362
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is too short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 373
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is malformed at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static parseTwoDigits(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 353
    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method public static writePaddedInteger(Ljava/io/Writer;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    const/16 v4, 0x30

    .line 144
    if-gez p1, :cond_0

    .line 145
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 146
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 147
    neg-int p1, p1

    .line 156
    :cond_0
    if-ge p1, v1, :cond_4

    .line 157
    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    .line 158
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 157
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 149
    :cond_1
    :goto_1
    if-le p2, v1, :cond_2

    .line 150
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 149
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 152
    :cond_2
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 186
    :goto_2
    return-void

    .line 160
    :cond_3
    add-int/lit8 v0, p1, 0x30

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 161
    :cond_4
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 162
    :goto_3
    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 163
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 162
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 168
    :cond_5
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 169
    add-int/lit8 v1, v0, 0x30

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 171
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 174
    :cond_6
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_7

    .line 175
    const/4 v0, 0x3

    .line 181
    :goto_4
    if-le p2, v0, :cond_9

    .line 182
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 181
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 176
    :cond_7
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 177
    const/4 v0, 0x4

    goto :goto_4

    .line 179
    :cond_8
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 184
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static writePaddedInteger(Ljava/io/Writer;JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x13

    .line 201
    long-to-int v0, p1

    .line 202
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 203
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 225
    :goto_0
    return-void

    .line 204
    :cond_0
    if-gt p3, v3, :cond_1

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 208
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 209
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 210
    neg-long p1, p1

    .line 219
    :cond_2
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 220
    :goto_1
    if-le p3, v0, :cond_5

    .line 221
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 220
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 212
    :cond_3
    :goto_2
    if-le p3, v3, :cond_4

    .line 213
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(I)V

    .line 212
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 215
    :cond_4
    const-string v0, "9223372036854775808"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-gez p1, :cond_0

    .line 289
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 290
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 291
    neg-int p1, p1

    .line 297
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 298
    add-int/lit8 v0, p1, 0x30

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 310
    :goto_0
    return-void

    .line 293
    :cond_1
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 303
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 304
    add-int/lit8 v1, v0, 0x30

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 306
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 308
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    long-to-int v0, p1

    .line 324
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 325
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->writeUnpaddedInteger(Ljava/io/Writer;I)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
