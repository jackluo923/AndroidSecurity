.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentCompanyCategoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;
    }
.end annotation


# instance fields
.field private CompanyCategoryExpandableListAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

.field private mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

.field private mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

.field private mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mExpandableListViewNationality:Landroid/widget/ExpandableListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewCompayCategory:Landroid/widget/TextView;

.field mTextViewCompayCode:Landroid/widget/TextView;

.field mTextViewCompayName:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewTotalOfEmployee:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strCompanyNumber:Ljava/lang/String;

.field strInputName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->CompanyCategoryExpandableListAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->strCompanyNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->strInputName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/xmlhandler/CompanyCategoryInfoHandler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyCategoryInfoHandler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    return-object v0
.end method

.method static synthetic access$10(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->CompanyCategoryExpandableListAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

    return-void
.end method

.method static synthetic access$11(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->CompanyCategoryExpandableListAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/xmlhandler/CompanyStatusInfoHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyStatusInfoHandler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/vo/CompanyStatusInfoVo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    return-void
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    return-object v0
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 75
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 76
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mBundle:Landroid/os/Bundle;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->strCompanyNumber:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->strInputName:Ljava/lang/String;

    .line 79
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    const v0, 0x7f030053

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f060245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayName:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f060247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayCategory:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f06024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayCode:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f06024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTotalOfEmployee:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    const v1, 0x7f06024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mExpandableListViewNationality:Landroid/widget/ExpandableListView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mExpandableListViewNationality:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;

    invoke-direct {v0, p0, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    return-object v0
.end method
