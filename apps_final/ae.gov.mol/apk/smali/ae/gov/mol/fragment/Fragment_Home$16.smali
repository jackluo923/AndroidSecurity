.class Lae/gov/mol/fragment/Fragment_Home$16;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$16;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$16;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->showFacebook()V

    .line 511
    return-void
.end method
