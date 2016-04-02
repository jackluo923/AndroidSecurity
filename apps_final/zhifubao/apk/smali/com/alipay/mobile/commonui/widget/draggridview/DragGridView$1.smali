.class Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->reCaculatePosition(I)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v3, p3, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->isReorderable(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditModeEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->enterEditMode(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iput p3, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mOrigPosition:I

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-static {v0, p3}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$000(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-static {v0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->access$100(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)V

    move v0, v1

    goto :goto_0
.end method
