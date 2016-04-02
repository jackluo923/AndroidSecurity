.class public Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private c:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

.field private i:[Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;

.field private p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private q:Landroid/widget/FrameLayout$LayoutParams;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/commonui/widget/APPullRefreshView;Landroid/widget/ListView;Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    .line 83
    iput-boolean v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    .line 93
    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->m:Z

    .line 98
    iput v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    .line 133
    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->u:Z

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;

    .line 139
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 140
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->b:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 142
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 143
    iput-object p4, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    .line 144
    iput-object p3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->r:Ljava/lang/String;

    .line 147
    sget v0, Lcom/alipay/android/phone/wealth/common/R$string;->default_flow_network_error:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->s:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "\u518d\u8bd5\u4e00\u6b21"

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->t:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    iput-object v1, v0, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->autoScrollMoreListener:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;

    new-instance v0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->o:Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->o:Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-boolean v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 448
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->getMoreFinish()V

    goto :goto_0
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RpcWrapper must init to valid rpc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->c:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->createRpcExecutor()Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->c:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->i:[Ljava/lang/Object;

    if-eq v0, p2, :cond_2

    .line 279
    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->i:[Ljava/lang/Object;

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->c:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iget-boolean v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->m:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->c:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getListData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getCurrentPage()I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    iget v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    if-gtz v3, :cond_0

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    :cond_0
    iget v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    if-ne v3, v0, :cond_1

    move v0, v1

    :cond_1
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    iput-boolean v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->hasMorePage()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->disableLoadMore()V

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->showEmptyView()V

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->getMoreFinish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->enableLoadMore()V

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->addData(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->showListView()V

    goto :goto_3
.end method

.method static synthetic access$10(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    return v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    return v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->o:Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->setShowProgressDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->i:[Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 3

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a()V

    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getRpcResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->b:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getResultView()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a()V

    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->showNetworkErrorView()V

    :cond_0
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->setShowProgressDialog(Z)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->i:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->setShowProgressDialog(Z)V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->i:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->q:Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->removeView(Landroid/view/View;)V

    .line 524
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RefreshAndLoadMore"

    const-string/jumbo v2, "toggleToFlowTipView remove listView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->createFlowTipView()Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "createFlowTipView() must return valid APFlowTipView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->addView(Landroid/view/View;I)V

    .line 531
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RefreshAndLoadMore"

    const-string/jumbo v2, "toggleToFlowTipView addView flowTipView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_3
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$4;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method protected createFlowTipView()Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 370
    sget v1, Lcom/alipay/android/phone/wealth/common/R$layout;->default_flow_tip_view_box:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 369
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 372
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 373
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 374
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    .line 375
    return-object v0
.end method

.method public getActionCallback()Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    return v0
.end method

.method public getFlowTipView()Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method public getRpcWrapper()Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getRpcResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getTotalPage()I

    move-result v0

    .line 570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMorePage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->getTotalPage()I

    move-result v1

    .line 559
    if-lez v1, :cond_0

    iget v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAutoShowProgressDialog()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    return v0
.end method

.method public isShowListData()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    return v0
.end method

.method public isToastOnRpcFail()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->u:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iput v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I

    .line 306
    iput-boolean v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->j:Z

    .line 307
    iput-boolean v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->clear()V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->e:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 311
    return-void
.end method

.method public setActionCallback(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    .line 820
    return-void
.end method

.method public setAutoShowProgressDialog(Z)V
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    .line 299
    return-void
.end method

.method public setEmptyTip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->r:Ljava/lang/String;

    .line 319
    invoke-direct {p0, p1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setFlowTipViewButtonTip(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->t:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    :cond_0
    return-void
.end method

.method public setNetErrorTip(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->s:Ljava/lang/String;

    .line 328
    invoke-direct {p0, p1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setRpcWrapper(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 785
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->g:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    .line 786
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->m:Z

    .line 291
    return-void
.end method

.method public setToastOnRpcFail(Z)V
    .locals 0

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->u:Z

    .line 599
    return-void
.end method

.method public showEmptyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 479
    invoke-direct {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->b()V

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->layout(IIII)V

    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    .line 489
    return-void
.end method

.method public showListView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->removeView(Landroid/view/View;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->q:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 470
    :cond_1
    iput-boolean v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    .line 471
    return-void
.end method

.method public showNetworkErrorView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->d:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 497
    invoke-direct {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->b()V

    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    new-instance v2, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 501
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setVisibility(I)V

    .line 513
    iput-boolean v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    .line 514
    return-void
.end method

.method public varargs startLoad([Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->l:Z

    if-eqz v0, :cond_0

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->setShowProgressDialog(Z)V

    .line 218
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a(I[Ljava/lang/Object;)V

    .line 219
    return-void

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method
