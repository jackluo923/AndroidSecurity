.class Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$origViewPosition:I

.field final synthetic val$targetViewPosition:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;Landroid/view/ViewTreeObserver;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$origViewPosition:I

    iput p4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$targetViewPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$origViewPosition:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;->val$targetViewPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->animationReorder(II)V

    const/4 v0, 0x1

    return v0
.end method
