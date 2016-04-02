.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$2;
.super Ljava/lang/Object;
.source "FragmentExpiredLabourCardNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const/4 v1, 0x2

    iput v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->showExpireLessThan60()V

    .line 142
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method
