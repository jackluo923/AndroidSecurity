.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YearPickerFragment.java"


# instance fields
.field day:I

.field month:I

.field ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 50
    iget v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->year:I

    iget v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->month:I

    iget v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->day:I

    .line 49
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 53
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 54
    .local v8, "datePickerDialogFields":[Ljava/lang/reflect/Field;
    array-length v3, v8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 97
    .end local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    :goto_1
    return-object v0

    .line 54
    .restart local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v7, v8, v2

    .line 56
    .local v7, "datePickerDialogField":Ljava/lang/reflect/Field;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "umar"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mDatePicker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 59
    check-cast v6, Landroid/widget/DatePicker;

    .line 61
    .local v6, "datePicker":Landroid/widget/DatePicker;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 63
    .local v10, "datePickerFields":[Ljava/lang/reflect/Field;
    array-length v4, v10

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v4, :cond_3

    .line 75
    .end local v6    # "datePicker":Landroid/widget/DatePicker;
    .end local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mDatePicker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 77
    check-cast v13, Landroid/widget/DatePicker;

    .line 79
    .local v13, "monthPicker":Landroid/widget/DatePicker;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 81
    .restart local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    array-length v4, v10

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v4, :cond_6

    .line 54
    .end local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    .end local v13    # "monthPicker":Landroid/widget/DatePicker;
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 63
    .restart local v6    # "datePicker":Landroid/widget/DatePicker;
    .restart local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    :cond_3
    aget-object v9, v10, v1

    .line 64
    .local v9, "datePickerField":Ljava/lang/reflect/Field;
    const-string v5, "mDayPicker"

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 65
    const-string v5, "mDaySpinner"

    .line 66
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 65
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 69
    .local v11, "dayPicker":Ljava/lang/Object;
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 70
    check-cast v11, Landroid/view/View;

    .end local v11    # "dayPicker":Ljava/lang/Object;
    const/16 v5, 0x8

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    .end local v6    # "datePicker":Landroid/widget/DatePicker;
    .end local v9    # "datePickerField":Ljava/lang/reflect/Field;
    .restart local v13    # "monthPicker":Landroid/widget/DatePicker;
    :cond_6
    aget-object v9, v10, v1

    .line 82
    .restart local v9    # "datePickerField":Ljava/lang/reflect/Field;
    const-string v5, "mMonthPicker"

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 83
    const-string v5, "mMonthSpinner"

    .line 84
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 83
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 84
    if-eqz v5, :cond_8

    .line 85
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 87
    .local v12, "monPicker":Ljava/lang/Object;
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 88
    check-cast v12, Landroid/view/View;

    .end local v12    # "monPicker":Ljava/lang/Object;
    const/16 v5, 0x8

    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 95
    .end local v7    # "datePickerDialogField":Ljava/lang/reflect/Field;
    .end local v8    # "datePickerDialogFields":[Ljava/lang/reflect/Field;
    .end local v9    # "datePickerField":Ljava/lang/reflect/Field;
    .end local v10    # "datePickerFields":[Ljava/lang/reflect/Field;
    .end local v13    # "monthPicker":Landroid/widget/DatePicker;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->year:I

    .line 41
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->month:I

    .line 42
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->day:I

    .line 43
    return-void
.end method

.method public setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0
    .param p1, "ondate"    # Landroid/app/DatePickerDialog$OnDateSetListener;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->ondateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 35
    return-void
.end method
