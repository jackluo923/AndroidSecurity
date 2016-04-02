.class public Lae/gov/mol/fragment/FragmentEmployeeList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentEmployeeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;
    }
.end annotation


# instance fields
.field fragmentView:Landroid/view/View;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyAdapter:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

.field mEditTextSearch:Landroid/widget/EditText;

.field mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

.field mGetEmployeeVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
            ">;"
        }
    .end annotation
.end field

.field mGetEmployeeVosSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetEmployeeVo;",
            ">;"
        }
    .end annotation
.end field

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field private mImageViewRightPositive:Landroid/widget/ImageView;

.field private mImageViewWrongNegative:Landroid/widget/ImageView;

.field mListViewConmpanyList:Landroid/widget/ListView;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mTags:Lae/gov/mol/helper/Tags;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewTotalCompanies:Landroid/widget/TextView;

.field mTextViewTotalNegative:Landroid/widget/TextView;

.field mTextViewTotalPositive:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/FragmentEmployeeList;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/FragmentEmployeeList;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "mImageView"    # Landroid/widget/ImageView;
    .param p2, "mBase64"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 370
    :cond_0
    :try_start_0
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v1, p2}, Lae/gov/mol/helper/CommonMethods;->getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    goto :goto_0

    .line 374
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentEmployeeList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lae/gov/mol/MolFragmentActivity;

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 80
    new-instance v1, Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 81
    new-instance v1, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-direct {v1}, Lae/gov/mol/vo/OwnerstatisticsVo;-><init>()V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 82
    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 83
    new-instance v1, Lae/gov/mol/helper/Tags;

    invoke-direct {v1}, Lae/gov/mol/helper/Tags;-><init>()V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTags:Lae/gov/mol/helper/Tags;

    .line 85
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentEmployeeList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "mBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mCompanyList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    .line 88
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mEmployeeList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVosSource:Ljava/util/ArrayList;

    .line 89
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVosSource:Ljava/util/ArrayList;

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVos:Ljava/util/ArrayList;

    .line 91
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 96
    const v5, 0x7f030051

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    .line 98
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060758

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "mTextView":Landroid/widget/TextView;
    const v5, 0x7f09013e

    invoke-virtual {p0, v5}, Lae/gov/mol/fragment/FragmentEmployeeList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f06022d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mEditTextSearch:Landroid/widget/EditText;

    .line 102
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060239

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mListViewConmpanyList:Landroid/widget/ListView;

    .line 103
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVos:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 104
    new-instance v5, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetEmployeeVos:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;-><init>(Lae/gov/mol/fragment/FragmentEmployeeList;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    .line 105
    :cond_0
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mListViewConmpanyList:Landroid/widget/ListView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentEmployeeList$EmployeeListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mEditTextSearch:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mEditTextSearch:Landroid/widget/EditText;

    new-instance v6, Lae/gov/mol/fragment/FragmentEmployeeList$1;

    invoke-direct {v6, p0}, Lae/gov/mol/fragment/FragmentEmployeeList$1;-><init>(Lae/gov/mol/fragment/FragmentEmployeeList;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060757

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 133
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060231

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 134
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060233

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 135
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060236

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalCompanies:Landroid/widget/TextView;

    .line 137
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060237

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalPositive:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060238

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalNegative:Landroid/widget/TextView;

    .line 140
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060160

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewRightPositive:Landroid/widget/ImageView;

    .line 141
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    const v6, 0x7f060188

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewWrongNegative:Landroid/widget/ImageView;

    .line 143
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getCom_company_code()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalCompanies:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getTotalemployees()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getBadEmp()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getBadEmp()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 147
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getBadEmp()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "mBadEmp":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "badEmployees":I
    if-lez v0, :cond_1

    .line 152
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewWrongNegative:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalNegative:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalNegative:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getBadEmp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .end local v0    # "badEmployees":I
    .end local v2    # "mBadEmp":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getGoodEmp()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getGoodEmp()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getGoodEmp()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "mGoodEmp":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, "goodEmployees":I
    if-lez v1, :cond_2

    .line 167
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewRightPositive:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalPositive:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewTotalPositive:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getGoodEmp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    .end local v1    # "goodEmployees":I
    .end local v3    # "mGoodEmp":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v6, Lae/gov/mol/fragment/FragmentEmployeeList$2;

    invoke-direct {v6, p0}, Lae/gov/mol/fragment/FragmentEmployeeList$2;-><init>(Lae/gov/mol/fragment/FragmentEmployeeList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 196
    :goto_2
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->fragmentView:Landroid/view/View;

    return-object v5

    .line 186
    :pswitch_0
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getCom_name_eng()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 189
    :pswitch_1
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentEmployeeList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->getCom_name_arb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    .restart local v3    # "mGoodEmp":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 156
    .end local v3    # "mGoodEmp":Ljava/lang/String;
    .restart local v2    # "mBadEmp":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
