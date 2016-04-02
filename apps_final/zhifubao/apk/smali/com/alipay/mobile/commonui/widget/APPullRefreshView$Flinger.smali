.class Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:I

.field private c:Z

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/commonui/widget/APPullRefreshView;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->a:Landroid/widget/Scroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->c:Z

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->c:Z

    return v0
.end method

.method public recover(I)V
    .locals 6

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->b:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->c:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->a:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    # invokes: Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->a(IZ)Z
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->access$000(Lcom/alipay/mobile/commonui/widget/APPullRefreshView;IZ)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->b:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->c:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$Flinger;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
