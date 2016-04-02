.class final Lcom/alipay/android/app/ui/quickpay/keyboard/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/method/KeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final getInputType()I
    .locals 4

    const/16 v0, 0x80

    const/16 v3, 0xe

    const-string/jumbo v1, "samsung"

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/TaoHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "isSpecialCursor"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/f;->a:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

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

.method public final onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
