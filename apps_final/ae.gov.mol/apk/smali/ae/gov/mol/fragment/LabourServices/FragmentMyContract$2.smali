.class Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;
.super Ljava/lang/Object;
.source "FragmentMyContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->DialogCountry()V

    .line 134
    :cond_0
    return-void
.end method
