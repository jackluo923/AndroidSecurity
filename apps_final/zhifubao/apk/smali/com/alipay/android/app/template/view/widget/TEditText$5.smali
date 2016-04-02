.class Lcom/alipay/android/app/template/view/widget/TEditText$5;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;

.field private final synthetic b:Lcom/alipay/android/app/template/YearMonthPickerDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;Lcom/alipay/android/app/template/YearMonthPickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->getYear()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->b:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/view/widget/TEditText;->a(Lcom/alipay/android/app/template/view/widget/TEditText;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->b(Lcom/alipay/android/app/template/view/widget/TEditText;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->b(Lcom/alipay/android/app/template/view/widget/TEditText;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText$5;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/TEditText;->c(Lcom/alipay/android/app/template/view/widget/TEditText;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 410
    return-void
.end method
