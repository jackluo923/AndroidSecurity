.class public Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;
.super Landroid/widget/LinearLayout;
.source "AUAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/AdapterView$OnItemClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$layout;->autocompletetextview:I

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->accountNameFlagImage:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->a:Landroid/widget/ImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->accountNameFlag:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->b:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->accountCompleteTextView:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->accountClearButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->accountSwithArrow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->e:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    new-instance v4, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$1;-><init>(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)V

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    new-instance v4, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$2;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView$2;-><init>(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)V

    invoke-virtual {v0, v4}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->autoCompleteTextView:[I

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x5

    sget v1, Lcom/ali/user/mobile/security/ui/R$color;->colorccc:I

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setHintTextColor(I)V

    const/4 v0, 0x2

    sget v1, Lcom/ali/user/mobile/security/ui/R$color;->colorccc:I

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setTextColor(I)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public getCleanButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDownArrowView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getInputView()Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 202
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->accountClearButton:I

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->g:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->d:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setCleanButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->g:Landroid/view/View$OnClickListener;

    .line 151
    return-void
.end method

.method public setNameFlagText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->f:Landroid/widget/AdapterView$OnItemClickListener;

    .line 146
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->c:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUAutoCompleteTextView;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    return-void
.end method
