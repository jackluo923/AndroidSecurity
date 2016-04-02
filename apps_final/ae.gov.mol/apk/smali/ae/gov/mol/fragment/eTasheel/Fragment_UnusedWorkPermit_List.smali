.class public Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_UnusedWorkPermit_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetUnusedWP;",
            ">;"
        }
    .end annotation
.end field

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mExpiryStatus:I

.field mFragmentBundle:Landroid/os/Bundle;

.field mGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

.field mGetUnusedWPListHandler:Lae/gov/xmlhandler/GetUnusedWPListHandler;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStrCompanyNo:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewTitle:Landroid/widget/TextView;

.field mUserId:Ljava/lang/String;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->strInputName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->isDataRecieved:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mUserId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 85
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 86
    new-instance v0, Lae/gov/mol/vo/GetUnusedWP;

    invoke-direct {v0}, Lae/gov/mol/vo/GetUnusedWP;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    .line 87
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mFragmentBundle:Landroid/os/Bundle;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mExpiryStatus:I

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->strInputName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mUserId:Ljava/lang/String;

    .line 93
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 99
    const v0, 0x7f0300ce

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    const v1, 0x7f0606e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListView:Landroid/widget/ListView;

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 321
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    .line 324
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    :cond_0
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetUnusedWP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "mGetUnusedWPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetUnusedWP;>;"
    if-eqz p1, :cond_0

    .line 307
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$2;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    :cond_0
    return-void
.end method
