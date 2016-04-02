.class public Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;
.super Landroid/os/AsyncTask;
.source "DialogFragment_Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/DialogFragment_Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
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
.field mProgressDialog:Landroid/app/ProgressDialog;

.field mResultResponse:Ljava/lang/String;

.field mUserVo:Lae/gov/mol/vo/UserVo;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_Login;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/DialogFragment_Login;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 238
    .local v0, "mStrUserName":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 239
    .local v1, "mStrUserPassword":Ljava/lang/String;
    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2, v0, v1, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/UserVo;

    iput-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    .line 242
    .end local v0    # "mStrUserName":Ljava/lang/String;
    .end local v1    # "mStrUserPassword":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 249
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->dismiss()V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 255
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_eng()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_eng()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/UserVo$UserVoData;->getUser_name_arb()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/UserVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/UserVo$UserVoData;->getTasheelUser()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/mol/vo/UserVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/UserVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lae/gov/mol/MolApplication;->Login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo;->getUserDetail()Lae/gov/mol/vo/UserVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/UserVo$UserVoData;->getUserID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mStringUserId:Ljava/lang/String;

    .line 260
    new-instance v0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getFragmentHome()Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v8

    .line 262
    .local v8, "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    if-eqz v8, :cond_2

    .line 263
    invoke-virtual {v8}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->isTasheelLogin:Z
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$1(Lae/gov/mol/fragment/DialogFragment_Login;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->isLoggedIn(Landroid/content/Context;)Z

    goto/16 :goto_1

    .line 269
    .end local v8    # "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getFragmentHome()Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v8

    .line 270
    .restart local v8    # "mFragment_Home":Lae/gov/mol/fragment/Fragment_Home;
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v2, 0x7f09016f

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    if-eqz v8, :cond_2

    .line 272
    invoke-virtual {v8}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 226
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v1}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 227
    new-instance v0, Lae/gov/mol/vo/UserVo;

    invoke-direct {v0}, Lae/gov/mol/vo/UserVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->mUserVo:Lae/gov/mol/vo/UserVo;

    .line 228
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    new-instance v1, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v1}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 229
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 231
    return-void
.end method
