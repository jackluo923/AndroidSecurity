.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$000(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->openAnimate(I)V

    const/4 v0, 0x0

    return v0
.end method
