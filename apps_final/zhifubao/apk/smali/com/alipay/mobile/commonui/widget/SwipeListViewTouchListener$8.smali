.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->val$originalHeight:I

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # --operator for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$706(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$700(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;->val$originalHeight:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$800(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V

    :cond_0
    return-void
.end method
