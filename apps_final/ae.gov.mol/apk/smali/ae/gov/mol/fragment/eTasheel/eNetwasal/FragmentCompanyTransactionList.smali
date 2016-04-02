.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentCompanyTransactionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;
    }
.end annotation


# instance fields
.field CompanyName:Ljava/lang/String;

.field isDataRecieved:Z

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyTransactionList;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mHandler:Lae/gov/xmlhandler/CompanyTransactionListHandler;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strFormDate:Ljava/lang/String;

.field strInputValue:Ljava/lang/String;

.field strToDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->isDataRecieved:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strInputValue:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strFormDate:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strToDate:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->CompanyName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 70
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 71
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 72
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mBundle:Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strInputValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strFormDate:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strToDate:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->CompanyName:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompanyName"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->CompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 85
    const v0, 0x7f03003b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListView:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    .line 282
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    :cond_0
    return-void
.end method
