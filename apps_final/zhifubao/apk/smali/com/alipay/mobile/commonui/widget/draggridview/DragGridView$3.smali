.class Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v1, v1, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->reCaculatePosition(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-object v1, v1, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onEditAction(I)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v1, v1, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->appHasMoved:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iput-boolean v0, v1, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->appHasMoved:Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    goto :goto_0
.end method
