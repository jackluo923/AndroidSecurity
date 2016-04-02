.class public abstract Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoScrollMoreListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field protected mContext:Landroid/content/Context;

.field protected mFootView:Landroid/view/View;

.field protected mFooterViewAdded:Z

.field protected mIsLoading:Z

.field protected mListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    new-instance v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->initListAndData(Landroid/widget/ListView;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    new-instance v0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter$1;-><init>(Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 83
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->initListAndData(Landroid/widget/ListView;)V

    .line 84
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    return-void
.end method

.method public addData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method protected addFooter()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    .line 149
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    return-void
.end method

.method public disableLoadMore()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->removeFooter()V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    return-void
.end method

.method public enableLoadMore()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->addFooter()V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->hideFooter()V

    .line 121
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getFailView()Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getLoadingView()Landroid/view/View;
.end method

.method public getMoreFinish()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mIsLoading:Z

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->hideFooter()V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected hideFooter()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->getLoadingView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Loading View must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->enableLoadMore()V

    .line 110
    return-void
.end method

.method protected initListAndData(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListDatas:Ljava/util/List;

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->init()V

    .line 100
    return-void
.end method

.method protected abstract itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method protected abstract onAutoLoadMore()V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 198
    return-void
.end method

.method protected abstract onRetry()V
.end method

.method protected removeFooter()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFooterViewAdded:Z

    .line 156
    :cond_0
    return-void
.end method

.method protected showFooter()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_0
    return-void
.end method
