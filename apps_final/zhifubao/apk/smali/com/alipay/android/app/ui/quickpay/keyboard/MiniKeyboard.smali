.class public Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;
.super Landroid/inputmethodservice/KeyboardView;


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
.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    return v0
.end method
