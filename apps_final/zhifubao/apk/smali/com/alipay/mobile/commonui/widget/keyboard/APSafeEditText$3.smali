.class Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3$1;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->hideNormalKeyboard(Landroid/widget/EditText;)V

    goto :goto_0
.end method
