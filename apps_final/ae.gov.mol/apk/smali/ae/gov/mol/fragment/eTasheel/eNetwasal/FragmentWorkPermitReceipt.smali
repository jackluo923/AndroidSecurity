.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentWorkPermitReceipt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mDetailsHandler:Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringCompanyName:Ljava/lang/String;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->strNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->strInputName:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->isDataRecieved:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mStringCompanyName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getView()Landroid/view/View;

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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 72
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 73
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mBundle:Landroid/os/Bundle;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->strNumber:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->strInputName:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mStringCompanyName:Ljava/lang/String;

    .line 77
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

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

    .line 82
    const v0, 0x7f030076

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mTextViewTitle:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mView:Landroid/view/View;

    const v1, 0x7f060341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListView:Landroid/widget/ListView;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 273
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    :cond_0
    return-void
.end method
