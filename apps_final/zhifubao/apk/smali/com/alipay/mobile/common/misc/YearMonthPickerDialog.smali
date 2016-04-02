.class public Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;
.super Ljava/lang/Object;


# instance fields
.field public mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mNegativeLabel:Ljava/lang/String;

.field public mPositiveLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ext_express_year_month_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->datePicker1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->disableBeforeYear()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->hideDayPick()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/mobile/ui/R$layout;->ext_express_year_month_picker:I

    if-eqz p3, :cond_0

    sget v0, Lcom/alipay/mobile/ui/R$layout;->ext_express_year_month_picker_year_first:I

    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->datePicker1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->disableBeforeYear()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->hideDayPick()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hideDayPick()V
    .locals 0

    return-void
.end method

.method public setCurrentDate()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setCurrentDate()V

    return-void
.end method

.method public setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mNegativeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mPositiveLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setStartPickDate(II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setYearMonth(II)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPickerDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
