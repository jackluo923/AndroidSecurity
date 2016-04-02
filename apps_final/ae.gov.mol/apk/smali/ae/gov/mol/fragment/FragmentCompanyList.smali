.class public Lae/gov/mol/fragment/FragmentCompanyList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentCompanyList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;,
        Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;
    }
.end annotation


# instance fields
.field fragmentView:Landroid/view/View;

.field mAbscondingList:Ljava/lang/String;

.field private mArrayListSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackProcess:Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyAdapter:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

.field mEditTextSearch:Landroid/widget/EditText;

.field mExpiredCard:Ljava/lang/String;

.field mExpiredPermit:Ljava/lang/String;

.field mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

.field mGetEmployeeVo:Ljava/util/ArrayList;
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

.field mImageViewProfileImage:Landroid/widget/ImageView;

.field mLaboursWOContract:Ljava/lang/String;

.field mListViewConmpanyList:Landroid/widget/ListView;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field mPersonName:Ljava/lang/String;

.field mPersonPhoto:Ljava/lang/String;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringTotalEmployee:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewProfileName:Landroid/widget/TextView;

.field mTextViewTotalCompanies:Landroid/widget/TextView;

.field mTextViewTotalNegative:Landroid/widget/TextView;

.field mTextViewTotalPositive:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 98
    const-string v0, "1"

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mStringTotalEmployee:Ljava/lang/String;

    .line 99
    const-string v0, "2"

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mAbscondingList:Ljava/lang/String;

    .line 100
    const-string v0, "3"

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mExpiredCard:Ljava/lang/String;

    .line 101
    const-string v0, "4"

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mExpiredPermit:Ljava/lang/String;

    .line 102
    const-string v0, "5"

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mLaboursWOContract:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mPersonName:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mPersonPhoto:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/FragmentCompanyList;Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mBackProcess:Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/FragmentCompanyList;)Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mBackProcess:Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/FragmentCompanyList;)Z
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lae/gov/mol/fragment/FragmentCompanyList;->setCompanyList()Z

    move-result v0

    return v0
.end method

.method private reloadProfileInformation()V
    .locals 3

    .prologue
    .line 518
    :try_start_0
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mPersonPhoto:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 521
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mImageViewProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalCompanies:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalCompanies:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTotalCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalNegative:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalNegative:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getBlockedCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalPositive:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 537
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalPositive:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getGoodCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewProfileName:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mPersonName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 540
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewProfileName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getTasheelUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_4
    return-void

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0

    .line 524
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setCompanyList()Z
    .locals 4

    .prologue
    .line 472
    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 476
    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;

    .line 477
    new-instance v1, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;-><init>(Lae/gov/mol/fragment/FragmentCompanyList;)V

    iput-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    .line 478
    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mListViewConmpanyList:Landroid/widget/ListView;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 479
    const/4 v1, 0x1

    .line 481
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 474
    .restart local v0    # "i":I
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "umar"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/OwnerstatisticsVo;->getSALARYBLOCK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 487
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 494
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentCompanyList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 112
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 113
    new-instance v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerstatisticsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 115
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lae/gov/mol/helper/Tags;

    invoke-direct {v0}, Lae/gov/mol/helper/Tags;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTags:Lae/gov/mol/helper/Tags;

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f060180

    const/4 v6, 0x0

    .line 126
    const v2, 0x7f030037

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, "mTextView":Landroid/widget/TextView;
    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    const v3, 0x7f0600fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mEditTextSearch:Landroid/widget/EditText;

    .line 132
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    const v3, 0x7f0600fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mListViewConmpanyList:Landroid/widget/ListView;

    .line 133
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mEditTextSearch:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 134
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    const v3, 0x7f060757

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 136
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mImageViewProfileImage:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentCompanyList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030042

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "listHeader":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mImageViewProfileImage:Landroid/widget/ImageView;

    .line 142
    const v2, 0x7f060183

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f060186

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalCompanies:Landroid/widget/TextView;

    .line 144
    const v2, 0x7f060187

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalPositive:Landroid/widget/TextView;

    .line 145
    const v2, 0x7f060189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewTotalNegative:Landroid/widget/TextView;

    .line 146
    const v2, 0x7f060181

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewProfileName:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v3}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-direct {p0}, Lae/gov/mol/fragment/FragmentCompanyList;->reloadProfileInformation()V

    .line 156
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/FragmentCompanyList$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmentCompanyList$1;-><init>(Lae/gov/mol/fragment/FragmentCompanyList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mListViewConmpanyList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mListViewConmpanyList:Landroid/widget/ListView;

    new-instance v3, Lae/gov/mol/fragment/FragmentCompanyList$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmentCompanyList$2;-><init>(Lae/gov/mol/fragment/FragmentCompanyList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    sget-object v2, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Lae/gov/mol/helper/CustomFragment$getCompanyList;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v3}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v5, Lae/gov/mol/fragment/FragmentCompanyList$3;

    invoke-direct {v5, p0}, Lae/gov/mol/fragment/FragmentCompanyList$3;-><init>(Lae/gov/mol/fragment/FragmentCompanyList;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lae/gov/mol/helper/CustomFragment$getCompanyList;-><init>(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Lae/gov/mol/helper/CustomFragmentActivity;Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;)V

    new-array v3, v6, [Ljava/lang/Void;

    .line 196
    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment$getCompanyList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList;->fragmentView:Landroid/view/View;

    return-object v2

    .line 199
    :cond_0
    invoke-direct {p0}, Lae/gov/mol/fragment/FragmentCompanyList;->setCompanyList()Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 498
    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "searchString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 501
    .local v2, "textLength":I
    new-instance v3, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-direct {v3}, Lae/gov/mol/vo/OwnerstatisticsVo;-><init>()V

    iput-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;

    .line 503
    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 511
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    if-eqz v3, :cond_1

    .line 512
    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mCompanyAdapter:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    invoke-virtual {v3}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->notifyDataSetChanged()V

    .line 513
    :cond_1
    return-void

    .line 505
    .restart local v0    # "i":I
    :cond_2
    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 506
    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 507
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;

    sget-object v3, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
