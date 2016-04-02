.class Lae/gov/mol/fragment/LabourServices/FragmentFAQ$1;
.super Ljava/lang/Object;
.source "FragmentFAQ.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    new-instance v1, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-direct {v1}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 88
    return-void
.end method
