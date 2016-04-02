.class public abstract Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field protected mContext:Landroid/content/Context;

.field protected mFootView:Landroid/view/View;

.field protected mIsAutoLoad:Z

.field protected mIsLoading:Z

.field protected mListDatas:Ljava/util/List;

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "ScrollMoreListAdapter"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsAutoLoad:Z

    new-instance v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;-><init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->c:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a(Landroid/widget/ListView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "ScrollMoreListAdapter"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsAutoLoad:Z

    new-instance v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$2;-><init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a(Landroid/widget/ListView;)V

    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Loading View must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->addFooterView()V

    return-void
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFooterView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected autoLoad()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter$3;-><init>(Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected canScroll()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastVisiblePosition = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "FooterViewsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getFailView()Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getLoadingView()Landroid/view/View;
.end method

.method public getMoreFinish(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->removeFooterView()V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Loading View must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->addFooterView()V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mIsAutoLoad:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->autoLoad()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getFailView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->addFooterView()V

    goto :goto_0
.end method

.method public getScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract hasMore()Z
.end method

.method protected abstract itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected abstract onMore()V
.end method

.method protected abstract onRetry()V
.end method

.method public removeFooterView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;->mFootView:Landroid/view/View;

    :cond_0
    return-void
.end method
