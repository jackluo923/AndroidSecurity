.class Lae/gov/mol/fragment/Fragment_Home$2;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$2;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$2;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$2;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mEditTextPassword:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
