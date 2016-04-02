.class public final Lcom/alipay/mobile/common/transport/http/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a:Ljava/util/regex/Pattern;

    .line 70
    const-string/jumbo v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 129
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x123

    .line 151
    sparse-switch v3, :sswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    move v0, v1

    .line 175
    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    move v0, v2

    .line 157
    goto :goto_0

    .line 159
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 161
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 163
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 165
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 167
    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 169
    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 171
    :sswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 173
    :sswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 175
    :sswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_0
        0x16 -> :sswitch_1
        0x1a -> :sswitch_7
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_9
        0x24 -> :sswitch_4
        0x25 -> :sswitch_8
        0x28 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_a
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 185
    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    .line 186
    add-int/lit16 v0, v0, 0x76c

    .line 202
    :goto_0
    return v0

    .line 188
    :cond_0
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 192
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 195
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 197
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto :goto_0

    .line 202
    :cond_3
    const/16 v0, 0x7b2

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 208
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 210
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    .line 211
    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 213
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 215
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 218
    add-int/lit8 v2, v3, 0x1

    .line 220
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 223
    new-instance v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    invoke-direct {v3, v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v3

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 88
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b(Ljava/lang/String;)I

    move-result v5

    .line 97
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->c(Ljava/lang/String;)I

    move-result v6

    .line 98
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 112
    :goto_0
    const/16 v1, 0x7f6

    if-lt v6, v1, :cond_2

    .line 113
    const/16 v6, 0x7f6

    move v5, v7

    .line 118
    :goto_1
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 119
    iget v1, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->second:I

    iget v2, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->minute:I

    iget v3, v3, Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;->hour:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 121
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->b(Ljava/lang/String;)I

    move-result v5

    .line 103
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->a(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->d(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpDateTime$TimeOfDay;

    move-result-object v0

    .line 105
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->c(Ljava/lang/String;)I

    move-result v6

    move-object v3, v0

    move v0, v1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    move v4, v0

    goto :goto_1
.end method
