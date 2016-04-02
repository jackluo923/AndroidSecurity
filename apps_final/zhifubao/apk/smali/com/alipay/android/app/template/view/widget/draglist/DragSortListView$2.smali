.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 523
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->cancelDrag()V

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;->a()V

    .line 533
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;->a()V

    .line 538
    return-void
.end method
