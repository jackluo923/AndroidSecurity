.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_PersonCompany_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPersonCompanyListHandler:Lae/gov/xmlhandler/PersonCompanyListHandler;

.field mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextView:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->strNumber:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->strInputName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->isDataRecieved:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;Lae/gov/xmlhandler/PersonCompanyListHandler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mPersonCompanyListHandler:Lae/gov/xmlhandler/PersonCompanyListHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)Lae/gov/xmlhandler/PersonCompanyListHandler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mPersonCompanyListHandler:Lae/gov/xmlhandler/PersonCompanyListHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 71
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 72
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PersonCompanyListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 73
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mBundle:Landroid/os/Bundle;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->strNumber:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->strInputName:Ljava/lang/String;

    .line 76
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 83
    const v0, 0x7f0300b8

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mTextView:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mView:Landroid/view/View;

    const v1, 0x7f06062c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListView:Landroid/widget/ListView;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 266
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    :cond_0
    return-void
.end method
