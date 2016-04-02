.class final Lcom/alipay/android/app/ui/quickpay/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:I

.field final synthetic f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

.field private g:[C

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->a:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->b:I

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/16 v4, 0x20

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    if-le v0, v2, :cond_5

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->g:[C

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->g:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :try_start_0
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    :cond_7
    return-void

    :cond_8
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    if-gez v2, :cond_6

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->d:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->a:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_0
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->e:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->b:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->h:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->b:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->b:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->f:Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatPhoneNO;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->c:Z

    goto :goto_0
.end method
