.class Lae/gov/mol/fragment/Fragment_Profile$4;
.super Ljava/lang/Object;
.source "Fragment_Profile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Profile;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Profile;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Profile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Profile$4;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$4;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$4;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    return-void
.end method
