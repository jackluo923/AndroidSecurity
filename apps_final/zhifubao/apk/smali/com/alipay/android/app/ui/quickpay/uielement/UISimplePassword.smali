.class public Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$a;,
        Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

.field private K:Z

.field private L:Landroid/widget/LinearLayout;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Z

.field private Q:Landroid/app/Activity;

.field private R:I

.field private S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->O:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->K:Z

    return v0
.end method


# virtual methods
.method public final M()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    return v0
.end method

.method public final N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->P:Z

    return v0
.end method

.method public final a(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->e()V

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    const-string/jumbo v0, "mini_linSimplePwdComponent"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->L:Landroid/widget/LinearLayout;

    const-string/jumbo v0, "mini_spwd_iv_1"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "mini_spwd_iv_2"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_spwd_iv_3"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v3, "mini_spwd_iv_4"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string/jumbo v4, "mini_spwd_iv_5"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string/jumbo v5, "mini_spwd_iv_6"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "mini_spwd_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->L:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/al;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/al;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "minpwd_red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mini_spwd_rl_1"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string/jumbo v1, "mini_spwd_rl_2"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string/jumbo v2, "mini_spwd_rl_3"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const-string/jumbo v3, "mini_spwd_rl_4"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "mini_spwd_rl_5"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const-string/jumbo v5, "mini_spwd_rl_6"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const-string/jumbo v6, "mini_simple_pwd_left_red"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string/jumbo v0, "mini_simple_pwd_center_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string/jumbo v0, "mini_simple_pwd_center_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string/jumbo v0, "mini_simple_pwd_center_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string/jumbo v0, "mini_simple_pwd_center_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string/jumbo v0, "mini_simple_pwd_right_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword$TextWatcherImpl;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->d:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v0, v0, 0x6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/am;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/am;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :try_start_0
    const-class v0, Landroid/widget/EditText;

    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-class v0, Landroid/widget/EditText;

    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "auto"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "auto"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->K:Z

    :cond_0
    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->M:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "format_msg"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->N:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "verifyweak"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "verifyweak"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->P:Z

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->L:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getTextMD5(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->M:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->N:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "mini_format_error"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->N:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v2, v3}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->N:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->K()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "encryptType"

    const-string/jumbo v2, "RSA"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v2, "EditTextPostProcessor_erroe"

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->Q:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->S:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->I:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->dispose()V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    :cond_1
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->L:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ak;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ak;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->b(I)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->R:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    :cond_0
    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_simple_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 0

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISimplePassword;->J:Lcom/alipay/android/app/ui/quickpay/widget/CustomSimplePasswordEditText;

    return-object v0
.end method
