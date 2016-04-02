.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentExpiredCardDateRangeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;
    }
.end annotation


# instance fields
.field CompanyName:Ljava/lang/String;

.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mExpiredCardDetailsHandler:Lae/gov/xmlhandler/ExpiredCardDetailsHandler;

.field mExpiredCard_DateRangeVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredCard_DateRangeVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

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
    .line 45
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->isDataRecieved:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strInputValue:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strFormDate:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strToDate:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->CompanyName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 74
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 75
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 76
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mBundle:Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strInputValue:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strFormDate:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strToDate:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->CompanyName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 88
    const v0, 0x7f03003b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListView:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 287
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    .line 288
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    :cond_0
    return-void
.end method
