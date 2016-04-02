.class Lae/gov/mol/fragment/FragmenViolationList$1;
.super Ljava/lang/Object;
.source "FragmenViolationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmenViolationList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmenViolationList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmenViolationList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmenViolationList$1;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList$1;->this$0:Lae/gov/mol/fragment/FragmenViolationList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmenViolationList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->removeBack()V

    .line 89
    return-void
.end method
