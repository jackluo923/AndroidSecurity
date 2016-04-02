.class public Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;
.super Landroid/os/AsyncTask;
.source "Fragment_Attachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckAttachmentStatus"
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
.field isValidAttachment:Z

.field mResultResponse:Ljava/lang/String;

.field paymentUrl:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 1

    .prologue
    .line 1242
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->isValidAttachment:Z

    .line 1245
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    .line 1246
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->paymentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1261
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v0, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->message:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$9(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;->getAttachmentStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    .line 1262
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v2, "<status>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v3, "</status>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->isValidAttachment:Z

    .line 1263
    iget-boolean v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->isValidAttachment:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v1, "<paymentURL>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v1, "</paymentURL>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v2, "<paymentURL>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    const-string v3, "</paymentURL>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->paymentUrl:Ljava/lang/String;

    .line 1275
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->mResultResponse:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 1283
    const/4 v0, 0x0

    return-object v0

    .line 1271
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->paymentUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->onPostExecute(Ljava/lang/Void;)V

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
    const/4 v5, 0x1

    .line 1289
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # invokes: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->dismissDialog()V
    invoke-static {v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$12(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    .line 1291
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f090251

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "mStringTitle":Ljava/lang/String;
    iget-boolean v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->isValidAttachment:Z

    if-eqz v2, :cond_2

    .line 1294
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->paymentUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 1297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1298
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "DATA"

    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->paymentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    .line 1301
    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f090259

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1300
    invoke-static {v2, v1, v3, v0}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1321
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v2, v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 1308
    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f090255

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-static {v2, v1, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1316
    :cond_2
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v2, v2, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 1317
    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f090256

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1316
    invoke-static {v2, v1, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 1249
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, v1, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1250
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1251
    return-void
.end method
