.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;
.super Ljava/lang/Object;
.source "Fragment_eServices.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->lastExpandedGroupPosition:I
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mListViewEservices:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->lastExpandedGroupPosition:I
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 110
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$1;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    invoke-static {v0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;I)V

    .line 113
    return-void
.end method
