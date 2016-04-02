.class Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getInstance(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$402(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->k:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->k:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOKListener(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOKText(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->isOnShowEnableOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->showKeyboard()V

    goto :goto_0
.end method
