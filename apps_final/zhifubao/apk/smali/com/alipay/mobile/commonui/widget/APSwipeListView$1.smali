.class Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSwipeListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSwipeListView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onListChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->access$000(Lcom/alipay/mobile/commonui/widget/APSwipeListView;)Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->resetItems()V

    return-void
.end method
