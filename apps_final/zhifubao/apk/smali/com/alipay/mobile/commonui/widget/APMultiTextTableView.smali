.class public Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;
.super Lcom/alipay/mobile/commonui/widget/APTableView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field protected mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->tableView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_3:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->c:I

    const/16 v0, 0x18

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->d:I

    const/16 v0, 0x13

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->e:F

    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->f:F

    const/16 v0, 0x15

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->g:F

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText2(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText3(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getLeftText2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftTextView3()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getmLeftTextView2()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method protected initLeftTextView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->c:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->d:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->e:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->e:F

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->f:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->f:F

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->g:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->g:F

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->initLeftTextView()V

    return-void
.end method

.method protected setInnerLeftText(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setInnerLeftText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText2(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->setLeftText3(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setLeftText2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText3(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setLeftTextVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftTextVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView2:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APMultiTextTableView;->mLeftTextView3:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method
