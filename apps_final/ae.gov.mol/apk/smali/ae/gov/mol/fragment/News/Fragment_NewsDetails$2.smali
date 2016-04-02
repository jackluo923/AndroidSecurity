.class Lae/gov/mol/fragment/News/Fragment_NewsDetails$2;
.super Ljava/lang/Object;
.source "Fragment_NewsDetails.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/News/Fragment_NewsDetails;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$2;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/support/v7/widget/PopupMenu;)V
    .locals 2
    .param p1, "arg0"    # Landroid/support/v7/widget/PopupMenu;

    .prologue
    .line 312
    iget-object v0, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$2;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragmentActivity;->setTheme(I)V

    .line 314
    return-void
.end method
