.class Lae/gov/mol/fragment/Fragment_DashboardSlider$1;
.super Ljava/lang/Object;
.source "Fragment_DashboardSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_DashboardSlider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$1;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$1;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->ShoweTasheelPager(I)V

    .line 103
    return-void
.end method
