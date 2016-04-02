.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$9(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->p:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$9(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$3;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->k:Z
    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$10(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
