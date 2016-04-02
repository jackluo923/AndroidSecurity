.class public Lcom/alipay/android/app/empty/MemoryMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/empty/MemoryMonitor$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/app/empty/MemoryMonitor;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/empty/MemoryMonitor$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/empty/MemoryMonitor$a;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/empty/MemoryMonitor$a;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/alipay/android/app/empty/MemoryMonitor$a;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/empty/MemoryMonitor;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/empty/MemoryMonitor;->a:Lcom/alipay/android/app/empty/MemoryMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/empty/MemoryMonitor;

    invoke-direct {v0}, Lcom/alipay/android/app/empty/MemoryMonitor;-><init>()V

    sput-object v0, Lcom/alipay/android/app/empty/MemoryMonitor;->a:Lcom/alipay/android/app/empty/MemoryMonitor;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/empty/MemoryMonitor;->a:Lcom/alipay/android/app/empty/MemoryMonitor;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/empty/IMemorySizeable;->a()I

    move-result v1

    iget v2, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/IMemoryEventHandler;

    invoke-interface {v0}, Lcom/alipay/android/app/empty/IMemoryEventHandler;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/alipay/android/app/empty/IMemorySizeable;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/empty/MemoryMonitor;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alipay/android/app/empty/IMemorySizeable;->a()I

    move-result v1

    const/4 v2, 0x0

    iget v3, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    sub-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a:I

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/MemoryMonitor$a;->a()Z

    :cond_0
    return-void
.end method
