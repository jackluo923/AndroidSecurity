.class Lae/gov/mol/fragment/DialogFragment_CallCenter$2;
.super Ljava/lang/Object;
.source "DialogFragment_CallCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/DialogFragment_CallCenter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_CallCenter;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_CallCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter$2;->this$0:Lae/gov/mol/fragment/DialogFragment_CallCenter;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_CallCenter$2;->this$0:Lae/gov/mol/fragment/DialogFragment_CallCenter;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->dismiss()V

    .line 97
    return-void
.end method
