.class public Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/AlertDialog$Builder;

.field public b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_express_year_month_picker"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "datePicker1"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->b:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->disableBeforeYear()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->c:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPickerDialog;->d:Ljava/lang/String;

    return-void
.end method
