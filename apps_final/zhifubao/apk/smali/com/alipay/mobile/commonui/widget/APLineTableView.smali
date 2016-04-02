.class public Lcom/alipay/mobile/commonui/widget/APLineTableView;
.super Lcom/alipay/mobile/commonui/widget/APAbsTableView;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APLineTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APLineTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEmojiSize(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEmojiSize(I)V

    return-void
.end method


# virtual methods
.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_line_table_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->onFinishInflate()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->type:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APLineTableView;->type:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APLineTableView;->getStyle()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APLineTableView;->setTypeAndStyle(II)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_line_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineTableView;->setBackgroundResource(I)V

    return-void
.end method
