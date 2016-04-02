.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentLabourLaw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;
    }
.end annotation


# instance fields
.field SelectedValue:I

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

.field private mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->SelectedValue:I

    .line 37
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method

.method public static newInstance()Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    invoke-direct {v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;-><init>()V

    .line 60
    .local v0, "f":Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 54
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 55
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 67
    const v2, 0x7f030095

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "mView":Landroid/view/View;
    const v2, 0x7f06053f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebView:Landroid/webkit/WebView;

    .line 71
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 72
    .local v0, "mSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 75
    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-object v1
.end method
