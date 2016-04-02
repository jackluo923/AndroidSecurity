.class Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;
.super Landroid/os/AsyncTask;
.source "Fragment_CustomFragment_PublicServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostAttachment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private gsonXml:Lcom/stanfy/gsonxml/GsonXml;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResponse:Ljava/lang/String;

.field private mXmlInput:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Landroid/content/Context;)V
    .locals 1
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 781
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 778
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mResponse:Ljava/lang/String;

    .line 782
    iput-object p2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mContext:Landroid/content/Context;

    .line 798
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 811
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->UploadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 817
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-virtual {v2}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 821
    :cond_0
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 841
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 842
    return-void

    .line 827
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    const-string v3, "javascript:(function changeImage(a) {document.getElementById(\"img\").src =\"\";})()"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:(function changeImage(a) {document.getElementById(\"img\").src =\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\";})()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const v4, 0x7f090251

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const v5, 0x7f090257

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 801
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 804
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 805
    return-void
.end method
