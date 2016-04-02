.class Lae/gov/mol/fragment/DialogFragment_Login$1;
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


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_Login;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login$1;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$1;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->dismiss()V

    .line 126
    return-void
.end method
