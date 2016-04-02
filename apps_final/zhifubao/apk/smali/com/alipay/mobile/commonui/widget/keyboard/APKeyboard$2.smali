.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/method/KeyListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0

    return-void
.end method

.method public getInputType()I
    .locals 3

    const/16 v0, 0x80

    const/16 v2, 0xe

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "samsung"

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->isSpecialManuFacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getInputType()I

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " 100 down keycode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isUseDefault:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideKeyboard()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x52

    if-ne p3, v1, :cond_0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " 100 other keycode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "isUseDefault:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " 100 up keycode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isUseDefault:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    const/16 v1, 0x52

    if-ne p3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
