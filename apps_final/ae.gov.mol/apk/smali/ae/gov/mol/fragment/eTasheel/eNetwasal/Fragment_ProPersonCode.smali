.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_ProPersonCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;
    }
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field private mPro_DetailsHandler:Lae/gov/xmlhandler/PRO_DetailsHandler;

.field mPro_DetailsVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PRO_DetailsVo;",
            ">;"
        }
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringRulesandProcidureDetailTitle:Ljava/lang/String;

.field mStringRulesandProcidureId:Ljava/lang/String;

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
    .line 46
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mStringRulesandProcidureId:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->strNumber:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->strInputName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;Lae/gov/xmlhandler/PRO_DetailsHandler;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsHandler:Lae/gov/xmlhandler/PRO_DetailsHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)Lae/gov/xmlhandler/PRO_DetailsHandler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsHandler:Lae/gov/xmlhandler/PRO_DetailsHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 75
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mTags:Lae/gov/mol/helper/Tags;

    .line 76
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 77
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mBundle:Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->strNumber:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->strInputName:Ljava/lang/String;

    .line 80
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 85
    const v1, 0x7f0300bd

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060667

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListView:Landroid/widget/ListView;

    .line 89
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mTextViewTitle:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mTextViewTitle:Landroid/widget/TextView;

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListView:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$BackProcess;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :cond_0
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 268
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    :cond_0
    return-void
.end method
