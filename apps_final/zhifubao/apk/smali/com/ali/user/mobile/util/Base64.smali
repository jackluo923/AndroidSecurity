.class public final Lcom/ali/user/mobile/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/ali/user/mobile/util/Base64;->a:[B

    .line 15
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/ali/user/mobile/util/Base64;->b:[C

    move v1, v0

    .line 18
    :goto_0
    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 21
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 24
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    .line 28
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 32
    sget-object v1, Lcom/ali/user/mobile/util/Base64;->a:[B

    aput-byte v7, v1, v5

    .line 33
    sget-object v1, Lcom/ali/user/mobile/util/Base64;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 35
    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 39
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    .line 43
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    .line 46
    sget-object v0, Lcom/ali/user/mobile/util/Base64;->b:[C

    aput-char v5, v0, v7

    .line 47
    sget-object v0, Lcom/ali/user/mobile/util/Base64;->b:[C

    aput-char v6, v0, v8

    .line 3
    return-void

    .line 19
    :cond_0
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 25
    :cond_2
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 29
    :cond_3
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 36
    :cond_4
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 40
    :cond_5
    sget-object v3, Lcom/ali/user/mobile/util/Base64;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 44
    :cond_6
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    if-nez p0, :cond_0

    move-object v0, v3

    .line 260
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 177
    if-nez v6, :cond_2

    move v1, v2

    .line 179
    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_4

    move-object v0, v3

    .line 180
    goto :goto_0

    .line 177
    :cond_2
    array-length v5, v6

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-char v0, v6, v4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa

    if-eq v0, v7, :cond_3

    const/16 v7, 0x9

    if-eq v0, v7, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_11

    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 183
    :cond_4
    div-int/lit8 v7, v1, 0x4

    .line 185
    if-nez v7, :cond_5

    .line 186
    new-array v0, v2, [B

    goto :goto_0

    .line 196
    :cond_5
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 198
    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_7

    .line 217
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 218
    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_6
    move-object v0, v3

    .line 219
    goto :goto_0

    .line 200
    :cond_7
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 201
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 202
    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move-object v0, v3

    .line 204
    goto/16 :goto_0

    .line 207
    :cond_9
    sget-object v12, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v9, v12, v9

    .line 208
    sget-object v12, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v8, v12, v8

    .line 209
    sget-object v12, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v11, v12, v11

    .line 210
    sget-object v12, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v10, v12, v10

    .line 212
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 213
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 214
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 222
    :cond_a
    sget-object v9, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v9, v9, v1

    .line 223
    sget-object v1, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v7, v1, v7

    .line 225
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 226
    aget-char v1, v6, v1

    .line 227
    invoke-static {v8}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v1}, Lcom/ali/user/mobile/util/Base64;->b(C)Z

    move-result v6

    if-nez v6, :cond_10

    .line 228
    :cond_b
    invoke-static {v8}, Lcom/ali/user/mobile/util/Base64;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v1}, Lcom/ali/user/mobile/util/Base64;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 229
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_c

    move-object v0, v3

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_c
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 234
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 236
    goto/16 :goto_0

    .line 237
    :cond_d
    invoke-static {v8}, Lcom/ali/user/mobile/util/Base64;->a(C)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v1}, Lcom/ali/user/mobile/util/Base64;->a(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 238
    sget-object v1, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v6, v1, v8

    .line 239
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_e

    move-object v0, v3

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_e
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 244
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 246
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 247
    goto/16 :goto_0

    :cond_f
    move-object v0, v3

    .line 249
    goto/16 :goto_0

    .line 252
    :cond_10
    sget-object v2, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v2, v2, v8

    .line 253
    sget-object v3, Lcom/ali/user/mobile/util/Base64;->a:[B

    aget-byte v1, v3, v1

    .line 254
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 255
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 256
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 76
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 77
    if-nez v0, :cond_1

    .line 78
    const-string/jumbo v0, ""

    goto :goto_0

    .line 81
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 82
    div-int/lit8 v1, v0, 0x18

    .line 83
    if-eqz v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 97
    :goto_2
    if-lt v4, v1, :cond_4

    .line 129
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 130
    aget-byte v0, p0, v2

    .line 131
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 136
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 138
    :goto_3
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/ali/user/mobile/util/Base64;->b:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 139
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/ali/user/mobile/util/Base64;->b:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 140
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 141
    aput-char v14, v8, v1

    .line 159
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 84
    goto :goto_1

    .line 98
    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 99
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 100
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 106
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 107
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 109
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 111
    :goto_5
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 113
    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 122
    :goto_7
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/ali/user/mobile/util/Base64;->b:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 123
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/ali/user/mobile/util/Base64;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 124
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/ali/user/mobile/util/Base64;->b:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 125
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/ali/user/mobile/util/Base64;->b:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 97
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_2

    .line 110
    :cond_5
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    .line 112
    :cond_6
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_6

    .line 114
    :cond_7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7

    .line 137
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_3

    .line 142
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_2

    .line 143
    aget-byte v0, p0, v2

    .line 144
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 145
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 146
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 148
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 150
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 153
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/ali/user/mobile/util/Base64;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 154
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/ali/user/mobile/util/Base64;->b:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 155
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/ali/user/mobile/util/Base64;->b:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 156
    aput-char v14, v8, v0

    goto/16 :goto_4

    .line 149
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 151
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method
