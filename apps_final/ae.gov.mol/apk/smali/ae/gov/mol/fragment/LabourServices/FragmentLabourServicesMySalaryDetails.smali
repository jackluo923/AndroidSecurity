.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentLabourServicesMySalaryDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;
    }
.end annotation


# instance fields
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

.field mArrayListRaButtonVos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/MySalaryRadioButtonVo;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mButtonSave:Landroid/widget/Button;

.field mButtonSubmit:Landroid/widget/Button;

.field mCheckBoxDidIlligalDeduction:Landroid/widget/CheckBox;

.field mCheckBoxDidNotReceived:Landroid/widget/CheckBox;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

.field private mEditTextMobileNumber:Landroid/widget/EditText;

.field mImageViewBanner:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mIntent:Landroid/content/Intent;

.field mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mSpinner:Landroid/widget/Spinner;

.field mStringBirthDate:Ljava/lang/String;

.field mStringCardNumber:Ljava/lang/String;

.field mStringCheckBoxComplaint:Ljava/lang/String;

.field mStringCompanyNumber:Ljava/lang/String;

.field mStringDidNotReceived:Ljava/lang/String;

.field mStringFirstCheck:Ljava/lang/String;

.field mStringIlligalDeduction:Ljava/lang/String;

.field mStringMobileNumber:Ljava/lang/String;

.field mStringName:Ljava/lang/String;

.field mStringNationality:Ljava/lang/String;

.field mStringPassportExpiredNumber:Ljava/lang/String;

.field mStringPassportIssueNumber:Ljava/lang/String;

.field mStringPassportNumber:Ljava/lang/String;

.field mStringPersonNumber:Ljava/lang/String;

.field mStringRadioButtonComplaint:Ljava/lang/String;

.field mStringReceivedDays:Ljava/lang/String;

.field mStringSecondCheck:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewBirthDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewName:Landroid/widget/TextView;

.field mTextViewNationalty:Landroid/widget/TextView;

.field mTextViewPassportExpiredDate:Landroid/widget/TextView;

.field mTextViewPassportIssueDate:Landroid/widget/TextView;

.field mTextViewPassportNumber:Landroid/widget/TextView;

.field mTextViewPersonNumber:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strSaveSalaryDetailsStatus:Ljava/lang/String;

.field strTitleTag:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strTitleTag:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringName:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringPersonNumber:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringBirthDate:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringNationality:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringPassportNumber:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringPassportIssueNumber:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringPassportExpiredNumber:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCardNumber:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCompanyNumber:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringReceivedDays:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringDidNotReceived:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringIlligalDeduction:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringMobileNumber:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringRadioButtonComplaint:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCheckBoxComplaint:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringFirstCheck:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringSecondCheck:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mEditTextMobileNumber:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 121
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mBundle:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mMySalaryVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MySalaryVo;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mMySalaryRadioButtonVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayListRaButtonVos:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mMySalaryCheckBoxVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 127
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 128
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 129
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0901de

    const/4 v6, 0x1

    .line 136
    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, "mView":Landroid/view/View;
    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 139
    invoke-virtual {p0, v5}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strTitleTag:Ljava/lang/String;

    .line 140
    const v3, 0x7f06032c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mImageViewBanner:Landroid/widget/ImageView;

    .line 141
    const v3, 0x7f060757

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 142
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$1;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$1;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v3, 0x7f0601c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 153
    const v3, 0x7f060577

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewName:Landroid/widget/TextView;

    .line 154
    const v3, 0x7f060579

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPersonNumber:Landroid/widget/TextView;

    .line 155
    const v3, 0x7f06057b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewBirthDate:Landroid/widget/TextView;

    .line 156
    const v3, 0x7f06057d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewNationalty:Landroid/widget/TextView;

    .line 157
    const v3, 0x7f06057f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportNumber:Landroid/widget/TextView;

    .line 158
    const v3, 0x7f060581

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportIssueDate:Landroid/widget/TextView;

    .line 159
    const v3, 0x7f060583

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportExpiredDate:Landroid/widget/TextView;

    .line 160
    const v3, 0x7f060585

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 161
    const v3, 0x7f06058b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mEditTextMobileNumber:Landroid/widget/EditText;

    .line 162
    const v3, 0x7f060587

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 163
    const v3, 0x7f06058c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidNotReceived:Landroid/widget/CheckBox;

    .line 164
    const v3, 0x7f06058d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidIlligalDeduction:Landroid/widget/CheckBox;

    .line 165
    const v3, 0x7f06058a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mSpinner:Landroid/widget/Spinner;

    .line 166
    const v3, 0x7f06058e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mButtonSave:Landroid/widget/Button;

    .line 167
    const v3, 0x7f06058f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mButtonSubmit:Landroid/widget/Button;

    .line 169
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const v4, 0x7f0300e6

    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayListRaButtonVos:Ljava/util/List;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 171
    .local v0, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lae/gov/mol/vo/MySalaryRadioButtonVo;>;"
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mSpinner:Landroid/widget/Spinner;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getPersonNameEnglish()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPersonNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getPersonCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewBirthDate:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getBirthDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewNationalty:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getNationalityEnglish()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getPassportNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportIssueDate:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getPassportIssue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewPassportExpiredDate:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getPassportExpiryDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/MySalaryVo;->getCompanyNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/MySalaryVo;->getCompanyNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCompanyNumber:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mMySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/MySalaryVo;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCardNumber:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mButtonSave:Landroid/widget/Button;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mButtonSubmit:Landroid/widget/Button;

    new-instance v4, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$4;

    invoke-direct {v4, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$4;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 248
    return-object v2

    .line 239
    :cond_1
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/MySalaryCheckBoxVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/MySalaryCheckBoxVo;->getDetail_id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidNotReceived:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 243
    :cond_2
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayCheckBocListVos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/MySalaryCheckBoxVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/MySalaryCheckBoxVo;->getDetail_id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidIlligalDeduction:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 238
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
