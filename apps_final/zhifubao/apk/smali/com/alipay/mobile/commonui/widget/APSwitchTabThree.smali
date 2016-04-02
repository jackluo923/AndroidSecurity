.class public Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/commonui/widget/APButton;

.field private d:Lcom/alipay/mobile/commonui/widget/APButton;

.field private e:Lcom/alipay/mobile/commonui/widget/APButton;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_switch_tab_three:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->subSwitchTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->b:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getLeftBtn()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getMiddleBtn()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getRightBtn()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getmTabSwitchListener()Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;->tabSwitchListener(ILandroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;->tabSwitchListener(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;->tabSwitchListener(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;->tabSwitchListener(ILandroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->left_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->right_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->center_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    return-void
.end method

.method public setLeftBtn(Lcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method public setMiddleBtn(Lcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method public setRightBtn(Lcom/alipay/mobile/commonui/widget/APButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method

.method public setmTabSwitchListener(Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTabThree;->g:Lcom/alipay/mobile/commonui/widget/APSwitchTabThree$TabSwitchThreeListener;

    return-void
.end method
