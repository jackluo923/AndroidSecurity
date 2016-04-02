.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(D)I
    .locals 6

    const-wide/32 v2, -0x55d4a80

    const-wide/32 v4, 0x55d4a80

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->a(DJJ)I

    move-result v0

    return v0
.end method

.method private static a(DJJ)I
    .locals 16

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, p0

    double-to-long v10, v2

    const/4 v5, 0x0

    move-wide/from16 v0, p2

    long-to-double v6, v0

    move-wide/from16 v0, p4

    long-to-double v2, v0

    const/4 v4, 0x0

    move v9, v4

    move v4, v5

    :goto_0
    const/16 v5, 0xa

    if-lt v9, v5, :cond_0

    return v4

    :cond_0
    shl-int/lit8 v8, v4, 0x1

    add-double v4, v6, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v12

    long-to-double v12, v10

    cmpl-double v12, v12, v4

    if-ltz v12, :cond_1

    add-int/lit8 v6, v8, 0x1

    :goto_1
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-wide v14, v4

    move v4, v6

    move-wide v6, v14

    goto :goto_0

    :cond_1
    move-wide v2, v4

    move-wide v4, v6

    move v6, v8

    goto :goto_1
.end method

.method public static b(D)I
    .locals 6

    const-wide/32 v2, -0xaba9500

    const-wide/32 v4, 0xaba9500

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->a(DJJ)I

    move-result v0

    return v0
.end method
