.class public abstract Lcom/alipay/android/app/display/uielement/BaseEditElement;
.super Lcom/alipay/android/app/display/uielement/BaseElement;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;
.implements Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Lcom/alipay/android/app/widget/CustomEditText;",
        ">;",
        "Lcom/alipay/android/app/display/uielement/ISubmitable;",
        "Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/android/app/widget/CustomEditText;

.field protected b:Lcom/alipay/android/app/widget/FormatBankcard;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    const-string/jumbo v2, "msp_input_delete"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/app/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomEditText;->removeIcon()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/BaseEditElement;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/l;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/l;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/display/uielement/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/display/uielement/n;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/BaseEditElement;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->u()V

    return-void
.end method

.method private t()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final u()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/display/uielement/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/m;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/display/uielement/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/display/uielement/a;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    check-cast p2, Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->k()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/app/display/uielement/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/e;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->setOnDoneListener(Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/f;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/k;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/i;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/g;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/d;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->u()V

    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->c:Ljava/lang/String;

    const-string/jumbo v0, "regex"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->d:Ljava/lang/String;

    const-string/jumbo v0, "regex_msg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e:Ljava/lang/String;

    const-string/jumbo v0, "blankMsg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->f:Ljava/lang/String;

    const-string/jumbo v0, "default_value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g:Ljava/lang/String;

    return-void
.end method

.method protected b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/b;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/b;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/c;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/c;-><init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/alipay/android/app/widget/CustomEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomEditText;->hiddenPopHint()V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a:Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomEditText;->removeIcon()V

    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->u()V

    :cond_0
    return v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msp_please_input"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->f:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->t()Z

    move-result v0

    goto :goto_0
.end method
