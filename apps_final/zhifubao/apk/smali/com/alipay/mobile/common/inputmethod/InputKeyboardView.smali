.class public abstract Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;


# instance fields
.field protected mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public focusIn(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->show()V

    return-void
.end method

.method public focusOut()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->hide()V

    return-void
.end method

.method public focusWith(Landroid/widget/EditText;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->mEditText:Landroid/widget/EditText;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getInputKeyboard()Landroid/inputmethodservice/Keyboard;
.end method

.method protected abstract getKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.end method

.method protected abstract hide()V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/inputmethodservice/KeyboardView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->getInputKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->getKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    return-void
.end method

.method protected abstract show()V
.end method
