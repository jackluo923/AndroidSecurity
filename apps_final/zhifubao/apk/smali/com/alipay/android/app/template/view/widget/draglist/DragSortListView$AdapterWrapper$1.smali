.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    .line 620
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 623
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 627
    return-void
.end method
