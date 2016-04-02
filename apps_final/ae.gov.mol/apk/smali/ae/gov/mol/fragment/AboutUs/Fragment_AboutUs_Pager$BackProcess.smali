.class public Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_AboutUs_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;
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
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 321
    invoke-static {}, Lae/gov/mol/MolApplication;->isMolGoalVoEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-virtual {v1, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMolGoals(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/MOLGoalVo;

    iput-object v1, v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 323
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->setmMolGoalVo(Lae/gov/mol/vo/MOLGoalVo;)V

    .line 325
    :cond_0
    invoke-static {}, Lae/gov/mol/MolApplication;->isMinisterMessageVoEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    invoke-virtual {v1, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMinistersMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/MinisterMessageVo;

    iput-object v1, v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    .line 327
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 328
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->setMinisterMessageVo(Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;)V

    .line 335
    :cond_1
    :goto_0
    invoke-static {}, Lae/gov/mol/MolApplication;->isVission_MissionVoEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-virtual {v1, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMolVisionMission(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/MOL_Vission_MissionVo;

    iput-object v1, v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 337
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->setmMol_Vission_MissionVo(Lae/gov/mol/vo/MOL_Vission_MissionVo;)V

    .line 340
    :cond_2
    invoke-static {}, Lae/gov/mol/MolApplication;->isNewsVoEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v1, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getNewsArrayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/NewsVo;

    iput-object v1, v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 342
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->setmNewsVo(Lae/gov/mol/vo/NewsVo;)V

    .line 344
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 330
    :cond_4
    new-instance v0, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-direct {v0}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;-><init>()V

    .line 331
    .local v0, "ministersMessageData":Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;
    invoke-static {v0}, Lae/gov/mol/MolApplication;->setMinisterMessageVo(Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 350
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 355
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->finish()V

    .line 363
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 364
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->updateView()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 315
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 316
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 317
    return-void
.end method
