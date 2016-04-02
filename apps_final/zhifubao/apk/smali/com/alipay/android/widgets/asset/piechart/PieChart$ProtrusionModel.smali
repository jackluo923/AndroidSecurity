.class public Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;
.super Lcom/alipay/android/widgets/asset/piechart/AnimationModel;
.source "PieChart.java"


# instance fields
.field final synthetic b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/piechart/PieChart;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 753
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/AnimationModel;-><init>()V

    .line 755
    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->c:J

    .line 756
    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->d:J

    .line 757
    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->e:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 772
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a:I

    if-nez v0, :cond_0

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->c:J

    .line 774
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V
    invoke-static {v0, p1, v1, v5}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$0(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FZ)V

    .line 775
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a:I

    .line 776
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 790
    :goto_0
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a:I

    return v0

    .line 778
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->e:J

    .line 779
    iget-wide v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->e:J

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->c:J

    sub-long/2addr v0, v2

    .line 780
    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->d:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F
    invoke-static {v3}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$1(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F
    invoke-static {v4}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$2(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    iget-wide v3, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->d:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V
    invoke-static {v2, p1, v0, v5}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$0(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FZ)V

    .line 783
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->d()F
    invoke-static {v1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$1(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    # getter for: Lcom/alipay/android/widgets/asset/piechart/PieChart;->A:F
    invoke-static {v2}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$2(Lcom/alipay/android/widgets/asset/piechart/PieChart;)F

    move-result v2

    sub-float v2, v6, v2

    mul-float/2addr v1, v2

    # invokes: Lcom/alipay/android/widgets/asset/piechart/PieChart;->a(Landroid/graphics/Canvas;FZ)V
    invoke-static {v0, p1, v1, v5}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->access$0(Lcom/alipay/android/widgets/asset/piechart/PieChart;Landroid/graphics/Canvas;FZ)V

    .line 786
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a:I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 765
    iput-wide p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->d:J

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->a:I

    .line 767
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChart$ProtrusionModel;->b:Lcom/alipay/android/widgets/asset/piechart/PieChart;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->postInvalidate()V

    .line 768
    return-void
.end method
