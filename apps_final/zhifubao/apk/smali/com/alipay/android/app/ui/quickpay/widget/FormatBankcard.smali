.class public final Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/g;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
