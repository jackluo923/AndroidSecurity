.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;
.super Ljava/lang/Object;
.source "Fragment_eServiceDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->SetUpSubmitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 832
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v0}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isPhotoRequired:Z
    invoke-static {}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$18()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 841
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:alert(submitForm())"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$5;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
