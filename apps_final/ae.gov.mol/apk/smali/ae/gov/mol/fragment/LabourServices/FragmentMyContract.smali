.class public Lae/gov/mol/fragment/LabourServices/FragmentMyContract;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMyContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;,
        Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;
    }
.end annotation


# instance fields
.field SelectedValue:I

.field mButtonGo:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

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

.field mMyContactVo:Lae/gov/mol/vo/MyContactVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringNationality:Ljava/lang/String;

.field mStringPassportNumber:Ljava/lang/String;

.field mStringYearOfBirth:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private myContractDetailsHandler:Lae/gov/xmlhandler/MyContractDetailsHandler;

.field ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

.field strEnterTag:Ljava/lang/String;

.field strTitle:Ljava/lang/String;

.field strTitleTag:Ljava/lang/String;

.field strToDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringPassportNumber:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringNationality:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringYearOfBirth:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strTitle:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strToDate:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->SelectedValue:I

    .line 319
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$1;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 51
    return-void
.end method

.method private ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    const v2, 0x7f09025e

    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$5;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$5;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 215
    const v2, 0x7f09025f

    new-instance v3, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$6;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$6;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;Lae/gov/xmlhandler/MyContractDetailsHandler;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->myContractDetailsHandler:Lae/gov/xmlhandler/MyContractDetailsHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)Lae/gov/xmlhandler/MyContractDetailsHandler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->myContractDetailsHandler:Lae/gov/xmlhandler/MyContractDetailsHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->showDatePickerTo()V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->submit()V

    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/LabourServices/FragmentMyContract;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-direct {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;-><init>()V

    .line 111
    .local v0, "f":Lae/gov/mol/fragment/LabourServices/FragmentMyContract;
    return-object v0
.end method

.method private showDatePickerTo()V
    .locals 5

    .prologue
    .line 302
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;-><init>()V

    .line 306
    .local v2, "date":Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 307
    .local v1, "calender":Ljava/util/Calendar;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "year"

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v3, "month"

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v3, "day"

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {v2, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 315
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->ondateTo:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->setCallBack(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 316
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Date Picker"

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/YearPickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private submit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090138

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringPassportNumber:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetnationalitiesVo:Lae/gov/mol/vo/GetnationalitiesVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/GetnationalitiesVo;->getNat_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringNationality:Ljava/lang/String;

    .line 171
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextYearOfBirth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringYearOfBirth:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_1
    return-void

    .line 168
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringNationality:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringPassportNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringNationality:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringYearOfBirth:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 181
    :cond_2
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextYearOfBirth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 187
    :cond_3
    const v0, 0x7f0901e3

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 189
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 193
    :cond_4
    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strEnterTag:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public DialogCountry()V
    .locals 6

    .prologue
    .line 387
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 388
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 392
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->SelectedValue:I

    new-instance v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;

    invoke-direct {v5, p0, v3}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$7;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 408
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 409
    return-void

    .line 389
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/GetnationalitiesVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/GetnationalitiesVo;->getNat_name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hideKeybord()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 416
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextPassportNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 417
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 98
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 99
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 100
    new-instance v0, Lae/gov/mol/vo/MyContactVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MyContactVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    .line 101
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 102
    const v0, 0x7f0901df

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->strTitleTag:Ljava/lang/String;

    .line 103
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mTags:Lae/gov/mol/helper/Tags;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
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

    .line 116
    const v1, 0x7f03009c

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f06054b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextPassportNumber:Landroid/widget/EditText;

    .line 119
    const v1, 0x7f06054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    .line 120
    const v1, 0x7f06054d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextYearOfBirth:Landroid/widget/EditText;

    .line 121
    const v1, 0x7f06054e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mButtonGo:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 124
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 126
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextNationalty:Landroid/widget/EditText;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mEditTextYearOfBirth:Landroid/widget/EditText;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$3;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$3;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mButtonGo:Landroid/widget/Button;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 423
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->hideKeybord()V

    .line 424
    return-void
.end method
