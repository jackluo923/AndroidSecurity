.class public Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;
.super Landroid/support/v4/app/Fragment;
.source "FragmentExpiredLabourCardSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;
    }
.end annotation


# instance fields
.field mCompanyNumber:Ljava/lang/String;

.field mFragmentBundle:Landroid/os/Bundle;

.field mListViewExpiredLabourCard:Landroid/widget/ListView;

.field mTextViewHeader:Landroid/widget/TextView;

.field molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mCompanyNumber:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public listViewOnClick()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;-><init>(Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f090044

    .line 41
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 42
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    .line 43
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    .line 46
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mCompanyNumber:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mCompanyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 55
    const v0, 0x7f030093

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    const v1, 0x7f060536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mTextViewHeader:Landroid/widget/TextView;

    .line 58
    new-instance v0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;[Ljava/lang/String;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mTextViewHeader:Landroid/widget/TextView;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->listViewOnClick()V

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    return-object v0
.end method
