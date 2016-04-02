.class public Lcom/alipay/mobile/commonui/widget/APTableView;
.super Lcom/alipay/mobile/commonui/widget/APAbsTableView;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTableView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->a:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTableView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEmojiSize(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->a:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTableView;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEmojiSize(I)V

    return-void
.end method
