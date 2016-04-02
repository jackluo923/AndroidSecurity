.class public abstract Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected rpcResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->a:Z

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 770
    const/4 v0, 0x0

    array-length v1, p1

    if-le v1, v2, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    aget-object v0, p1, v2

    check-cast v0, [Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->a:Z

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;Z)V
    .locals 0

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->a:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    return-object v0
.end method


# virtual methods
.method public createRpcExecutor()Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 616
    new-instance v0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;Landroid/app/Activity;I)V

    .line 678
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 679
    return-object v0
.end method

.method public varargs abstract exec(I[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract getCurrentPage()I
.end method

.method protected abstract getListData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract getResultView()Ljava/lang/String;
.end method

.method public getRpcResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->rpcResult:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getTotalPage()I
.end method

.method public abstract isBizSuccess()Z
.end method

.method public isListEmpty()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->rpcResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getListData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->getListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public varargs onFinishExceptionInUi(Lcom/alipay/mobile/common/rpc/RpcException;I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public varargs onFinishInUi(Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 745
    return-void
.end method

.method public varargs onFinishNetworkErrorInUi(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public varargs onFinishStartInUi(Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 735
    return-void
.end method
