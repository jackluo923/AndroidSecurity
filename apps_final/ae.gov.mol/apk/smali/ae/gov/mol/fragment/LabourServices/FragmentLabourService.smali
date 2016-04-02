.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourService;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentLabourService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mLinearLayoutLabourLaw:Landroid/widget/LinearLayout;

.field mLinearLayoutMyContract:Landroid/widget/LinearLayout;

.field mLinearLayoutMyFaq:Landroid/widget/LinearLayout;

.field mLinearLayoutMySalary:Landroid/widget/LinearLayout;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewHeader:Landroid/widget/TextView;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->showLabourServices(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->showLabourServices(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->showLabourServices(I)V

    goto :goto_0

    .line 84
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->showLabourServices(I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f060542
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 45
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mTags:Lae/gov/mol/helper/Tags;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v1, 0x7f030096

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060542

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMyContract:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f060543

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMySalary:Landroid/widget/LinearLayout;

    .line 53
    const v1, 0x7f060544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMyFaq:Landroid/widget/LinearLayout;

    .line 54
    const v1, 0x7f060545

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutLabourLaw:Landroid/widget/LinearLayout;

    .line 55
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mTextViewHeader:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMyContract:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMySalary:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutMyFaq:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mLinearLayoutLabourLaw:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->mTextViewHeader:Landroid/widget/TextView;

    const v2, 0x7f09008e

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object v0
.end method

.method public showLabourServices(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "pageindex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourService;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
