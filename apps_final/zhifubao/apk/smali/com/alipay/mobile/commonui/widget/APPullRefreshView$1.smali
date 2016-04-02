.class Lcom/alipay/mobile/commonui/widget/APPullRefreshView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPullRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, v1, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->mOverView:Lcom/alipay/mobile/commonui/widget/APOverView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APOverView;->getOverViewHeight()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->mMaxMagin:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
