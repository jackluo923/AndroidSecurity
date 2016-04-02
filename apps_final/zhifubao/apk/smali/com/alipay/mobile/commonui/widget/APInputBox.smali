.class public Lcom/alipay/mobile/commonui/widget/APInputBox;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;


# static fields
.field public static final DARK:I = 0x11

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:Z

.field private b:I

.field protected bgGroup:I

.field protected bgType:I

.field private c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field private d:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

.field private i:Ljava/util/ArrayList;

.field private j:I

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v3, -0x1

    const/16 v11, 0x10

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->b:I

    iput-boolean v10, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->f:Z

    iput v11, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgGroup:I

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->i:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->k:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->inflateLayout(Landroid/content/Context;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->contentName:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$dimen;->defaultFontSize:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v10, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->j:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    if-eqz p2, :cond_3

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x9

    invoke-virtual {v8, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v0, 0xb

    invoke-virtual {v8, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->k:Landroid/content/res/ColorStateList;

    const/16 v0, 0x14

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->l:Landroid/content/res/ColorStateList;

    const/16 v0, 0xc

    invoke-virtual {v8, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->j:I

    const/16 v0, 0x11

    invoke-virtual {v8, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgType:I

    invoke-virtual {v8, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgGroup:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v8, Lcom/alipay/mobile/ui/R$styleable;->emojiAttr:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-virtual {v8, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Z

    invoke-virtual {v8, v10, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->b:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-boolean v8, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Z

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->b:I

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setEmojiSize(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-class v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v8, Lcom/alipay/mobile/commonui/widget/APInputBox$1;

    invoke-direct {v8, p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox$1;-><init>(Lcom/alipay/mobile/commonui/widget/APInputBox;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputName(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputNameTextSize(F)V

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputTextSize(F)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setLength(I)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setHint(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setHintTextColor(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setApprerance(Z)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APInputBox$2;-><init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APInputBox$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APInputBox$4;-><init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v11}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setItemPositionStyle(I)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APInputBox$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APInputBox$3;-><init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setItemPositionStyle(I)V

    goto :goto_2

    :cond_3
    move v5, v4

    move v6, v4

    move-object v7, v2

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APInputBox;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addValidator(Lcom/alipay/mobile/commonui/validator/APValidator;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearValidator()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getClearButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method public getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method public getInputName()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->j:I

    return v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSafeEtContent()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method public getUbbStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getUbbStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method protected initInputContent()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->inputbox_edittext_margin_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->inputbox_edittext_margin_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->f:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->onInputTextStatusChanged(ZZ)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->m:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->m:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setClearButtonVisiable(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setClearButtonVisiable(Z)V

    goto :goto_0
.end method

.method public setApprerance(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->d:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->b:I

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setHintTextColor(I)V

    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorRed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputName(Ljava/lang/String;I)V

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
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setInputNameTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTextColor(I)V

    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2

    const/16 v0, 0x10

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgGroup:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x11

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->bgGroup:I

    if-ne v0, v1, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_middle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_bottom:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLength(I)V
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->f:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->m:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    return-void
.end method

.method public validate()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/validator/APValidator;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

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
