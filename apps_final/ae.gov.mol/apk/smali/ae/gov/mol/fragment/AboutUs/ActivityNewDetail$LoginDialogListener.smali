.class Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;
.super Ljava/lang/Object;
.source "ActivityNewDetail.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f090247

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$2(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    .line 266
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # getter for: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$0(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->saveCredentials(Lcom/facebook/android/Facebook;)Z

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # getter for: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$1(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # getter for: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$1(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->postToWall(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f090246

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$2(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    .line 261
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    const v2, 0x7f090246

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$2(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$LoginDialogListener;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->finish()V

    .line 257
    return-void
.end method
