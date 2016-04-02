.class public Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;
.super Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
.source "PieChartAdapterImpl.java"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/piechart/PieChartSector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;
    .locals 2

    .prologue
    .line 26
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/widgets/asset/piechart/PieChartSector;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapterImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method
