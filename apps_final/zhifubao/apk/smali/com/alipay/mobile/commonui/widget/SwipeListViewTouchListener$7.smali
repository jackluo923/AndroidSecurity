.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->a:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->b:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->a:Z

    if-eqz v2, :cond_3

    if-ne p2, v1, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->a:Z

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->b:Z

    if-eqz v2, :cond_6

    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x1

    if-ne v2, v3, :cond_5

    :goto_2
    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->b:Z

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    move v2, v1

    :goto_4
    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->a:Z

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onFirstListItem()V

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_4

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    add-int v2, p2, p3

    if-lt v2, p4, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->b:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onLastListItem()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    if-eq p2, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->c:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$500(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->closeOpenedItems()V

    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # setter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->H:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$602(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # setter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->H:Z
    invoke-static {v0, v2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$602(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    const/4 v1, -0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$002(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->resetScrolling()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7$1;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method
