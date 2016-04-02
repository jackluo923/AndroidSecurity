.class public Lcom/alipay/android/app/template/view/widget/TEditText;
.super Lcom/alipay/android/app/template/view/widget/TLabel;
.source "TEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Landroid/app/Dialog;

.field private E:I

.field private F:I

.field protected a:Landroid/widget/EditText;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 39
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->s:Z

    .line 41
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    .line 61
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->C:Z

    .line 63
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->D:Landroid/app/Dialog;

    .line 65
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    .line 67
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    .line 71
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_main_layout"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/TemplateWindow;->setKeyboardParent(Landroid/widget/LinearLayout;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 304
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TEditText;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TEditText;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TEditText;)Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/TEditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/TEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/view/widget/TEditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;
    .locals 6

    .prologue
    .line 314
    new-instance v3, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    .line 315
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 317
    :goto_0
    if-nez v0, :cond_2

    .line 325
    :cond_0
    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v4, v5, :cond_4

    .line 327
    check-cast v0, Lcom/alipay/android/app/template/view/widget/TDialog;

    .line 328
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TDialog;->getCurrentRootLayout()Landroid/view/View;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_3

    .line 330
    const/4 v0, 0x1

    move v1, v0

    move-object v0, v2

    .line 333
    :goto_1
    if-nez v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 336
    :cond_1
    iput-object v0, v3, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    .line 337
    iput-boolean v1, v3, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->b:Z

    .line 338
    return-object v3

    .line 318
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v1

    .line 319
    sget-object v4, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v1, v4, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->q:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    .line 80
    const-string/jumbo v1, "template_clean_icon"

    const-string/jumbo v2, "drawable"

    .line 81
    const-string/jumbo v3, "com.alipay.android.app.template"

    .line 79
    invoke-static {p1, v1, v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getPaddingDrawable(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    if-nez p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    .line 348
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-nez v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->s:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->q:Ljava/lang/String;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 593
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->q:Ljava/lang/String;

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->s:Z

    .line 595
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->oninput:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 600
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->s:Z

    .line 602
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->d()V

    goto :goto_0

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 561
    const/16 v0, 0x13

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method final c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->isUseDefaultKeyboard(Lcom/alipay/android/app/template/view/ViewType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedFillView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 224
    const/16 v6, 0x258

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v0

    .line 231
    iget-object v4, v0, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    .line 232
    iget-boolean v6, v0, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->b:Z

    .line 233
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    .line 235
    if-nez v6, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 236
    :goto_2
    if-nez v6, :cond_7

    .line 237
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 238
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 246
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedFillView()Z

    move-result v1

    if-nez v1, :cond_8

    .line 247
    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    new-instance v0, Lcom/alipay/android/app/template/view/widget/TEditText$3;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/template/view/widget/TEditText$3;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;Landroid/view/View;ZLandroid/view/View;Z)V

    .line 268
    const-wide/16 v1, 0x258

    .line 251
    invoke-virtual {v7, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 235
    goto :goto_2

    .line 240
    :cond_6
    const v1, 0x1020002

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "dialog_linear_layout"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 270
    :cond_8
    if-eqz v0, :cond_a

    .line 271
    const/16 v7, 0xc8

    .line 273
    :goto_4
    if-nez v3, :cond_9

    .line 274
    invoke-direct {p0, v2, v4}, Lcom/alipay/android/app/template/view/widget/TEditText;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 276
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    .line 277
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->getKeyboardType(Lcom/alipay/android/app/template/view/ViewType;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v3

    .line 276
    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    .line 280
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isGTP8600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TEditText$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TEditText$4;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    .line 293
    const-wide/16 v2, 0xc8

    .line 281
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    move-object v5, v2

    goto :goto_5

    :cond_a
    move v7, v5

    goto :goto_4

    :cond_b
    move v6, v5

    goto/16 :goto_1
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 443
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    .line 618
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    .line 619
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    .line 620
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->destroy()V

    .line 622
    return-void
.end method

.method public encryptedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v1, v2, :cond_1

    .line 499
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 500
    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 110
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string/jumbo v3, "mCursorDrawableRes"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TLabel;->fillElementView(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_a

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 120
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/template/view/widget/TEditText;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/template/view/widget/TEditText;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_2

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_e

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    new-instance v3, Lcom/alipay/android/app/template/view/widget/TPasswordTextWatcher;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TPasswordTextWatcher;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->C:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isFocus:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->C:Z

    .line 180
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v3, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v0, v3, :cond_10

    move v2, v1

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->requestFocus()V

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-eqz v0, :cond_7

    .line 184
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->isUseDefaultKeyboard(Lcom/alipay/android/app/template/view/ViewType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/util/UiUtil;->setSafeKeyboardSoftInput(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 192
    :cond_8
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-ltz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 195
    :cond_9
    return-void

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->num:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/alipay/android/app/template/util/CardNoKeyListener;->getInstance()Lcom/alipay/android/app/template/util/CardNoKeyListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 125
    :cond_b
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/alipay/android/app/template/view/widget/TEditText$1;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TEditText$1;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    new-instance v3, Lcom/alipay/android/app/template/view/widget/TEditText$2;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TEditText$2;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    :cond_c
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->d()V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 125
    goto :goto_5

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->r:Landroid/widget/TextView;

    new-instance v3, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :cond_f
    move v0, v2

    .line 179
    goto/16 :goto_3

    .line 180
    :cond_10
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v4, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v3, v4, :cond_11

    move v2, v1

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public getPlaceHolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 447
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v1, v2, :cond_1

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 456
    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public input()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->oninput:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_4

    .line 384
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->D:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/YearMonthPickerDialog;

    const-string/jumbo v1, "\u6709\u6548\u671f"

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TEditText$5;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/template/view/widget/TEditText$5;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;Lcom/alipay/android/app/template/YearMonthPickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TEditText$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TEditText$6;-><init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setCurrentDate()V

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->D:Landroid/app/Dialog;

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->e()Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 389
    :goto_1
    return-void

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setStartPickDate(II)V

    goto :goto_0

    .line 387
    :cond_4
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TLabel;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 355
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getWidth()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getHeight()I

    move-result v2

    .line 358
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 359
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 360
    sub-int/2addr v1, v3

    div-int/lit8 v5, v3, 0x4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->x:I

    .line 361
    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->z:I

    .line 362
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->x:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->y:I

    .line 363
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->z:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->A:I

    .line 366
    :cond_0
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->x:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->B:Z

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 369
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->x:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->y:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->z:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->A:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    .line 370
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 371
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->u:Ljava/lang/String;

    .line 372
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->t:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 469
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 471
    const-string/jumbo v1, "getSelectionStart"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 472
    const-string/jumbo v2, "setSelectionStart"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 473
    const-string/jumbo v3, "selectionStart"

    invoke-virtual {p1, p2, v3, v1, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 475
    const-string/jumbo v1, "getSelectionEnd"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 476
    const-string/jumbo v2, "setSelectionEnd"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 477
    const-string/jumbo v3, "selectionEnd"

    invoke-virtual {p1, p2, v3, v1, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 479
    const-string/jumbo v1, "setSelectionRange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 480
    const-string/jumbo v2, "setSelectionRange"

    invoke-virtual {p1, p2, v2, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 482
    const-string/jumbo v1, "setPlaceHolder"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "getPlaceHolder"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 484
    const-string/jumbo v3, "placeholder"

    invoke-virtual {p1, p2, v3, v2, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 486
    const-string/jumbo v1, "setOninput"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 487
    const-string/jumbo v2, "oninput"

    invoke-virtual {p1, p2, v2, v7, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 489
    const-string/jumbo v1, "input"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 490
    const-string/jumbo v2, "input"

    invoke-virtual {p1, p2, v2, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 492
    const-string/jumbo v1, "encryptedValue"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 493
    const-string/jumbo v1, "encryptValue"

    invoke-virtual {p1, p2, v1, v0, v7}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 494
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->C:Z

    .line 433
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 436
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->c()V

    .line 439
    :cond_0
    return-void
.end method

.method public setOninput(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->v:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setPlaceHolder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setSelectionEnd(I)V
    .locals 3

    .prologue
    .line 534
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    .line 535
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-ltz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 540
    :cond_0
    return-void
.end method

.method public setSelectionRange(II)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 566
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    .line 567
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    .line 568
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    if-eq p1, p2, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 574
    :cond_0
    return-void
.end method

.method public setSelectionStart(I)V
    .locals 3

    .prologue
    .line 525
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    .line 526
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    if-ltz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->E:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->F:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 531
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    const-string/jumbo v0, "undefined"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText;->q:Ljava/lang/String;

    .line 556
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TLabel;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
