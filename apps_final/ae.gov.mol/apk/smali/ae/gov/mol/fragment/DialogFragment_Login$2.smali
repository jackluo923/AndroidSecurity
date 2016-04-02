.class Lae/gov/mol/fragment/DialogFragment_Login$2;
.super Ljava/lang/Object;
.source "DialogFragment_Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/DialogFragment_Login;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_Login;

.field private final synthetic val$mEditTextPassword:Landroid/widget/EditText;

.field private final synthetic val$mEditTextUserName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_Login;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iput-object p2, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextUserName:Landroid/widget/EditText;

    iput-object p3, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextPassword:Landroid/widget/EditText;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextUserName:Landroid/widget/EditText;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v3, 0x7f090176

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->CheckInputConstraint(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v3, 0x7f090177

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->CheckInputConstraint(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    new-instance v1, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;-><init>(Lae/gov/mol/fragment/DialogFragment_Login;)V

    invoke-static {v0, v1}, Lae/gov/mol/fragment/DialogFragment_Login;->access$2(Lae/gov/mol/fragment/DialogFragment_Login;Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;)V

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mBackProcess:Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$3(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextUserName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$2;->val$mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :cond_0
    return-void
.end method
