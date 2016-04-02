.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "RefreshAndLoadMoreViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    .line 616
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    return-object v0
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 620
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    .line 621
    const/4 v1, 0x0

    .line 622
    array-length v2, p1

    if-le v2, v3, :cond_0

    aget-object v2, p1, v3

    instance-of v2, v2, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 623
    aget-object v1, p1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    :cond_0
    return-void
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$2(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;Z)V

    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    :cond_0
    return-void
.end method

.method public varargs onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    iput-object p1, v0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->rpcResult:Ljava/lang/Object;

    .line 632
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RefreshAndLoadMoreVC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isBizSuccess:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->isBizSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->isBizSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RefreshAndLoadMoreVC"

    const-string/jumbo v3, "activity is not null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;-><init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;[Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 652
    :cond_0
    return-void

    .line 633
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
