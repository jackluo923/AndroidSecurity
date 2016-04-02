.class public Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;
.super Lcom/alipay/android/widgets/asset/piechart/AnimationModel;
.source "PieChart.java"


# instance fields
.field final synthetic b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

.field private c:F

.field private d:J

.field private e:J

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 800
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/AnimationModel;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->c:F

    .line 802
    iput-wide v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->d:J

    .line 803
    iput-wide v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->e:J

    .line 807
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)I
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 831
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    if-nez v0, :cond_0

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->d:J

    .line 833
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    .line 834
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 846
    :goto_0
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    return v0

    .line 836
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->e:J

    .line 837
    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->e:J

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->g:F

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 838
    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->e:J

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->g:F

    mul-float/2addr v0, v1

    .line 839
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->f:I

    invoke-static {v1, p1, v0, v2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$3(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FI)V

    .line 840
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->f:I

    invoke-static {v0, p1, v4, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$3(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FI)V

    .line 843
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    goto :goto_0
.end method

.method public final a(FI)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 813
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->g:F

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->a:I

    .line 815
    if-ne p2, v1, :cond_0

    .line 816
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->f:I

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 821
    return-void

    .line 818
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$InitRenderModel;->f:I

    goto :goto_0
.end method
