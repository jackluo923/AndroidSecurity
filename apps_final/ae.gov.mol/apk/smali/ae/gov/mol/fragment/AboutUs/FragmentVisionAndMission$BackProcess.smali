.class public Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentVisionAndMission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v0, v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getMolVisionMission(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MOL_Vission_MissionVo;

    iput-object v0, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 84
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v0, v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getMolGoals(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MOLGoalVo;

    iput-object v0, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->setmMolGoalVo(Lae/gov/mol/vo/MOLGoalVo;)V

    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Values"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MOLGoalVo;->getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->setmMol_Vission_MissionVo(Lae/gov/mol/vo/MOL_Vission_MissionVo;)V

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 104
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewMission:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->getMission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewVision:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;->getErrResult()Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$GoalVoDetail;->getVission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/MOLGoalVo;->getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mTextViewValues:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MOLGoalVo;->getErrResult()Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/MOLGoalVo$GoalVoDetail;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 78
    return-void
.end method
