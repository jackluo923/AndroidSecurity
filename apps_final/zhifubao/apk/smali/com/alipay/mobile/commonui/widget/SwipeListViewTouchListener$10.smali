.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;->val$originalHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;->val$originalHeight:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->access$800(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V

    return-void
.end method
