.class public final Lcom/alipay/android/app/widget/FormatBankcard;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/widget/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/l;-><init>(Lcom/alipay/android/app/widget/FormatBankcard;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/widget/FormatBankcard;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/widget/FormatBankcard;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/widget/EditText;I)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/widget/FormatBankcard;->b:Landroid/widget/EditText;

    iput p2, p0, Lcom/alipay/android/app/widget/FormatBankcard;->a:I

    iget-object v0, p0, Lcom/alipay/android/app/widget/FormatBankcard;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
