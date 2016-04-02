.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;->onRetry()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$5;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$14(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 510
    return-void
.end method
