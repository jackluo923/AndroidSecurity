.class public Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentMinistersMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;
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
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 78
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lae/gov/mol/vo/MinisterMessageVo;

    invoke-direct {v4}, Lae/gov/mol/vo/MinisterMessageVo;-><init>()V

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMinistersMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MinisterMessageVo;

    .line 79
    .local v0, "ministerMessageVo":Lae/gov/mol/vo/MinisterMessageVo;
    invoke-virtual {v0}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 80
    invoke-virtual {v0}, Lae/gov/mol/vo/MinisterMessageVo;->getResources()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->setMinisterMessageVo(Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;)V

    .line 86
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 82
    :cond_0
    new-instance v1, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-direct {v1}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;-><init>()V

    .line 83
    .local v1, "ministersMessageData":Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;
    invoke-static {v1}, Lae/gov/mol/MolApplication;->setMinisterMessageVo(Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 93
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 101
    :cond_5
    sget-object v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<html><body style=\"font-family:Helvetica;font-size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-virtual {v2}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\"\'background-color:transparent\' >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    invoke-virtual {v2}, Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mWebViewMessage:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mStringWebContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mFragmentAboutUsPager:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 72
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 73
    return-void
.end method
