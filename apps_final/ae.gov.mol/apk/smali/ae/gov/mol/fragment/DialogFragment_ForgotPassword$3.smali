.class Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;
.super Ljava/lang/Object;
.source "DialogFragment_ForgotPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

.field private final synthetic val$mEditTextEmail:Landroid/widget/EditText;

.field private final synthetic val$mEditTextPersonNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iput-object p2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->val$mEditTextPersonNumber:Landroid/widget/EditText;

    iput-object p3, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->val$mEditTextEmail:Landroid/widget/EditText;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->val$mEditTextPersonNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->val$mEditTextEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v2, 0x7f090223

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v1, v1, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;-><init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v2, v2, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v2, v2, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v2, 0x7f090222

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 159
    new-instance v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;-><init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v2, v2, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strPersonNumber:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v2, v2, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->strEmailAddress:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$3;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v2, 0x7f090224

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
