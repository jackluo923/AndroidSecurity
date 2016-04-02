.class public Lcom/alipay/mobile/commonui/widget/APEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getUbbStr()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    if-nez p3, :cond_4

    if-lez p4, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->a()I

    move-result v2

    sub-int v3, p4, p3

    invoke-static {v0, v1, v2, p2, v3}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;III)V

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->b:I

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APEditText;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
