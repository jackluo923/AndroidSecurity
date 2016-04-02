.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100

.field private static final SKEW_THRESHOLD:I = 0x3

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    .line 64
    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 3
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "moduleWidth"    # F

    .prologue
    .line 400
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 401
    .local v1, "topRowDimension":I
    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 402
    .local v0, "bottomRowDimension":I
    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x8

    div-int/lit8 v2, v2, 0x11

    mul-int/lit8 v2, v2, 0x11

    return v2
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 8
    .param p0, "vertices"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 375
    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x4

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 376
    .local v2, "pixels1":F
    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x5

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 377
    .local v3, "pixels2":F
    add-float v6, v2, v3

    const/high16 v7, 0x42080000    # 34.0f

    div-float v0, v6, v7

    .line 378
    .local v0, "moduleWidth1":F
    const/4 v6, 0x6

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 379
    .local v4, "pixels3":F
    const/4 v6, 0x7

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 380
    .local v5, "pixels4":F
    add-float v6, v4, v5

    const/high16 v7, 0x42100000    # 36.0f

    div-float v1, v6, v7

    .line 381
    .local v1, "moduleWidth2":F
    add-float v6, v0, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    return v6
.end method

.method private static computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 3
    .param p0, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p1, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "moduleWidth"    # F

    .prologue
    .line 421
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 422
    .local v0, "leftColumnDimension":I
    invoke-static {p1, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, p4

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 423
    .local v1, "rightColumnDimension":I
    add-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 26
    .param p0, "vertices"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "upsideDown"    # Z

    .prologue
    .line 300
    const/16 v22, 0x0

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 301
    .local v6, "v0x":F
    const/16 v22, 0x0

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 302
    .local v7, "v0y":F
    const/16 v22, 0x2

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    .line 303
    .local v10, "v2x":F
    const/16 v22, 0x2

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    .line 304
    .local v11, "v2y":F
    const/16 v22, 0x4

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    .line 305
    .local v14, "v4x":F
    const/16 v22, 0x4

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    .line 306
    .local v15, "v4y":F
    const/16 v22, 0x6

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 307
    .local v18, "v6x":F
    const/16 v22, 0x6

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 309
    .local v19, "v6y":F
    sub-float v5, v15, v19

    .line 310
    .local v5, "skew":F
    if-eqz p1, :cond_0

    .line 311
    neg-float v5, v5

    .line 313
    :cond_0
    const/high16 v22, 0x40400000    # 3.0f

    cmpl-float v22, v5, v22

    if-lez v22, :cond_4

    .line 315
    sub-float v3, v18, v6

    .line 316
    .local v3, "deltax":F
    sub-float v4, v19, v7

    .line 317
    .local v4, "deltay":F
    mul-float v22, v3, v3

    mul-float v23, v4, v4

    add-float v2, v22, v23

    .line 318
    .local v2, "delta2":F
    sub-float v22, v14, v6

    mul-float v22, v22, v3

    div-float v1, v22, v2

    .line 319
    .local v1, "correction":F
    const/16 v22, 0x4

    new-instance v23, Lcom/google/zxing/ResultPoint;

    mul-float v24, v1, v3

    add-float v24, v24, v6

    mul-float v25, v1, v4

    add-float v25, v25, v7

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, p0, v22

    .line 329
    .end local v1    # "correction":F
    .end local v2    # "delta2":F
    .end local v3    # "deltax":F
    .end local v4    # "deltay":F
    :cond_1
    :goto_0
    const/16 v22, 0x1

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 330
    .local v8, "v1x":F
    const/16 v22, 0x1

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    .line 331
    .local v9, "v1y":F
    const/16 v22, 0x3

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    .line 332
    .local v12, "v3x":F
    const/16 v22, 0x3

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    .line 333
    .local v13, "v3y":F
    const/16 v22, 0x5

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 334
    .local v16, "v5x":F
    const/16 v22, 0x5

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 335
    .local v17, "v5y":F
    const/16 v22, 0x7

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    .line 336
    .local v20, "v7x":F
    const/16 v22, 0x7

    aget-object v22, p0, v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    .line 338
    .local v21, "v7y":F
    sub-float v5, v21, v17

    .line 339
    if-eqz p1, :cond_2

    .line 340
    neg-float v5, v5

    .line 342
    :cond_2
    const/high16 v22, 0x40400000    # 3.0f

    cmpl-float v22, v5, v22

    if-lez v22, :cond_5

    .line 344
    sub-float v3, v20, v8

    .line 345
    .restart local v3    # "deltax":F
    sub-float v4, v21, v9

    .line 346
    .restart local v4    # "deltay":F
    mul-float v22, v3, v3

    mul-float v23, v4, v4

    add-float v2, v22, v23

    .line 347
    .restart local v2    # "delta2":F
    sub-float v22, v16, v8

    mul-float v22, v22, v3

    div-float v1, v22, v2

    .line 348
    .restart local v1    # "correction":F
    const/16 v22, 0x5

    new-instance v23, Lcom/google/zxing/ResultPoint;

    mul-float v24, v1, v3

    add-float v24, v24, v8

    mul-float v25, v1, v4

    add-float v25, v25, v9

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, p0, v22

    .line 357
    .end local v1    # "correction":F
    .end local v2    # "delta2":F
    .end local v3    # "deltax":F
    .end local v4    # "deltay":F
    :cond_3
    :goto_1
    return-void

    .line 320
    .end local v8    # "v1x":F
    .end local v9    # "v1y":F
    .end local v12    # "v3x":F
    .end local v13    # "v3y":F
    .end local v16    # "v5x":F
    .end local v17    # "v5y":F
    .end local v20    # "v7x":F
    .end local v21    # "v7y":F
    :cond_4
    neg-float v0, v5

    move/from16 v22, v0

    const/high16 v23, 0x40400000    # 3.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    .line 322
    sub-float v3, v10, v14

    .line 323
    .restart local v3    # "deltax":F
    sub-float v4, v11, v15

    .line 324
    .restart local v4    # "deltay":F
    mul-float v22, v3, v3

    mul-float v23, v4, v4

    add-float v2, v22, v23

    .line 325
    .restart local v2    # "delta2":F
    sub-float v22, v10, v18

    mul-float v22, v22, v3

    div-float v1, v22, v2

    .line 326
    .restart local v1    # "correction":F
    const/16 v22, 0x6

    new-instance v23, Lcom/google/zxing/ResultPoint;

    mul-float v24, v1, v3

    sub-float v24, v10, v24

    mul-float v25, v1, v4

    sub-float v25, v11, v25

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, p0, v22

    goto/16 :goto_0

    .line 349
    .end local v1    # "correction":F
    .end local v2    # "delta2":F
    .end local v3    # "deltax":F
    .end local v4    # "deltay":F
    .restart local v8    # "v1x":F
    .restart local v9    # "v1y":F
    .restart local v12    # "v3x":F
    .restart local v13    # "v3y":F
    .restart local v16    # "v5x":F
    .restart local v17    # "v5y":F
    .restart local v20    # "v7x":F
    .restart local v21    # "v7y":F
    :cond_5
    neg-float v0, v5

    move/from16 v22, v0

    const/high16 v23, 0x40400000    # 3.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_3

    .line 351
    sub-float v3, v12, v16

    .line 352
    .restart local v3    # "deltax":F
    sub-float v4, v13, v17

    .line 353
    .restart local v4    # "deltay":F
    mul-float v22, v3, v3

    mul-float v23, v4, v4

    add-float v2, v22, v23

    .line 354
    .restart local v2    # "delta2":F
    sub-float v22, v12, v20

    mul-float v22, v22, v3

    div-float v1, v22, v2

    .line 355
    .restart local v1    # "correction":F
    const/16 v22, 0x7

    new-instance v23, Lcom/google/zxing/ResultPoint;

    mul-float v24, v1, v3

    sub-float v24, v12, v24

    mul-float v25, v1, v4

    sub-float v25, v13, v25

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v23, p0, v22

    goto :goto_1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 9
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "whiteFirst"    # Z
    .param p5, "pattern"    # [I
    .param p6, "counters"    # [I

    .prologue
    .line 476
    const/4 v6, 0x0

    array-length v7, p6

    const/4 v8, 0x0

    invoke-static {p6, v6, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 477
    array-length v2, p5

    .line 478
    .local v2, "patternLength":I
    move v1, p4

    .line 480
    .local v1, "isWhite":Z
    const/4 v0, 0x0

    .line 481
    .local v0, "counterPosition":I
    move v3, p1

    .line 482
    .local v3, "patternStart":I
    move v5, p1

    .local v5, "x":I
    :goto_0
    add-int v6, p1, p3

    if-ge v5, v6, :cond_4

    .line 483
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    .line 484
    .local v4, "pixel":Z
    xor-int v6, v4, v1

    if-eqz v6, :cond_0

    .line 485
    aget v6, p6, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, p6, v0

    .line 482
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 487
    :cond_0
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_2

    .line 488
    const/16 v6, 0xcc

    invoke-static {p6, p5, v6}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v6

    const/16 v7, 0x6b

    if-ge v6, v7, :cond_1

    .line 489
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 503
    .end local v4    # "pixel":Z
    :goto_2
    return-object v6

    .line 491
    .restart local v4    # "pixel":Z
    :cond_1
    const/4 v6, 0x0

    aget v6, p6, v6

    const/4 v7, 0x1

    aget v7, p6, v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 492
    const/4 v6, 0x2

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x2

    invoke-static {p6, v6, p6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    add-int/lit8 v6, v2, -0x2

    const/4 v7, 0x0

    aput v7, p6, v6

    .line 494
    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    aput v7, p6, v6

    .line 495
    add-int/lit8 v0, v0, -0x1

    .line 499
    :goto_3
    const/4 v6, 0x1

    aput v6, p6, v0

    .line 500
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_4
    goto :goto_1

    .line 497
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 500
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 503
    .end local v4    # "pixel":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 12
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "tryHarder"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    .line 141
    .local v8, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 143
    .local v3, "width":I
    const/16 v0, 0x8

    new-array v10, v0, [Lcom/google/zxing/ResultPoint;

    .line 144
    .local v10, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    .line 146
    .local v7, "found":Z
    sget-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    array-length v0, v0

    new-array v6, v0, [I

    .line 148
    .local v6, "counters":[I
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const/16 v0, 0x9

    :goto_0
    shr-int v0, v8, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 151
    .local v11, "rowStep":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_0

    .line 152
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 153
    .local v9, "loc":[I
    if-eqz v9, :cond_5

    .line 154
    const/4 v0, 0x0

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 155
    const/4 v0, 0x4

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 156
    const/4 v7, 0x1

    .line 161
    .end local v9    # "loc":[I
    :cond_0
    if-eqz v7, :cond_1

    .line 162
    const/4 v7, 0x0

    .line 163
    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-lez v2, :cond_1

    .line 164
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 165
    .restart local v9    # "loc":[I
    if-eqz v9, :cond_6

    .line 166
    const/4 v0, 0x1

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 167
    const/4 v0, 0x5

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 168
    const/4 v7, 0x1

    .line 174
    .end local v9    # "loc":[I
    :cond_1
    sget-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    array-length v0, v0

    new-array v6, v0, [I

    .line 177
    if-eqz v7, :cond_2

    .line 178
    const/4 v7, 0x0

    .line 179
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_2

    .line 180
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 181
    .restart local v9    # "loc":[I
    if-eqz v9, :cond_7

    .line 182
    const/4 v0, 0x2

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 183
    const/4 v0, 0x6

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 184
    const/4 v7, 0x1

    .line 190
    .end local v9    # "loc":[I
    :cond_2
    if-eqz v7, :cond_3

    .line 191
    const/4 v7, 0x0

    .line 192
    add-int/lit8 v2, v8, -0x1

    :goto_4
    if-lez v2, :cond_3

    .line 193
    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    .line 194
    .restart local v9    # "loc":[I
    if-eqz v9, :cond_8

    .line 195
    const/4 v0, 0x3

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 196
    const/4 v0, 0x7

    new-instance v1, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v10, v0

    .line 197
    const/4 v7, 0x1

    .line 202
    .end local v9    # "loc":[I
    :cond_3
    if-eqz v7, :cond_9

    .end local v10    # "result":[Lcom/google/zxing/ResultPoint;
    :goto_5
    return-object v10

    .line 148
    .end local v2    # "i":I
    .end local v11    # "rowStep":I
    .restart local v10    # "result":[Lcom/google/zxing/ResultPoint;
    :cond_4
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 151
    .restart local v2    # "i":I
    .restart local v9    # "loc":[I
    .restart local v11    # "rowStep":I
    :cond_5
    add-int/2addr v2, v11

    goto/16 :goto_1

    .line 163
    :cond_6
    sub-int/2addr v2, v11

    goto/16 :goto_2

    .line 179
    :cond_7
    add-int/2addr v2, v11

    goto :goto_3

    .line 192
    :cond_8
    sub-int/2addr v2, v11

    goto :goto_4

    .line 202
    .end local v9    # "loc":[I
    :cond_9
    const/4 v10, 0x0

    goto :goto_5
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 21
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "tryHarder"    # Z

    .prologue
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v16

    .line 225
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v20

    .line 226
    .local v20, "width":I
    shr-int/lit8 v2, v20, 0x1

    .line 228
    .local v2, "halfWidth":I
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    .line 229
    .local v18, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x0

    .line 231
    .local v15, "found":Z
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    array-length v1, v1

    new-array v7, v1, [I

    .line 233
    .local v7, "counters":[I
    const/4 v4, 0x1

    if-eqz p1, :cond_4

    const/16 v1, 0x9

    :goto_0
    shr-int v1, v16, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 236
    .local v19, "rowStep":I
    add-int/lit8 v3, v16, -0x1

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_0

    .line 237
    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v1, p0

    move v4, v2

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 238
    .local v17, "loc":[I
    if-eqz v17, :cond_5

    .line 239
    const/4 v1, 0x0

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 240
    const/4 v1, 0x4

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 241
    const/4 v15, 0x1

    .line 246
    .end local v17    # "loc":[I
    :cond_0
    if-eqz v15, :cond_1

    .line 247
    const/4 v15, 0x0

    .line 248
    const/4 v3, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 249
    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v1, p0

    move v4, v2

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 250
    .restart local v17    # "loc":[I
    if-eqz v17, :cond_6

    .line 251
    const/4 v1, 0x1

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 252
    const/4 v1, 0x5

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 253
    const/4 v15, 0x1

    .line 259
    .end local v17    # "loc":[I
    :cond_1
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    array-length v1, v1

    new-array v7, v1, [I

    .line 262
    if-eqz v15, :cond_2

    .line 263
    const/4 v15, 0x0

    .line 264
    add-int/lit8 v3, v16, -0x1

    :goto_3
    if-lez v3, :cond_2

    .line 265
    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v8, p0

    move v10, v3

    move v11, v2

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 266
    .restart local v17    # "loc":[I
    if-eqz v17, :cond_7

    .line 267
    const/4 v1, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 268
    const/4 v1, 0x6

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 269
    const/4 v15, 0x1

    .line 275
    .end local v17    # "loc":[I
    :cond_2
    if-eqz v15, :cond_3

    .line 276
    const/4 v15, 0x0

    .line 277
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v3, v0, :cond_3

    .line 278
    const/4 v9, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v8, p0

    move v10, v3

    move v11, v2

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v17

    .line 279
    .restart local v17    # "loc":[I
    if-eqz v17, :cond_8

    .line 280
    const/4 v1, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 281
    const/4 v1, 0x7

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x1

    aget v5, v17, v5

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v18, v1

    .line 282
    const/4 v15, 0x1

    .line 287
    .end local v17    # "loc":[I
    :cond_3
    if-eqz v15, :cond_9

    .end local v18    # "result":[Lcom/google/zxing/ResultPoint;
    :goto_5
    return-object v18

    .line 233
    .end local v3    # "i":I
    .end local v19    # "rowStep":I
    .restart local v18    # "result":[Lcom/google/zxing/ResultPoint;
    :cond_4
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 236
    .restart local v3    # "i":I
    .restart local v17    # "loc":[I
    .restart local v19    # "rowStep":I
    :cond_5
    sub-int v3, v3, v19

    goto/16 :goto_1

    .line 248
    :cond_6
    add-int v3, v3, v19

    goto/16 :goto_2

    .line 264
    :cond_7
    sub-int v3, v3, v19

    goto :goto_3

    .line 277
    :cond_8
    add-int v3, v3, v19

    goto :goto_4

    .line 287
    .end local v17    # "loc":[I
    :cond_9
    const/16 v18, 0x0

    goto :goto_5
.end method

.method private static patternMatchVariance([I[II)I
    .locals 12
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # I

    .prologue
    const v10, 0x7fffffff

    .line 522
    array-length v2, p0

    .line 523
    .local v2, "numCounters":I
    const/4 v5, 0x0

    .line 524
    .local v5, "total":I
    const/4 v3, 0x0

    .line 525
    .local v3, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 526
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 527
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    if-ge v5, v3, :cond_2

    .line 550
    :cond_1
    :goto_1
    return v10

    .line 537
    :cond_2
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    .line 538
    .local v7, "unitBarWidth":I
    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    .line 540
    const/4 v6, 0x0

    .line 541
    .local v6, "totalVariance":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 542
    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    .line 543
    .local v0, "counter":I
    aget v11, p1, v9

    mul-int v4, v11, v7

    .line 544
    .local v4, "scaledPattern":I
    if-le v0, v4, :cond_3

    sub-int v8, v0, v4

    .line 545
    .local v8, "variance":I
    :goto_3
    if-gt v8, p2, :cond_1

    .line 548
    add-int/2addr v6, v8

    .line 541
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 544
    .end local v8    # "variance":I
    :cond_3
    sub-int v8, v4, v0

    goto :goto_3

    .line 550
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":I
    :cond_4
    div-int v10, v6, v5

    goto :goto_1
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "xdimension"    # I
    .param p6, "ydimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 438
    .local v1, "sampler":Lcom/google/zxing/common/GridSampler;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p5

    int-to-float v7, v0

    const/4 v8, 0x0

    move/from16 v0, p5

    int-to-float v9, v0

    move/from16 v0, p6

    int-to-float v10, v0

    const/4 v11, 0x0

    move/from16 v0, p6

    int-to-float v12, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 87
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 90
    .local v9, "tryHarder":Z
    :goto_0
    invoke-static {v0, v9}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 91
    .local v10, "vertices":[Lcom/google/zxing/ResultPoint;
    if-nez v10, :cond_2

    .line 93
    invoke-static {v0, v9}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 94
    if-eqz v10, :cond_0

    .line 95
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    .line 101
    :cond_0
    :goto_1
    if-nez v10, :cond_3

    .line 102
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 87
    .end local v9    # "tryHarder":Z
    .end local v10    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 98
    .restart local v9    # "tryHarder":Z
    .restart local v10    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_2
    const/4 v1, 0x0

    invoke-static {v10, v1}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_1

    .line 105
    :cond_3
    invoke-static {v10}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v8

    .line 106
    .local v8, "moduleWidth":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v8, v1

    if-gez v1, :cond_4

    .line 107
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 110
    :cond_4
    const/4 v1, 0x4

    aget-object v1, v10, v1

    const/4 v2, 0x6

    aget-object v2, v10, v2

    const/4 v3, 0x5

    aget-object v3, v10, v3

    const/4 v4, 0x7

    aget-object v4, v10, v4

    invoke-static {v1, v2, v3, v4, v8}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v5

    .line 112
    .local v5, "dimension":I
    const/4 v1, 0x1

    if-ge v5, v1, :cond_5

    .line 113
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 116
    :cond_5
    const/4 v1, 0x4

    aget-object v1, v10, v1

    const/4 v2, 0x6

    aget-object v2, v10, v2

    const/4 v3, 0x5

    aget-object v3, v10, v3

    const/4 v4, 0x7

    aget-object v4, v10, v4

    invoke-static {v1, v2, v3, v4, v8}, Lcom/google/zxing/pdf417/detector/Detector;->computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v6

    .line 117
    .local v6, "ydimension":I
    if-le v6, v5, :cond_6

    .line 120
    :goto_2
    const/4 v1, 0x4

    aget-object v1, v10, v1

    const/4 v2, 0x5

    aget-object v2, v10, v2

    const/4 v3, 0x6

    aget-object v3, v10, v3

    const/4 v4, 0x7

    aget-object v4, v10, v4

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    .line 121
    .local v7, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    const/4 v4, 0x5

    aget-object v4, v10, v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    aget-object v4, v10, v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x6

    aget-object v4, v10, v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x7

    aget-object v4, v10, v4

    aput-object v4, v2, v3

    invoke-direct {v1, v7, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    .end local v7    # "bits":Lcom/google/zxing/common/BitMatrix;
    :cond_6
    move v6, v5

    .line 117
    goto :goto_2
.end method
