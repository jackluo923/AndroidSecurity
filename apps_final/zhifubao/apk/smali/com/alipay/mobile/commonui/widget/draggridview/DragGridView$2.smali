.class Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-boolean v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
