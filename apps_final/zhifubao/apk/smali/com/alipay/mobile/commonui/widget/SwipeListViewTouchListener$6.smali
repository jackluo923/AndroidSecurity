.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field final synthetic val$position:I

.field final synthetic val$swap:Z

.field final synthetic val$swapRight:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ZIZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$swap:Z

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    iput-boolean p4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->resetScrolling()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$swap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$300(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$300(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onOpened(IZ)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$400(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$200(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$400(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onClosed(IZ)V

    goto :goto_1
.end method
