.class public Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;
.super Ljava/lang/Object;
.source "StepDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static mTempCount:I


# instance fields
.field private final context:Landroid/content/Context;

.field private mLastDiff:F

.field private mLastDirections:F

.field private final mLastExtremes:[F

.field private mLastMatch:I

.field private mLastTime:J

.field private mLastValues:F

.field private final mLimit:F

.field private final mPreValues:[F

.field private mSampleCount:I

.field private final mSampleSize:I

.field private mScale:F

.field private mStepCount:I

.field private final mThreshold:F

.field private final mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLimit:F

    .line 16
    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    .line 17
    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    .line 20
    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    .line 22
    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    .line 23
    iput v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    .line 25
    iput v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 26
    iput v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleSize:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    .line 29
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mThreshold:F

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    .line 36
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 38
    int-to-float v1, v0

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mYOffset:F

    .line 39
    int-to-float v0, v0

    mul-float/2addr v0, v3

    const v1, 0x3c888889

    mul-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    .line 40
    sput v2, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    .line 41
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .prologue
    .line 50
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 52
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 54
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 55
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    .line 121
    :cond_1
    return-void

    .line 59
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 62
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 63
    iget v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mYOffset:F

    iget-object v3, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 64
    add-float/2addr v0, v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    div-float v4, v0, v1

    .line 67
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    int-to-float v5, v0

    .line 69
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    neg-float v0, v0

    cmpl-float v0, v5, v0

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 71
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    iget v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    aput v2, v1, v0

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastExtremes:[F

    rsub-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v7, 0x2

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x42c0573d

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v7, v1, v2

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 79
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v6, v1

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    sub-long v1, v8, v1

    const-wide/16 v10, 0x12c

    cmp-long v1, v1, v10

    if-lez v1, :cond_5

    .line 80
    iget v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v6, v1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 81
    :goto_4
    iget v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v6, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    const/4 v2, 0x1

    .line 82
    :goto_5
    iget v3, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    rsub-int/lit8 v10, v0, 0x1

    if-ne v3, v10, :cond_c

    const/4 v3, 0x1

    .line 84
    :goto_6
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 86
    iget-wide v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    sub-long v1, v8, v1

    const-wide/16 v10, 0x12c

    cmp-long v1, v1, v10

    if-lez v1, :cond_5

    const/high16 v1, -0x41800000    # -0.25f

    cmpg-float v1, v7, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v7, v1

    if-lez v1, :cond_5

    .line 88
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 89
    sget v1, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    .line 90
    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastMatch:I

    .line 91
    iput-wide v8, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastTime:J

    .line 92
    sget v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mTempCount:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_d

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    .line 111
    :cond_5
    :goto_7
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDiff:F

    .line 113
    :cond_6
    iput v5, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastDirections:F

    .line 114
    iput v4, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mSampleCount:I

    .line 116
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mPreValues:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 67
    :cond_7
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mLastValues:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_8

    const/4 v0, -0x1

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 70
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 80
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 81
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 82
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 96
    :cond_d
    iget v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    rem-int/lit16 v0, v0, 0xc8

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_stepsCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "stepsCount"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    const-string/jumbo v2, "stepsCount"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;->mStepCount:I

    goto/16 :goto_7
.end method
