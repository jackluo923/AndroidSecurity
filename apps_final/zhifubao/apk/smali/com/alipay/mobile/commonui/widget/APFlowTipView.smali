.class public Lcom/alipay/mobile/commonui/widget/APFlowTipView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# static fields
.field public static final TYPE_EMPTY:I = 0x11

.field public static final TYPE_NETWORK_ERROR:I = 0x10

.field public static final TYPE_WARNING:I = 0x12


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_flow_tip_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->FlowTipView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getIcon()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->action:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->tips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    return-void
.end method

.method public resetFlowTipType(I)V
    .locals 2

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->d:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->flow_network_signals:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->flow_empty:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->flow_warning:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method public setNoAction()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method
