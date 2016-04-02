.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->position:I

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;)I
    .locals 2

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->compareTo(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
