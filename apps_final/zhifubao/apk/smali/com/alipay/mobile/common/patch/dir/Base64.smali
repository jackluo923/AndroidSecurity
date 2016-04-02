.class public final Lcom/alipay/mobile/common/patch/dir/Base64;
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

    .line 30
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    .line 32
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    move v1, v0

    .line 35
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 36
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    .line 39
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    .line 42
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 45
    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    .line 46
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 49
    :cond_3
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aput-byte v7, v1, v5

    .line 50
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 52
    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 53
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    .line 57
    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 60
    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    .line 61
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 63
    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aput-char v5, v0, v7

    .line 64
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aput-char v6, v0, v8

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 73
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
    .line 77
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

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

    .line 186
    if-nez p0, :cond_0

    move-object v0, v3

    .line 275
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 192
    if-nez v6, :cond_2

    move v1, v2

    .line 194
    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_5

    move-object v0, v3

    .line 195
    goto :goto_0

    .line 192
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

    if-ne v0, v7, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_12

    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 198
    :cond_5
    div-int/lit8 v7, v1, 0x4

    .line 200
    if-nez v7, :cond_6

    .line 201
    new-array v0, v2, [B

    goto :goto_0

    .line 211
    :cond_6
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 213
    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_9

    .line 215
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    move-object v0, v3

    .line 219
    goto :goto_0

    .line 222
    :cond_8
    sget-object v12, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v9, v12, v9

    .line 223
    sget-object v12, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v8, v12, v8

    .line 224
    sget-object v12, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v11, v12, v11

    .line 225
    sget-object v12, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v10, v12, v10

    .line 227
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 228
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 229
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 232
    :cond_9
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    move-object v0, v3

    .line 234
    goto/16 :goto_0

    .line 237
    :cond_b
    sget-object v9, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v9, v9, v1

    .line 238
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v7, v1, v7

    .line 240
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 241
    aget-char v1, v6, v1

    .line 242
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/Base64;->b(C)Z

    move-result v6

    if-nez v6, :cond_11

    .line 243
    :cond_c
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Base64;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/Base64;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 244
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_d

    move-object v0, v3

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_d
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 249
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 251
    goto/16 :goto_0

    .line 252
    :cond_e
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Base64;->a(C)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/Base64;->a(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 253
    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v6, v1, v8

    .line 254
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_f

    move-object v0, v3

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_f
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 259
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 261
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 262
    goto/16 :goto_0

    :cond_10
    move-object v0, v3

    .line 264
    goto/16 :goto_0

    .line 267
    :cond_11
    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v2, v2, v8

    .line 268
    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Base64;->a:[B

    aget-byte v1, v3, v1

    .line 269
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 270
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 271
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 92
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-string/jumbo v0, ""

    goto :goto_0

    .line 97
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 98
    div-int/lit8 v1, v0, 0x18

    .line 99
    if-eqz v7, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 101
    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 113
    :goto_2
    if-ge v4, v1, :cond_6

    .line 114
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 115
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 116
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 122
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 123
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 125
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_3

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 127
    :goto_3
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_4

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 129
    :goto_4
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 138
    :goto_5
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 139
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 140
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 141
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 113
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_2

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1

    .line 125
    :cond_3
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_3

    .line 127
    :cond_4
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_4

    .line 129
    :cond_5
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_5

    .line 145
    :cond_6
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 146
    aget-byte v0, p0, v2

    .line 147
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 152
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 154
    :goto_6
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 155
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 156
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 157
    aput-char v14, v8, v1

    .line 175
    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    .line 152
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_6

    .line 158
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_7

    .line 159
    aget-byte v0, p0, v2

    .line 160
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 161
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 162
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 164
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 166
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 169
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 170
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 171
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Base64;->b:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 172
    aput-char v14, v8, v0

    goto :goto_7

    .line 164
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 166
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method
