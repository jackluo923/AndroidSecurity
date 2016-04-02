.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 617
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    .line 620
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper$1;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 629
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 688
    if-eqz p2, :cond_2

    .line 689
    check-cast p2, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;

    .line 690
    invoke-virtual {p2, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 693
    if-eq v1, v0, :cond_5

    .line 696
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p2, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->removeViewAt(I)V

    .line 699
    :cond_0
    invoke-virtual {p2, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->addView(Landroid/view/View;)V

    move-object v0, p2

    .line 723
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;ILandroid/view/View;)V

    .line 725
    return-object v0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 704
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 705
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;

    goto :goto_0

    .line 707
    :cond_3
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_4

    .line 708
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemViewCheckable;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 712
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    .line 714
    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 712
    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 716
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 710
    :cond_4
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    move-object v0, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
