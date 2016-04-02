.class public Lcom/alipay/mobile/commonui/widget/APTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getOnTextChangeListener()Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    return-object v0
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTextChangeListener(Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->skipUnKnowEmoji(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method
