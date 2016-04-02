.class Lae/gov/mol/fragment/eTasheel/Fragment_WebView$2;
.super Ljava/lang/Object;
.source "Fragment_WebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_WebView;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_WebView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_WebView$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_WebView;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_WebView;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_WebView;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
