.class public Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_eNetwasal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;
    }
.end annotation


# instance fields
.field private isEnabled:Z

.field private mBundle:Landroid/os/Bundle;

.field private mListViewEnetwasal:Landroid/widget/ListView;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field private molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field private molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->isEnabled:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
    .locals 1
    .param p0, "fragment_eTasheel_Pager"    # Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .param p1, "mBundle2"    # Landroid/os/Bundle;

    .prologue
    .line 326
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;-><init>()V

    .line 327
    .local v0, "f":Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->setArguments(Landroid/os/Bundle;)V

    .line 328
    iput-object p0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 329
    return-object v0
.end method


# virtual methods
.method public listViewOnClick()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mListViewEnetwasal:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 57
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 59
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 64
    const v0, 0x7f030062

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;

    const v1, 0x7f0602d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mListViewEnetwasal:Landroid/widget/ListView;

    .line 66
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;[Ljava/lang/String;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mListViewEnetwasal:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mListViewEnetwasal:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->listViewOnClick()V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;

    return-object v0
.end method

.method protected showDateScreenForm(Ljava/lang/String;Ljava/lang/String;Lae/gov/mol/vo/OwnerstatisticsVo;Ljava/lang/String;)V
    .locals 5
    .param p1, "mInputformtitle"    # Ljava/lang/String;
    .param p2, "mTitle"    # Ljava/lang/String;
    .param p3, "mOwnerstatisticsVo"    # Lae/gov/mol/vo/OwnerstatisticsVo;
    .param p4, "eNetwasalCompanyNo"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f090061

    const/4 v4, 0x1

    .line 308
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;-><init>()V

    .line 309
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "mBundleForDateForm":Landroid/os/Bundle;
    const v2, 0x7f090044

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 312
    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYNAME()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    const v2, 0x7f090046

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const v2, 0x7f09005d

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->setArguments(Landroid/os/Bundle;)V

    .line 321
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const/16 v3, 0x1001

    invoke-virtual {v2, v1, v4, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 323
    return-void

    .line 314
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYNAME()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
