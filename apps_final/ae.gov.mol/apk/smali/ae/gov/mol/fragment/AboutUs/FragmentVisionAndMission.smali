.class public Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;
.super Landroid/support/v4/app/Fragment;
.source "FragmentVisionAndMission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;
    }
.end annotation


# instance fields
.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

.field mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewMission:Landroid/widget/TextView;

.field mTextViewValues:Landroid/widget/TextView;

.field mTextViewVision:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    invoke-direct {v0}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;-><init>()V

    .line 55
    .local v0, "f":Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 47
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 48
    new-instance v0, Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MOL_Vission_MissionVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 49
    new-instance v0, Lae/gov/mol/vo/MOLGoalVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MOLGoalVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 50
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0606fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewValues:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0606fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewMission:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0606f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewVision:Landroid/widget/TextView;

    .line 65
    return-object v0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lae/gov/mol/MolApplication;->isVission_MissionVoEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewMission:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewVision:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMol_Vission_MissionVo()Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewMission:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->getMission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewVision:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->getVission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    invoke-static {}, Lae/gov/mol/MolApplication;->isMolGoalVoEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewValues:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMolGoalVo()Lae/gov/mol/vo/MOLGoalVo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewValues:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOLGoalVo;->getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_1
    return-void
.end method
