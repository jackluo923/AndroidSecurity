.class public abstract Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;
.super Ljava/lang/Object;
.source "PieChartAdapter.java"


# static fields
.field public static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/alipay/android/widgets/asset/piechart/PieChartAdapter;->a:F

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)Lcom/alipay/android/widgets/asset/piechart/PieChartSector;
.end method
