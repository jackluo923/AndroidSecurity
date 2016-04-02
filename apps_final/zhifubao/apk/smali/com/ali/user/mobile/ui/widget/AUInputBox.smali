.class public Lcom/ali/user/mobile/ui/widget/AUInputBox;
.super Landroid/widget/RelativeLayout;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;


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

.field private j:Lcom/ali/user/mobile/ui/widget/AUFormatter;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/ui/widget/AUValidator;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x1000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Z

    .line 142
    const/16 v0, 0x10

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:I

    .line 146
    iput-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:Ljava/util/ArrayList;

    .line 150
    iput-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:Ljava/lang/String;

    .line 154
    iput v5, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:I

    .line 155
    iput v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    .line 156
    iput v6, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->r:I

    .line 157
    iput-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Ljava/lang/String;

    .line 159
    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Z

    .line 174
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->inflateLayout(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->defaultFontSize:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:F

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:F

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:F

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:F

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->colorccc:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:I

    .line 177
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-class v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v3, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;

    invoke-direct {v3, p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox$1;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    if-eqz p2, :cond_2

    .line 180
    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:Ljava/lang/String;

    const/4 v0, 0x2

    iget v4, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:F

    const/4 v0, 0x3

    iget v4, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:F

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:F

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:I

    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->r:I

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->colorccc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:I

    const/16 v0, 0xd

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Z

    const/16 v0, 0xe

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:I

    const/16 v0, 0xf

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:I

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputNameImage(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:F

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputNameTextSize(F)V

    .line 185
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:F

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextSize(F)V

    .line 186
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextColor(I)V

    .line 187
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputType(I)V

    .line 188
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->r:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setLength(I)V

    .line 189
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHintTextColor(I)V

    .line 191
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setApprerance(Z)V

    .line 192
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 193
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    :cond_2
    new-instance v0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox$4;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/ali/user/mobile/ui/widget/AUInputBox$3;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox$3;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    return-void

    :cond_3
    move v0, v1

    .line 192
    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    .line 196
    :pswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/AUFormatter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 444
    :cond_0
    return-void
.end method

.method public addValidator(Lcom/ali/user/mobile/ui/widget/AUValidator;)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method public clearValidator()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 751
    return-void
.end method

.method public getClearButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getEtContent()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInputName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpecialFuncImg()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 277
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->au_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 278
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    .line 279
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contentImage:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    .line 280
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contentName:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    .line 281
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    .line 282
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->specialFuncImgButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    .line 283
    return-void
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->onInputTextStatusChanged(ZZ)V

    .line 684
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 687
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 680
    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->onInputTextStatusChanged(ZZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 631
    if-eqz p2, :cond_1

    .line 632
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setClearButtonVisiable(Z)V

    .line 636
    :goto_1
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setClearButtonVisiable(Z)V

    goto :goto_1
.end method

.method public setApprerance(Z)V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/view/View$OnClickListener;

    .line 462
    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2

    .prologue
    .line 645
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 604
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 606
    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 615
    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 3

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->colorRed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->colorBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;I)V

    .line 548
    return-void
.end method

.method public setInputName(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 516
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInputNameImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 534
    if-eqz p1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInputNameTextSize(F)V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 568
    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 587
    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2

    .prologue
    .line 575
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 578
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 596
    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2

    .prologue
    .line 698
    const/16 v0, 0x10

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:I

    if-ne v0, v1, :cond_0

    .line 699
    packed-switch p1, :pswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 701
    :pswitch_0
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_top_normal:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 704
    :pswitch_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_center_normal:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 707
    :pswitch_2
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_bottom_normal:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 714
    :cond_0
    const/16 v0, 0x11

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:I

    if-ne v0, v1, :cond_1

    .line 715
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 717
    :pswitch_3
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_top_dark:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 720
    :pswitch_4
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_center_dark:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 723
    :pswitch_5
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->aliuser_input_bottom_dark:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 730
    :cond_1
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:I

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 715
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setLength(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    if-ltz p1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Z

    .line 675
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 427
    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 452
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->x:Landroid/view/View$OnFocusChangeListener;

    .line 454
    :cond_0
    return-void
.end method

.method public setSepciaFunBtn(I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 231
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    .line 481
    :goto_0
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 482
    check-cast v0, Landroid/text/Spannable;

    .line 483
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 485
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0
.end method

.method public setTextFormatter(Lcom/ali/user/mobile/ui/widget/AUFormatter;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;

    .line 385
    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public validate()Z
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 758
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUValidator;

    .line 759
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    goto :goto_0
.end method
