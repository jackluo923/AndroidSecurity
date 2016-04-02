.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    # getter for: Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$000(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onClickFrontView(I)V

    return-void
.end method
