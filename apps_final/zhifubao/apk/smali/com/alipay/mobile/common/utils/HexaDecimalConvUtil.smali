.class public final Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;
.super Ljava/lang/Object;
.source "HexaDecimalConvUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c10to64(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    new-array v2, v1, [C

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    const-wide/16 v4, 0x3f

    and-long/2addr v4, p0

    long-to-int v4, v4

    aget-char v3, v3, v4

    aput-char v3, v2, v0

    const/4 v3, 0x6

    ushr-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-direct {v3, v2, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static final c64to10(Ljava/lang/String;)J
    .locals 12

    .prologue
    .line 36
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v5, v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v0, 0x0

    move v3, v4

    :goto_0
    if-ge v0, v4, :cond_0

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->getNum(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    int-to-double v8, v5

    add-int/lit8 v10, v3, -0x1

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static final getNum(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    move v0, v1

    .line 90
    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    .line 91
    sget-object v2, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->a:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :goto_1
    return v0

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
