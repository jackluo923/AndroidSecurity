.class Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;
.super Ljava/lang/Object;
.source "FragmentContactUs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "mAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x2

    .line 83
    if-nez p3, :cond_1

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    # getter for: Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mDialogFragment_CallCenter:Lae/gov/mol/fragment/DialogFragment_CallCenter;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->access$0(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)Lae/gov/mol/fragment/DialogFragment_CallCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->showDialog(IZ)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v2, v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mIntent:Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_2
    if-ne p3, v2, :cond_0

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v2, v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v3, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mIntent:Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
