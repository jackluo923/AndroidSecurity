.class public Lcom/alipay/android/app/logic/TradeLogicManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/android/app/logic/TradeLogicManager;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/logic/TradeLogicData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicManager;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicManager;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/logic/TradeLogicManager;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/logic/TradeLogicManager;->b:Lcom/alipay/android/app/logic/TradeLogicManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/logic/TradeLogicManager;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/TradeLogicManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/logic/TradeLogicManager;->b:Lcom/alipay/android/app/logic/TradeLogicManager;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/logic/TradeLogicManager;->b:Lcom/alipay/android/app/logic/TradeLogicManager;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final a(ILcom/alipay/android/app/logic/TradeLogicData;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(I)Lcom/alipay/android/app/logic/TradeLogicData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/logic/TradeLogicData;

    return-object v0
.end method

.method public final c(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/logic/TradeLogicManager;->b(I)Lcom/alipay/android/app/logic/TradeLogicData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
