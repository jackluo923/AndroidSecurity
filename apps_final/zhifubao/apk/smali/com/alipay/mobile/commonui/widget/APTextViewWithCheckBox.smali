.class public Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# static fields
.field public static final BOTTOM:I = 0x12

.field public static final CENTER:I = 0x13

.field public static final NORMAL:I = 0x10

.field public static final TOP:I = 0x11


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_textview_with_checkbox:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->TextViewWithCheckBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->c:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->d:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getLeftText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getRightCheckBox()Lcom/alipay/mobile/commonui/widget/APCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->leftText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->rightCheckBox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->setShowType(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftTextView(Lcom/alipay/mobile/commonui/widget/APTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-void
.end method

.method public setRightCheckBox(Lcom/alipay/mobile/commonui/widget/APCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    return-void
.end method

.method public setShowType(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->c:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_normal_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTextViewWithCheckBox;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
