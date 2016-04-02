.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_National_Labour_CardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mLabourCardListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/NationalLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mNationalLabourCardListHandler:Lae/gov/xmlhandler/NationalLabourCardListHandler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTags:Lae/gov/mol/helper/Tags;

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

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->strNumber:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->strInputName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->isDataRecieved:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 72
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 73
    new-instance v0, Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NationalLabourCardListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mBundle:Landroid/os/Bundle;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->strNumber:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->strInputName:Ljava/lang/String;

    .line 77
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 83
    const v0, 0x7f0300a6

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mTextViewTitle:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mView:Landroid/view/View;

    const v1, 0x7f0605ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListView:Landroid/widget/ListView;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    :cond_0
    return-void
.end method
