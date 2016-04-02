.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;
.super Ljava/lang/Object;
.source "FragmentExpiredCardLabourCardDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/vo/ServiceDataVo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->CalleServiceDetail()V

    goto :goto_0
.end method
