.class Lae/gov/mol/fragment/Fragment_Profile$3;
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Profile$3;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$3;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    # invokes: Lae/gov/mol/fragment/Fragment_Profile;->reloadProfileInformation()V
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Profile;->access$0(Lae/gov/mol/fragment/Fragment_Profile;)V

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$3;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$3;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$3;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    return-void
.end method
