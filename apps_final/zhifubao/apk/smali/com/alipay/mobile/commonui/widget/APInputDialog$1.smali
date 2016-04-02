.class Lcom/alipay/mobile/commonui/widget/APInputDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->cancel()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->m:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$000(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->m:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$000(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;->onClick()V

    :cond_0
    return-void
.end method
