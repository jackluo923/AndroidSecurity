.class public Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a:Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a:Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a:Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    return-object v0
.end method
