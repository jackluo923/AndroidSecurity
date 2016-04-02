.class public Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Ljava/util/List;

.field private l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->f:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->f:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_social_tag_search_bar:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->SocialTagSearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->f:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->f:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    goto :goto_0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->i:Z

    goto :goto_0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->isTagExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_social_tag_search_bar_tag:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$7;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;->tagAdded(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->a()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public getBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method public getClearButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->d:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInputEdit()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    return-object v0
.end method

.method protected initBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$4;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isTagExist(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_tag_search_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_tag_btn_clear:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->d:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_tag_search_tag_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_tag_search_input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->social_tag_input_bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->j:Landroid/view/View;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->initBackButton()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->setInputMaxLength()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->setNormalTextChanged()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->setNormalClearBtnClick()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$3;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->h:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->social_search_Green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->isTagExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;->tagRemoved(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->a()V

    goto :goto_0
.end method

.method public setInputMaxLength()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->g:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method protected setNormalClearBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->d:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$5;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setNormalTextChanged()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$6;-><init>(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnSearchContentChangeListener(Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar;->l:Lcom/alipay/mobile/commonui/widget/APSocialTagSearchBar$OnSearchContentChangeListener;

    return-void
.end method
