.class Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 12

    const/4 v11, 0x6

    const/4 v1, -0x3

    const/4 v5, 0x0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    iget-object v0, v0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->onEditorAction(I)V

    :cond_0
    const/16 v0, -0xa

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->focusOut()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v6, p1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    iget-object v1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;->this$0:Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;

    iget-object v1, v1, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 0

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
