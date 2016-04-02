.class Lae/gov/mol/fragment/DialogFragment_Forgot_Password$1;
.super Ljava/lang/Object;
.source "DialogFragment_Forgot_Password.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_Forgot_Password;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$1;->this$0:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Forgot_Password$1;->this$0:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->dismiss()V

    .line 100
    return-void
.end method
