.class Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
