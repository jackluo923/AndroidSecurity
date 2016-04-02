.class public Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

.field private g:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->g:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->f:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->g:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    const-string/jumbo v1, "\u6709\u6548\u671f"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/util/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/util/a;-><init>(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)V

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/util/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/util/b;-><init>(Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;)V

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setCurrentDate()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->setYearMonth(II)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/CardValidateInputUtil;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
