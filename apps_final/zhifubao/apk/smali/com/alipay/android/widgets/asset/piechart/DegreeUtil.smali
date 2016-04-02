.class public Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;
.super Ljava/lang/Object;
.source "DegreeUtil.java"


# direct methods
.method public static a(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 16
    rem-float v0, p0, v2

    .line 17
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 18
    add-float/2addr v0, v2

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 20
    sub-float/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F
    .locals 9

    .prologue
    const/high16 v8, 0x43340000    # 180.0f

    const/4 v7, 0x0

    .line 47
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    iget v1, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->a:F

    sub-float v1, v0, v1

    .line 48
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    iget v2, p1, Lcom/alipay/android/widgets/asset/piechart/Point;->b:F

    sub-float v2, v0, v2

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    div-double v3, v5, v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    .line 64
    const-wide v5, 0x40091eb860000000L    # 3.140000104904175

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    double-to-float v0, v3

    .line 69
    cmpg-float v3, v1, v7

    if-gtz v3, :cond_1

    cmpg-float v3, v2, v7

    if-gtz v3, :cond_1

    .line 71
    add-float/2addr v0, v8

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_2

    cmpg-float v3, v2, v7

    if-gtz v3, :cond_2

    .line 73
    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    goto :goto_0

    .line 74
    :cond_2
    cmpg-float v1, v1, v7

    if-gtz v1, :cond_0

    cmpl-float v1, v2, v7

    if-ltz v1, :cond_0

    .line 75
    sub-float v0, v8, v0

    goto :goto_0
.end method

.method public static b(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 30
    rem-float v0, p0, v2

    .line 31
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 32
    add-float/2addr v0, v2

    .line 34
    :cond_0
    return v0
.end method
