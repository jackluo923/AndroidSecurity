.class public Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileProcess"
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
.field mContext:Landroid/content/Context;

.field mPersonPhoto:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Profile;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_Profile;Landroid/content/Context;)V
    .locals 1
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mPersonPhoto:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 202
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "mUserId":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    new-instance v2, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v2}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v2, v1, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 204
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v1, v0, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ProfileVo;

    iput-object v1, v2, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 205
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;->getPersonPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mPersonPhoto:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mPersonPhoto:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 207
    const-string v1, ""

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mPersonPhoto:Ljava/lang/String;

    .line 210
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const v6, 0x7f09023a

    const v5, 0x7f090228

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Profile;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 217
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_2
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUser_full_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v5, v5, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->mPersonPhoto:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getTotalCompany()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v8, v8, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getGoodCompany()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v9, v9, Lae/gov/mol/fragment/Fragment_Profile;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v9

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getBlockedCompany()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lae/gov/mol/MolApplication;->LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    # invokes: Lae/gov/mol/fragment/Fragment_Profile;->reloadProfileInformation()V
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Profile;->access$0(Lae/gov/mol/fragment/Fragment_Profile;)V

    .line 236
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 223
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 231
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v1, v5}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v2, v6}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 234
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v1, v5}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v2, v6}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$ProfileProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 196
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 197
    return-void
.end method
