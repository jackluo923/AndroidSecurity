.class final Lcom/alipay/android/app/empty/MemoryMonitor$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/empty/MemoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/empty/IMemoryEventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/empty/MemoryMonitor$a;-><init>(IB)V

    return-void
.end method

.method private constructor <init>(IB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    iput p1, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->b:I

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->c:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
