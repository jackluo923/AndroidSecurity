.class Lcom/alipay/mobile/commonui/widget/APInputBox$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->requestFocus()Z

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->isPasswordType()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
