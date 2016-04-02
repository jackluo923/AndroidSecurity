.class public Lcom/alipay/mobile/commonui/widget/APLineInputBox;
.super Lcom/alipay/mobile/commonui/widget/APButtonInputBox;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_line_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->onFinishInflate()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->bgType:I

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->onFocusChange(Landroid/view/View;Z)V

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_blue:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_green:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->onInputTextStatusChanged(ZZ)V

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_blue:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_green:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setItemPositionStyle(I)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_box_line_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineInputBox;->setBackgroundResource(I)V

    return-void
.end method
