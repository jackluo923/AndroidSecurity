.class final Lcom/alipay/android/app/ui/quickpay/widget/e;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->cancelDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;->a()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;->a()V

    return-void
.end method
