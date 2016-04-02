.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->resetScrolling()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$200(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    return-void
.end method
