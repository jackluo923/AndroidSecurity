.class public Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;
.super Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;


# instance fields
.field private a:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;-><init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->a:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->setPreviewEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/inputmethod/InputKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$1;-><init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->a:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->setPreviewEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getInputKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$xml;->cardid_keyboard:I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->a:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method protected hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$anim;->slide_out_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$3;-><init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected show()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$anim;->slide_in_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$2;-><init>(Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
