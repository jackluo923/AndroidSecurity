.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentEnetwasalDateForm.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x64

.field static MONTH_YEAR_DIALOG:Z


# instance fields
.field date_picker:Landroid/widget/DatePicker;

.field mButtonSubmit:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEditTextField:Landroid/widget/EditText;

.field mEditTextFromDate:Landroid/widget/EditText;

.field mEditTextToDate:Landroid/widget/EditText;

.field mFragmentBundle:Landroid/os/Bundle;

.field mIntDay:I

.field mIntMonth:I

.field mIntYear:I

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field myCalendar:Ljava/util/Calendar;

.field ondate:Landroid/app/DatePickerDialog$OnDateSetListener;

.field ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

.field strCompanyName:Ljava/lang/String;

.field strEnterTag:Ljava/lang/String;

.field strFromDate:Ljava/lang/String;

.field strInputValue:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field strToDate:Ljava/lang/String;

.field strfullfromDate:Ljava/lang/String;

.field strfulltoDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strFromDate:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strToDate:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strfullfromDate:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strfulltoDate:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strCompanyName:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->myCalendar:Ljava/util/Calendar;

    .line 226
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->ondate:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 250
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$2;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->showDatePicker()V

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->showDatePickerTo()V

    return-void
.end method

.method private showDatePicker()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 178
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;-><init>()V

    .line 180
    .local v2, "date":Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    const v4, 0x7f09015f

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    sput-boolean v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    .line 189
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 190
    .local v1, "calender":Ljava/util/Calendar;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "year"

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v3, "month"

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v3, "day"

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->ondate:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 199
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Date Picker"

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    return-void

    .line 184
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "calender":Ljava/util/Calendar;
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    goto :goto_0
.end method

.method private showDatePickerTo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 203
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;-><init>()V

    .line 204
    .local v2, "date":Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    const v4, 0x7f09015f

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    sput-boolean v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    .line 213
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 214
    .local v1, "calender":Ljava/util/Calendar;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "year"

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v3, "month"

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v3, "day"

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 223
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Date Picker"

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/DatePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    return-void

    .line 208
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "calender":Ljava/util/Calendar;
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->MONTH_YEAR_DIALOG:Z

    goto :goto_0
.end method


# virtual methods
.method public getEnetwasalWebservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "strInputValue"    # Ljava/lang/String;
    .param p2, "strFromDate"    # Ljava/lang/String;
    .param p3, "strToDate"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x1001

    const/4 v5, 0x1

    .line 277
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    .line 278
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v3, 0x7f09005e

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v3, 0x7f09005f

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v3, 0x7f090060

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Company >>>>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strCompanyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Company <<<<<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v3, 0x7f090061

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strCompanyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    const v3, 0x7f090153

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;-><init>()V

    .line 289
    .local v0, "mFargment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->setArguments(Landroid/os/Bundle;)V

    .line 290
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2, v0, v5, v6}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 305
    .end local v0    # "mFargment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    const v3, 0x7f09015f

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;-><init>()V

    .line 296
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->setArguments(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2, v1, v5, v6}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 299
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;
    :cond_2
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    const v3, 0x7f090154

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;-><init>()V

    .line 302
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->setArguments(Landroid/os/Bundle;)V

    .line 303
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v2, v1, v5, v6}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f09005d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mFragmentBundle:Landroid/os/Bundle;

    .line 76
    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strCompanyName:Ljava/lang/String;

    .line 77
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    const v0, 0x7f030055

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f06026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mTextViewTitle:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f06026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f060272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f060274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextToDate:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f060275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mButtonSubmit:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mTextViewHeader:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mTextViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strInputValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->strEnterTag:Ljava/lang/String;

    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 103
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mIntYear:I

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->myCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mIntMonth:I

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->myCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mIntDay:I

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$3;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$3;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextToDate:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextToDate:Landroid/widget/EditText;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$4;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$4;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm$5;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextFromDate:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mEditTextToDate:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->mView:Landroid/view/View;

    return-object v0
.end method
