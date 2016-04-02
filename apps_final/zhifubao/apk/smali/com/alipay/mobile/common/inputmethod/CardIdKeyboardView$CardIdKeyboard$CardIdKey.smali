.class Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;
.super Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->codes:[I

    aget v1, v1, v0

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->codes:[I

    aget v1, v1, v0

    const/16 v2, -0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->codes:[I

    aget v1, v1, v0

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->pressed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/inputmethod/CardIdKeyboardView$CardIdKeyboard$CardIdKey;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x10100a0
        0x101009f
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        0x101009f
    .end array-data
.end method
