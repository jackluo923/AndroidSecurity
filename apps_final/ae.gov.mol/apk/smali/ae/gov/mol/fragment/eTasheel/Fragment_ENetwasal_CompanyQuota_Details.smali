.class public Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_ENetwasal_CompanyQuota_Details.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

.field private mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->strNumber:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->strInputName:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->isDataRecieved:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;)Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 72
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 73
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mBundle:Landroid/os/Bundle;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->strNumber:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->strInputName:Ljava/lang/String;

    .line 77
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 84
    const v0, 0x7f030043

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mTextViewTitle:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f06018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListView:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    :cond_0
    return-void
.end method
