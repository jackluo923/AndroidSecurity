.class public Lcom/alipay/android/app/assist/FlybirdKeyboard;
.super Ljava/lang/Object;


# static fields
.field private static i:Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/Activity;

.field private c:Landroid/inputmethodservice/Keyboard;

.field private d:Landroid/inputmethodservice/Keyboard;

.field private e:Landroid/inputmethodservice/Keyboard;

.field private f:Landroid/inputmethodservice/Keyboard;

.field private g:Landroid/inputmethodservice/Keyboard;

.field private h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

.field private j:Z

.field private k:Z

.field private l:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

.field private m:Lcom/alipay/android/app/template/KeyboardType;

.field private n:Landroid/view/View;

.field private o:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->j:Z

    new-instance v0, Lcom/alipay/android/app/assist/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/assist/a;-><init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->o:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iput-object v2, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->m:Lcom/alipay/android/app/template/KeyboardType;

    iput-object p1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->n:Landroid/view/View;

    iput-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->k:Z

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_money"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->c:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_qwerty"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_digits"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->e:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_symbols_normal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_keyboard_symbols_more"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->j(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->g:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/widget/EditText;
    .locals 4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    instance-of v3, v0, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/EditText;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a:Landroid/widget/EditText;

    return-object v0
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

.method static synthetic b(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->j:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->j:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Ljava/lang/String;)Z

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

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->j:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

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

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->j:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_keyboard_key_shift_down"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_keyboard_key_shift_up"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1
.end method

.method static synthetic c()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->i:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->g:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->h:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboard;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->f:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->g:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/assist/FlybirdKeyboard;)Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->l:Lcom/alipay/android/app/ui/quickpay/keyboard/SymbolMap;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FlybirdKeyboard\u662f\u5426\u663e\u793a\u952e\u76d8:false KeyboardType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->m:Lcom/alipay/android/app/template/KeyboardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b()Z

    move-result v0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/assist/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/assist/b;-><init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "keyboard_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/assist/FlybirdKeyboard;->b:Landroid/app/Activity;

    new-instance v4, Lcom/alipay/android/app/assist/c;

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/android/app/assist/c;-><init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v3

    goto :goto_0
.end method
