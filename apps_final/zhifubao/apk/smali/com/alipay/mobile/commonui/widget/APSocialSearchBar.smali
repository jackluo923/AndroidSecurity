.class public Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private c:Landroid/view/View;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->g:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->i:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->g:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->i:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_social_search_bar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->SocialSearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->h:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->g:Z

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->g:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->i:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method public getClearButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->c:Landroid/view/View;

    return-object v0
.end method

.method public getSearchButton()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getSearchInputEdit()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getSearchRelativeLayout()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method protected initBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_search_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_search_normal_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_btn_normal_clear:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->c:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_btn_normal_do_search:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_search_normal_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_normal_input_bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->e:Landroid/view/View;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->social_search_button_selector_blue:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->initBackButton()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->setInputMaxLength()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->setNormalTextChanged()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->setNormalClearBtnClick()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->k:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->social_search_button_selector_green:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setInputMaxLength()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->j:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method protected setNormalClearBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->c:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setNormalTextChanged()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar$3;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
