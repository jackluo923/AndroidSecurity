.class final Lcom/alipay/android/widgets/asset/a;
.super Ljava/lang/Object;
.source "AssetAnalyzeActivity.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/piechart/listener/OnRenderFinishListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/a;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FLcom/alipay/android/widgets/asset/piechart/PieChartAdapter;)V
    .locals 2

    .prologue
    .line 93
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/a;->a:Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;->b(Lcom/alipay/android/widgets/asset/AssetAnalyzeActivity;)Lcom/alipay/android/widgets/asset/piechart/PieChart;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/widgets/asset/piechart/PieChart;->rotateSectorToPoint(Lcom/alipay/android/widgets/asset/piechart/PieChartSector;F)V

    .line 97
    :cond_0
    return-void
.end method
