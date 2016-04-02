.class Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;
.super Ljava/lang/Object;
.source "Fragment_ENetwasalForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mEditTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strNumber:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$3;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strNumber:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->ShowDetailScreen(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    return-void
.end method
