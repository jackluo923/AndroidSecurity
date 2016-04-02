.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field final synthetic val$position:I

.field final synthetic val$swap:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ZLandroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$swap:Z

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$position:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$swap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->closeOpenedItems()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->val$position:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$200(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    return-void
.end method
