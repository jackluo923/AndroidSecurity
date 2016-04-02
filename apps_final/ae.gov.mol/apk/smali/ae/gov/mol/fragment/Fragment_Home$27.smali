.class Lae/gov/mol/fragment/Fragment_Home$27;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->SliderActivationDeactivationListner(Z)V
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$27;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    .line 964
    return-void
.end method
