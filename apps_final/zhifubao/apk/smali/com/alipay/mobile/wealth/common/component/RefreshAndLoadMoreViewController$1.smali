.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoScrollMore()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->n:I
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$5(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;->onLoadMore(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$1;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$6(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 162
    return-void
.end method
