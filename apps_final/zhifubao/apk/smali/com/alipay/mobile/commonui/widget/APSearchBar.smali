.class public Lcom/alipay/mobile/commonui/widget/APSearchBar;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_search_bar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->SearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->alpha30BlueColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->searchTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method


# virtual methods
.method public getBtnSearchBarClear()Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method public getSearchBarRl()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getSearchBarText()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getSearchTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method public getmSearchBarIcon()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_inputbox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setEnabled(Z)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->btn_search_bar_clear:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_button_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_inputbox_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_inputbox_layout_target:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_search_btn_target:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->search_bar_inputbox_target:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setTextChaged()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setClearBtnClick()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setLength()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->showSearchButton()V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public searchButtonisActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->f:Z

    return v0
.end method

.method protected setClearBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSearchBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar$3;-><init>(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLength()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->g:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method protected setTextChaged()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSearchBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSearchBar$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setmSearchBarButton(Lcom/alipay/mobile/commonui/widget/APLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-void
.end method

.method public setmSearchBarIcon(Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method

.method public setmSearchBarInputBox(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-void
.end method

.method public showSearchButton()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->j:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    return-void
.end method

.method public toggleSoftInput()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
