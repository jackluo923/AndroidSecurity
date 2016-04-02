.class public Lcom/alipay/mobile/commonui/widget/APRadioTableView;
.super Lcom/alipay/mobile/commonui/widget/APAbsTableView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

.field private b:Z

.field private final c:I

.field private d:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->tableView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_toggleButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APToggleButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->b:Z

    const/16 v0, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->c:I

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->changeBackgroud:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSwitchListener()Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->d:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    return-object v0
.end method

.method public getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    return-object v0
.end method

.method public getmToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->d:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->d:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;->onSwitchListener(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setArrowImageVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->d:Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;

    return-void
.end method

.method public setToggleButtonBackGroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setBackgroundResource(I)V

    return-void
.end method

.method public setToggleButtonGreen()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_switch_green_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setBackgroundResource(I)V

    return-void
.end method

.method public setmToggleButton(Lcom/alipay/mobile/commonui/widget/APToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    return-void
.end method

.method public showToggleButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->a:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
