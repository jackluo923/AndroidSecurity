.class public Lae/gov/mol/fragment/LabourServices/FragmentMySalary;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMySalary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;,
        Lae/gov/mol/fragment/LabourServices/FragmentMySalary$NationalityProcess;
    }
.end annotation


# static fields
.field static final DATE_DIALOG_ID:I = 0x64

.field static MONTH_YEAR_DIALOG:Z


# instance fields
.field SelectedValue:I

.field isDataRecieved:Z

.field mArrayCheckBocListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryCheckBoxVo;",
            ">;"
        }
    .end annotation
.end field

.field mArrayListRaButtonVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryRadioButtonVo;",
            ">;"
        }
    .end annotation
.end field

.field mButtonGo:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

.field mEditTextNationalty:Landroid/widget/EditText;

.field mEditTextPassportNumber:Landroid/widget/EditText;

.field mEditTextYearOfBirth:Landroid/widget/EditText;

.field mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mGetNationalitiesHandler:Lae/gov/xmlhandler/GetNationalitiesHandler;

.field mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

.field mIntent:Landroid/content/Intent;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field

.field mMySalaryCheckBoxVo:Lae/gov/mol/vo/MySalaryCheckBoxVo;

.field private mMySalaryCheckBoxVoHandler:Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

.field private mMySalaryDetailsHandler:Lae/gov/xmlhandler/MySalaryDetailsHandler;

.field mMySalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

.field mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringNationality:Ljava/lang/String;

.field mStringPassportNumber:Ljava/lang/String;

.field mStringYearOfBirth:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private mySalaryRadioButtonVoHandler:Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

.field ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

.field strEnterTag:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field strTitleTag:Ljava/lang/String;

.field strToDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->MONTH_YEAR_DIALOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    iput-boolean v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->isDataRecieved:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringPassportNumber:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringNationality:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringYearOfBirth:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strTitle:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strToDate:Ljava/lang/String;

    .line 102
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->SelectedValue:I

    .line 367
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$1;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 56
    return-void
.end method

.method private ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    const v2, 0x7f09025e

    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$5;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$5;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 221
    const v2, 0x7f09025f

    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$6;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$6;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 231
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryDetailsHandler;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryDetailsHandler:Lae/gov/xmlhandler/MySalaryDetailsHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryDetailsHandler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryDetailsHandler:Lae/gov/xmlhandler/MySalaryDetailsHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mySalaryRadioButtonVoHandler:Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mySalaryRadioButtonVoHandler:Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryCheckBoxVoHandler:Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

    return-void
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryCheckBoxVoHandler:Lae/gov/xmlhandler/MySalaryCheckBoxVoHandler;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->showDatePickerTo()V

    return-void
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->submit()V

    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/LabourServices/FragmentMySalary;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    invoke-direct {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;-><init>()V

    .line 123
    .local v0, "f":Lae/gov/mol/fragment/LabourServices/FragmentMySalary;
    return-object v0
.end method

.method private showDatePickerTo()V
    .locals 5

    .prologue
    .line 349
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;-><init>()V

    .line 353
    .local v2, "date":Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 354
    .local v1, "calender":Ljava/util/Calendar;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "year"

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v3, "month"

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string v3, "day"

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 362
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 363
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Date Picker"

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private submit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090138

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringPassportNumber:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/GetnationalitiesVo;->getNat_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringNationality:Ljava/lang/String;

    .line 177
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextYearOfBirth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringYearOfBirth:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    :goto_1
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringNationality:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringPassportNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringNationality:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mStringYearOfBirth:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 187
    :cond_2
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextYearOfBirth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 189
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 193
    :cond_3
    const v0, 0x7f0901e3

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 199
    :cond_4
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 201
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public DialogCountry()V
    .locals 6

    .prologue
    .line 433
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 434
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 438
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->SelectedValue:I

    new-instance v5, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;

    invoke-direct {v5, p0, v3}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$7;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 453
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 454
    return-void

    .line 435
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/GetnationalitiesVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/GetnationalitiesVo;->getNat_name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hideKeybord()V
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 459
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 460
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 107
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 108
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 109
    new-instance v0, Lae/gov/mol/vo/MySalaryVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    .line 110
    new-instance v0, Lae/gov/mol/vo/MySalaryRadioButtonVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryRadioButtonVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    .line 111
    new-instance v0, Lae/gov/mol/vo/MySalaryCheckBoxVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryCheckBoxVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mMySalaryCheckBoxVo:Lae/gov/mol/vo/MySalaryCheckBoxVo;

    .line 112
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 113
    const v0, 0x7f0901de

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->strTitleTag:Ljava/lang/String;

    .line 114
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mTags:Lae/gov/mol/helper/Tags;

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$NationalityProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$NationalityProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$NationalityProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 128
    const v1, 0x7f03009e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060570

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextPassportNumber:Landroid/widget/EditText;

    .line 130
    const v1, 0x7f060571

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    .line 131
    const v1, 0x7f060572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextYearOfBirth:Landroid/widget/EditText;

    .line 133
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 134
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 136
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextYearOfBirth:Landroid/widget/EditText;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$2;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mEditTextNationalty:Landroid/widget/EditText;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$3;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$3;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f060573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mButtonGo:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->mButtonGo:Landroid/widget/Button;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 469
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->hideKeybord()V

    .line 470
    return-void
.end method
