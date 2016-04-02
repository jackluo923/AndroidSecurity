.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Company_Information_list.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mBundle1:Landroid/os/Bundle;

.field mBundle2:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

.field mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

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

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;

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
    .line 47
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->strNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->strInputName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->isDataRecieved:Z

    .line 47
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 80
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 81
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 82
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->strNumber:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->strInputName:Ljava/lang/String;

    .line 85
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 93
    const v0, 0x7f030043

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mTextViewTitle:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mView:Landroid/view/View;

    const v1, 0x7f06018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListView:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    :cond_0
    return-void
.end method
