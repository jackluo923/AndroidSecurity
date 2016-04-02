.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/rpc/RpcException;

.field private final synthetic b:[Ljava/lang/Object;

.field final synthetic this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->a:Lcom/alipay/mobile/common/rpc/RpcException;

    iput-object p3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->b:[Ljava/lang/Object;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->a:Lcom/alipay/mobile/common/rpc/RpcException;

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->this$2:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->this$1:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;
    invoke-static {v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper$1$2;->b:[Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$RpcWrapper;->onFinishExceptionInUi(Lcom/alipay/mobile/common/rpc/RpcException;I[Ljava/lang/Object;)V

    .line 661
    return-void
.end method
