.class Lae/gov/mol/fragment/DialogFragment_ForgotPassword$2;
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


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$2;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$2;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->dismiss()V

    .line 134
    return-void
.end method
