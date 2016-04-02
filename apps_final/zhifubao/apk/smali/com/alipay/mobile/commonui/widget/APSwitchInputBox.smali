.class public Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;


# static fields
.field public static final DARK:I = 0x11

.field public static final NONE:I = 0x12

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/String;

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Z

.field private v:F

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/high16 v5, -0x1000000

    const/4 v3, 0x0

    const/16 v6, 0x10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->f:Z

    iput v6, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->h:I

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->j:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->k:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->l:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->m:Ljava/lang/String;

    iput v5, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->p:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->q:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->r:I

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->u:Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->inflateLayout(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$dimen;->defaultFontSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->v:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->v:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->n:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->v:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->o:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->t:I

    if-eqz p2, :cond_1

    sget-object v2, Lcom/alipay/mobile/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->l:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->m:Ljava/lang/String;

    const/16 v3, 0x9

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->v:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->n:F

    const/16 v3, 0xb

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->v:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->o:F

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->p:I

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->q:I

    const/16 v3, 0x11

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->r:I

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->s:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->t:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->u:Z

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->g:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->h:I

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->w:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputNameImage(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->m:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputName(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->n:F

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputNameTextSize(F)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->o:F

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputTextSize(F)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->p:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputTextColor(I)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->q:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputType(I)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->r:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setLength(I)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->s:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setHint(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->t:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setHintTextColor(I)V

    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->u:Z

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setApprerance(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->e:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->e:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$3;-><init>(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setItemPositionStyle(I)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->j:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addValidator(Lcom/alipay/mobile/commonui/validator/APValidator;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearValidator()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getClearButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getEtContent()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInputName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpecialFuncImg()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->au_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->contentImage:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->a:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->contentName:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->specialFuncImgButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->e:Landroid/widget/ImageButton;

    return-void
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->f:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->onInputTextStatusChanged(ZZ)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->onInputTextStatusChanged(ZZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setClearButtonVisiable(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setClearButtonVisiable(Z)V

    goto :goto_0
.end method

.method public setApprerance(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorRed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setInputName(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputName(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setInputNameImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInputNameTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2

    const/16 v0, 0x10

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->h:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x11

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->h:I

    if-ne v0, v1, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_middle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_bottom:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLength(I)V
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->f:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    return-void
.end method

.method public setSepciaFunBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    :goto_0
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0
.end method

.method public setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->j:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    return-void
.end method

.method public validate()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/validator/APValidator;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/commonui/validator/APValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
