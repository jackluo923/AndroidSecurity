.class Lae/gov/mol/MolFragmentActivity$1;
.super Ljava/lang/Object;
.source "MolFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/MolFragmentActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method constructor <init>(Lae/gov/mol/MolFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/MolFragmentActivity$1;->this$0:Lae/gov/mol/MolFragmentActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lae/gov/mol/MolFragmentActivity$1;->this$0:Lae/gov/mol/MolFragmentActivity;

    # getter for: Lae/gov/mol/MolFragmentActivity;->mFragment_Home:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v0}, Lae/gov/mol/MolFragmentActivity;->access$0(Lae/gov/mol/MolFragmentActivity;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/gov/mol/fragment/Fragment_Home;->doubleBackToExitPressedOnce:Z

    .line 162
    return-void
.end method
