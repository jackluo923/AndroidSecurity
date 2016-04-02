.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentCompanyCategoryInfolist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mBundle1:Landroid/os/Bundle;

.field mBundle2:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

.field mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

.field mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

.field mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringCompanyNumber:Ljava/lang/String;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mStringCompanyNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->strInputName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->isDataRecieved:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getView()Landroid/view/View;

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
    .line 77
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 79
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 80
    new-instance v0, Lae/gov/mol/vo/CompanyStatusInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyStatusInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    .line 81
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mBundle:Landroid/os/Bundle;

    .line 82
    const-string v0, "in Fr comp list"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mStringCompanyNumber:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->strInputName:Ljava/lang/String;

    .line 85
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

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

    .line 92
    const v0, 0x7f03003e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    const v1, 0x7f060159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListView:Landroid/widget/ListView;

    .line 97
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    .line 267
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_0
    return-void
.end method
