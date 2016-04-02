.class Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$1;
.super Ljava/lang/Object;
.source "fragment_Company_quota_status_by_com_list.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 103
    return-void
.end method
