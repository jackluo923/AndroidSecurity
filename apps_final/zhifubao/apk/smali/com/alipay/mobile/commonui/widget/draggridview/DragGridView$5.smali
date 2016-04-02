.class Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field mPreviousY:I

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->mPreviousY:I

    return-void
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # invokes: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$600(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # invokes: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$600(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iput p2, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mCurrentFirstVisibleItem:I

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->c:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->c:I

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->checkAndHandleFirstVisibleCellChange()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->checkAndHandleLastVisibleCellChange()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->c:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->b:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # setter for: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->l:I
    invoke-static {v0, p2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$202(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # getter for: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->j:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$300(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # invokes: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$400(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    # getter for: Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$500(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->finishDrag()V

    :cond_1
    return-void
.end method
