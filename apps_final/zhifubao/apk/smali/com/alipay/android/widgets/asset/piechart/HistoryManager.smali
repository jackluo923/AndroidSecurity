.class public Lcom/alipay/android/widgets/asset/piechart/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# instance fields
.field private a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    .line 13
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    .line 16
    iput v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    .line 17
    new-array v0, v1, [Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    .line 18
    return-void
.end method

.method private a(I)Lcom/alipay/android/widgets/asset/piechart/HistoryModel;
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    if-lt v0, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    sub-int/2addr v0, v1

    .line 64
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widgets/asset/piechart/Point;)F
    .locals 6

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c()I

    move-result v0

    .line 32
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 35
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(I)Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a(I)Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/alipay/android/widgets/asset/piechart/Point;

    iget v3, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->a:F

    iget v4, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->b:F

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-static {v2, p1}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v2

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v2

    .line 39
    new-instance v3, Lcom/alipay/android/widgets/asset/piechart/Point;

    .line 40
    iget v4, v1, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->a:F

    iget v5, v1, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->b:F

    .line 39
    invoke-direct {v3, v4, v5}, Lcom/alipay/android/widgets/asset/piechart/Point;-><init>(FF)V

    invoke-static {v3, p1}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(Lcom/alipay/android/widgets/asset/piechart/Point;Lcom/alipay/android/widgets/asset/piechart/Point;)F

    move-result v3

    invoke-static {v3}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->b(F)F

    move-result v3

    .line 42
    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/piechart/DegreeUtil;->a(F)F

    move-result v2

    .line 43
    iget-wide v3, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->c:J

    iget-wide v0, v1, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->c:J

    sub-long v0, v3, v0

    long-to-float v0, v0

    .line 42
    div-float v0, v2, v0

    .line 44
    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    .line 22
    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    .line 23
    return-void
.end method

.method public final a(FFJ)V
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    new-instance v2, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;-><init>(FFJ)V

    aput-object v2, v1, v0

    .line 85
    :goto_0
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    .line 86
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    .line 88
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    if-ne v0, v1, :cond_0

    .line 89
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    .line 90
    iget v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c:I

    .line 92
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->a:F

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    aget-object v1, v1, v0

    iput p2, v1, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->b:F

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    aget-object v0, v1, v0

    iput-wide p3, v0, Lcom/alipay/android/widgets/asset/piechart/HistoryModel;->c:J

    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/widgets/asset/piechart/HistoryModel;
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->a:[Lcom/alipay/android/widgets/asset/piechart/HistoryModel;

    iget v1, p0, Lcom/alipay/android/widgets/asset/piechart/HistoryManager;->d:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x14

    rem-int/lit8 v1, v1, 0x14

    aget-object v0, v0, v1

    goto :goto_0
.end method
