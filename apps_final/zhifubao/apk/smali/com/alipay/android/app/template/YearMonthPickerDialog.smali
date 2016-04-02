.class public Lcom/alipay/android/app/template/YearMonthPickerDialog;
.super Ljava/lang/Object;
.source "YearMonthPickerDialog.java"


# instance fields
.field public mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mNegativeLabel:Ljava/lang/String;

.field public mPositiveLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v3, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 29
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "template_express_year_month_picker"

    invoke-static {p2, v1}, Lcom/alipay/android/app/template/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 32
    const-string/jumbo v0, "datePicker1"

    invoke-static {p2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/YearMonthPicker;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->disableBeforeYear()V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->hideDayPick()V

    .line 35
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030074

    invoke-direct {v0, p2, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 43
    const-string/jumbo v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    .line 45
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public hideDayPick()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setCurrentDate()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->setCurrentDate()V

    .line 53
    return-void
.end method

.method public setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    return-void
.end method

.method public setStartPickDate(II)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/YearMonthPicker;->setYearMonth(II)V

    .line 49
    return-void
.end method

.method public show()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    return-object v0
.end method
