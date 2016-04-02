.class public Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginBackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field isRunning:Z

.field mPersonPhoto:Ljava/lang/String;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 1

    .prologue
    .line 1184
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1185
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mResultResponse:Ljava/lang/String;

    .line 1188
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mPersonPhoto:Ljava/lang/String;

    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->isRunning:Z

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1202
    const-string v0, ""

    .line 1203
    .local v0, "mStrUserName":Ljava/lang/String;
    const-string v1, ""

    .line 1204
    .local v1, "mStrUserPassword":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1205
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 1206
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 1207
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2, v0, v1, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/UserVo;

    iput-object v2, v3, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    .line 1209
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1212
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v3, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v3}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v3, v2, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 1213
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v6, v6, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v2, v4, v5, v6}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ProfileVo;

    iput-object v2, v3, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 1215
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getPersonPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mPersonPhoto:Ljava/lang/String;

    .line 1216
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mPersonPhoto:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1217
    const-string v2, ""

    iput-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mPersonPhoto:Ljava/lang/String;

    .line 1221
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1226
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1228
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1230
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1231
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1262
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1264
    :cond_3
    iput-boolean v11, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->isRunning:Z

    goto :goto_0

    .line 1232
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 1233
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1236
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1237
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1238
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUser_full_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v5, v5, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mPersonPhoto:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getTotalCompany()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v8, v8, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getGoodCompany()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v9, v9, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v9

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getBlockedCompany()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lae/gov/mol/MolApplication;->LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1242
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_eng()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1243
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_eng()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_arb()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v5, v5, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/UserVo$UserVoData;->getTasheelUser()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v6, v6, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/mol/vo/UserVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/UserVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lae/gov/mol/MolApplication;->Login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Home;->mStringUserId:Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getFragmentHome()Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v10

    .line 1247
    .local v10, "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    if-eqz v10, :cond_2

    .line 1248
    invoke-virtual {v10}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    .line 1249
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Fragment_Home;->updateUserLoggedInStatus(Z)V

    goto/16 :goto_1

    .line 1254
    .end local v10    # "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getFragmentHome()Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v10

    .line 1255
    .restart local v10    # "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f09016f

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1256
    if-eqz v10, :cond_2

    .line 1257
    invoke-virtual {v10}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1193
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1194
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 1195
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v1, Lae/gov/mol/vo/UserVo;

    invoke-direct {v1}, Lae/gov/mol/vo/UserVo;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Home;->mUserVo:Lae/gov/mol/vo/UserVo;

    .line 1196
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/Fragment_Home$LoginBackProcess;->isRunning:Z

    .line 1198
    return-void
.end method
