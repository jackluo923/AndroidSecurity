.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$1;
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
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iput v2, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->showExpireMoreThan60()V

    .line 130
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method
