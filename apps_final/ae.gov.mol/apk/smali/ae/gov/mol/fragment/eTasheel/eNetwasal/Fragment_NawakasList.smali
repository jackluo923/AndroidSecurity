.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_NawakasList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;
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
            "Lae/gov/mol/vo/NawakasDataVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

.field private mNawakasHandler:Lae/gov/xmlhandler/NawakasHandler;

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
    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strNumber:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strInputName:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->isDataRecieved:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Lae/gov/xmlhandler/NawakasHandler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mNawakasHandler:Lae/gov/xmlhandler/NawakasHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/xmlhandler/NawakasHandler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mNawakasHandler:Lae/gov/xmlhandler/NawakasHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 70
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 71
    new-instance v0, Lae/gov/mol/vo/NawakasDataVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NawakasDataVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    .line 72
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mBundle:Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strNumber:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strInputName:Ljava/lang/String;

    .line 75
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 82
    const v0, 0x7f0300a9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    const v1, 0x7f0605c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListView:Landroid/widget/ListView;

    .line 86
    const-string v0, "Nawakas List"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    :cond_0
    return-void
.end method
