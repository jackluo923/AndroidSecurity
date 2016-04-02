.class Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7$1;->this$1:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7$1;->this$1:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;->this$0:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setEnabled(Z)V

    return-void
.end method
