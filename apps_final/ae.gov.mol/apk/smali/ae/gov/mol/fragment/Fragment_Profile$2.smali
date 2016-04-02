.class Lae/gov/mol/fragment/Fragment_Profile$2;
.super Ljava/lang/Object;
.source "Fragment_Profile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Profile;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Profile;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Profile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;-><init>(Lae/gov/mol/fragment/Fragment_Profile;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090221

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$2;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090225

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
