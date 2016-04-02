.class public Lcom/alipay/mobile/commonui/widget/APPwdInputBox;
.super Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field private c:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

.field private d:Ljava/util/Map;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_pwd_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->mini_linSimplePwdComponent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->mini_spwd_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;-><init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;-><init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    return v0
.end method


# virtual methods
.method public callInputMethod()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    return-void
.end method

.method public clearInput()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->showInputPannel(Landroid/view/View;)V

    return-void
.end method

.method public clearPwd()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    return-void
.end method

.method public clearPwdByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    return-void
.end method

.method public bridge synthetic getEditText()Landroid/widget/EditText;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->getEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method public getInputedPwd(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->d:Ljava/util/Map;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected setPointView(I)V
    .locals 7

    const/4 v6, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$drawable;->black_point_in_pwdview:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    sub-int v4, v3, v2

    add-int/2addr v0, v2

    div-int/2addr v4, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildCount()I

    move-result v0

    if-ge v0, p1, :cond_1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v2, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->black_point_in_pwdview:I

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_3

    sub-int v0, v3, v2

    div-int/2addr v0, p1

    sub-int v2, v0, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    if-ge v0, p1, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    return-void
.end method

.method public setPwdText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
