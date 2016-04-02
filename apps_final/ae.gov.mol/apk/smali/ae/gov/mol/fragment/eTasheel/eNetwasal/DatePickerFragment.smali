.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerFragment.java"


# instance fields
.field day:I

.field month:I

.field ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    return-void
.end method

.method private customDatePicker()Landroid/app/DatePickerDialog;
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 63
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->year:I

    iget v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->month:I

    iget v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->day:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 66
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 67
    .local v8, "datePickerDialogFields":[Ljava/lang/reflect/Field;
    array-length v3, v8

    move v2, v12

    :goto_0
    if-lt v2, v3, :cond_0

    .line 85
    .end local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    :goto_1
    return-object v0

    .line 67
    .restart local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v7, v8, v2

    .line 68
    .local v7, "datePickerDialogField":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mDatePicker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/DatePicker;

    .line 71
    .local v6, "datePicker":Landroid/widget/DatePicker;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 72
    .local v10, "datePickerFields":[Ljava/lang/reflect/Field;
    array-length v4, v10

    move v1, v12

    :goto_2
    if-lt v1, v4, :cond_2

    .line 67
    .end local v6    # "datePicker":Landroid/widget/DatePicker;
    .end local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 72
    .restart local v6    # "datePicker":Landroid/widget/DatePicker;
    .restart local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    :cond_2
    aget-object v9, v10, v1

    .line 73
    .local v9, "datePickerField":Ljava/lang/reflect/Field;
    const-string v5, "mDayPicker"

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "mDaySpinner"

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 76
    .local v11, "dayPicker":Ljava/lang/Object;
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 77
    check-cast v11, Landroid/view/View;

    .end local v11    # "dayPicker":Ljava/lang/Object;
    const/16 v5, 0x8

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    .end local v6    # "datePicker":Landroid/widget/DatePicker;
    .end local v7    # "datePickerDialogField":Ljava/lang/reflect/Field;
    .end local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    .end local v9    # "datePickerField":Ljava/lang/reflect/Field;
    .end local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->customDatePicker()Landroid/app/DatePickerDialog;

    move-result-object v6

    .line 51
    :goto_0
    return-object v6

    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->year:I

    iget v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->month:I

    iget v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->day:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v6, v0

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->year:I

    .line 40
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->month:I

    .line 41
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->day:I

    .line 42
    return-void
.end method

.method public setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "ondate"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    .prologue
    .line 33
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 34
    return-void
.end method
