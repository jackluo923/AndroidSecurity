.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field private final synthetic b:Z

.field final synthetic this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;[Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->a:[Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->b:Z

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 638
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RefreshAndLoadMoreVC"

    const-string/jumbo v2, "onFinishStartInUi start..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    iget-object v2, v0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->rpcResult:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->a:[Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->onFinishStartInUi(Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 640
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->b:Z

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$1(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 647
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    iget-object v2, v0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->rpcResult:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->a:[Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->onFinishInUi(Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$2(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;Z)V

    .line 649
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->a:Z
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$1(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$1;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$2(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    goto :goto_0
.end method
