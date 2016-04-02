.class public Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;
.super Lcom/alipay/android/widgets/asset/piechart/AnimationModel;
.source "PieChart.java"


# instance fields
.field final synthetic b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

.field private c:J

.field private d:J

.field private e:F

.field private f:F

.field private g:Z

.field private h:J

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 864
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/AnimationModel;-><init>()V

    .line 865
    iput-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->c:J

    .line 866
    iput-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->d:J

    .line 868
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    .line 871
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->g:Z

    .line 879
    iput-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    .line 884
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->i:F

    .line 888
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 957
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->g:Z

    if-eqz v0, :cond_2

    .line 958
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->c:J

    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    iput v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v0, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 962
    :goto_0
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    return v0

    .line 958
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->d:J

    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->d:J

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    long-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v2, v2, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v3, v2, v6

    add-float/2addr v1, v3

    aput v1, v2, v6

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v1, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    :goto_1
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v1, v1, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v2, v1, v6

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    add-float/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v1, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iput v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    iput v8, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    goto :goto_1

    .line 960
    :cond_2
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->c:J

    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    iput v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v0, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->d:J

    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->d:J

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->c:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->i:F

    mul-float/2addr v3, v4

    long-to-float v4, v0

    mul-float/2addr v3, v4

    long-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    iget v5, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->i:F

    long-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    mul-float/2addr v0, v1

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v0, v0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v1, v0, v6

    add-float/2addr v1, v3

    aput v1, v0, v6

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v0, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    :goto_2
    iput v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->e:F

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v0, v0, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v1, v0, v6

    iget v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    add-float/2addr v1, v3

    aput v1, v0, v6

    iput v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-static {v0, p1, v6}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$7(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;Z)V

    iput v8, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    goto :goto_2
.end method

.method public final a(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 913
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    .line 915
    iput-boolean v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->g:Z

    .line 916
    iput p2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->i:F

    .line 917
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v2, v0

    iput-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    .line 918
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    long-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    iget-wide v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    long-to-float v3, v3

    mul-float/2addr v2, v3

    iget-wide v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    long-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    .line 920
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(F)F

    move-result v2

    .line 922
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F
    invoke-static {v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$4(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v3

    sub-float/2addr v3, v2

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(F)I
    invoke-static {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$5(Lcom/alipay/android/widgets/asset/piechart/PieChart;F)I

    move-result v3

    .line 926
    if-eq v3, v6, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v0

    .line 928
    iget-object v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v4, v4, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v4, v4, v3

    add-float/2addr v4, v2

    .line 929
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v0

    div-float/2addr v0, v5

    .line 928
    add-float/2addr v0, v4

    .line 930
    iget-object v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F
    invoke-static {v4}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$4(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v4

    sub-float v0, v4, v0

    .line 931
    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(F)F

    move-result v0

    .line 934
    :goto_0
    if-eq v3, v6, :cond_0

    mul-float v4, v0, p1

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    .line 935
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 936
    add-int/lit8 v0, v3, -0x1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v1

    rem-int/2addr v0, v1

    .line 941
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v1

    .line 942
    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v3, v3, Lcom/alipay/android/widgets/asset/piechart/PieChart;->accumulateDegrees:[F

    aget v0, v3, v0

    add-float/2addr v0, v2

    .line 943
    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b()F

    move-result v1

    div-float/2addr v1, v5

    .line 942
    add-float/2addr v0, v1

    .line 944
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->j:F
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$4(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v1

    sub-float v0, v1, v0

    .line 945
    invoke-static {v0}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(F)F

    move-result v0

    .line 948
    :cond_0
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    long-to-float v2, v2

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    .line 949
    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    .line 952
    iput v7, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    .line 953
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 954
    return-void

    .line 938
    :cond_1
    add-int/lit8 v0, v3, 0x1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->c:Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$6(Lcom/alipay/android/widgets/asset/piechart/PieChart;)Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(FJ)V
    .locals 1

    .prologue
    .line 897
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->f:F

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->g:Z

    .line 899
    iput-wide p2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->h:J

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->a:I

    .line 901
    long-to-float v0, p2

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->j:F

    .line 902
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$RotateModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 903
    return-void
.end method
