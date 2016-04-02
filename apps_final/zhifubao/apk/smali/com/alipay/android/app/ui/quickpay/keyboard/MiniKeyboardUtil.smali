.class public Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil$1;
    }
.end annotation


# static fields
.field private static l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/inputmethodservice/Keyboard;

.field private c:Landroid/inputmethodservice/Keyboard;

.field private d:Landroid/inputmethodservice/Keyboard;

.field private e:Landroid/inputmethodservice/Keyboard;

.field private f:Landroid/inputmethodservice/Keyboard;

.field private g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

.field private h:Landroid/widget/LinearLayout;

.field private i:Z

.field private j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

.field private k:Landroid/app/Activity;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i:Z

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/keyboard/a;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->n:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_money"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_qwerty"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_digits"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_symbols_normal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_symbols_more"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->f:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    invoke-static {p3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/keyboard/e;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/e;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x20

    aput v0, v2, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, -0x20

    aput v0, v2, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->i:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_keyboard_key_shift_down"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_keyboard_key_shift_up"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->f:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->f:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    :cond_0
    sput-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d:Landroid/inputmethodservice/Keyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b:Landroid/inputmethodservice/Keyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->e:Landroid/inputmethodservice/Keyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->f:Landroid/inputmethodservice/Keyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;->a()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->j:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    :cond_1
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "keyboard_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    sput-object p2, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    :cond_2
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil$1;->b:[I

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/keyboard/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/d;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "mini_keepbackground_layout"

    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "mini_layout_parent"

    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "mini_keeppre_layout"

    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;Landroid/widget/EditText;Landroid/text/method/KeyListener;ZLcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_2

    sput-object p5, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string/jumbo v2, "mini_keyboard"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "changeToSystem"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/keyboard/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/ui/quickpay/keyboard/b;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "keyboard_view"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setEnabled(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->n:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_1
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :goto_2
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/keyboard/c;

    invoke-direct {v1, p0, p4, v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/c;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;ZLandroid/view/ViewGroup;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/keyboard/f;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/keyboard/f;-><init>(Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->c:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->d:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->g:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardUtil;->b:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
