.class public Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
.super Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;


# static fields
.field public static final DARK:I = 0x11

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private e:Ljava/util/Map;

.field private f:I

.field private g:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

.field private h:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;

.field private i:I

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->sixCharInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_six_number_pwd_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setData(Lcom/alipay/mobile/commonui/widget/APLinearLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->g:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->h:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;

    return-object v0
.end method


# virtual methods
.method public addSpwdInputWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearInput()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->showInputPannel(Landroid/view/View;)V

    return-void
.end method

.method public clearPwd()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    return-void
.end method

.method public clearPwdByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    return-void
.end method

.method public bridge synthetic getEditText()Landroid/widget/EditText;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getEditText()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInputView()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getInputedPwd(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->e:Ljava/util/Map;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->onFinishInflate()V

    const/16 v0, 0x10

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setBgtype(I)V

    :cond_0
    return-void
.end method

.method public setBgtype(I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->i:I

    packed-switch v1, :pswitch_data_0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_left_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_right_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_midle_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->six_no_bg_midle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected setData(Lcom/alipay/mobile/commonui/widget/APLinearLayout;)V
    .locals 7

    sget v0, Lcom/alipay/mobile/ui/R$id;->mini_linSimplePwdComponent:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_1:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_2:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_3:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_4:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_5:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->j:Ljava/util/List;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_rl_6:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_1:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_2:I

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_3:I

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_4:I

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v4, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_5:I

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v5, Lcom/alipay/mobile/ui/R$id;->mini_spwd_iv_6:I

    invoke-virtual {p1, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/alipay/mobile/ui/R$id;->mini_spwd_input:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setUseSafePassKeyboard(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->g:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    return-void
.end method

.method public setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->h:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;

    return-void
.end method

.method public setPwdText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
