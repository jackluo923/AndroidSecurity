.class public Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Labour_Services_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;
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
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 389
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0, v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getFAQArrayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/FaqVo;

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 396
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    const-string v0, "dismiss in About us Pager"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->finish()V

    .line 413
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 414
    return-void

    .line 404
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 409
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->updateView(Lae/gov/mol/vo/FaqVo;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 383
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 384
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 385
    return-void
.end method
