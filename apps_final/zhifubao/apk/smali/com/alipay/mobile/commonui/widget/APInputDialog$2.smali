.class Lcom/alipay/mobile/commonui/widget/APInputDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$200(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$200(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputDialog;->l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    goto :goto_0
.end method
