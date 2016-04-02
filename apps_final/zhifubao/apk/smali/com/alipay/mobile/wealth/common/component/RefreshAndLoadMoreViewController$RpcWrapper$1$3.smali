.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field final synthetic this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->a:[Ljava/lang/Object;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$3(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 672
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$3;->a:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->onFinishNetworkErrorInUi(I[Ljava/lang/Object;)V

    .line 673
    return-void
.end method
