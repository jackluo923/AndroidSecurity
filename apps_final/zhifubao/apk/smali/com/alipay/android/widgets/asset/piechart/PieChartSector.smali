.class public Lcom/alipay/android/widgets/asset/piechart/PieChartSector;
.super Ljava/lang/Object;
.source "PieChartSector.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    .line 47
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->b:I

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/PieChartSector;->c:F

    return v0
.end method
