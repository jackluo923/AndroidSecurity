.class public Lae/gov/mol/fragment/FragmenViolationList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmenViolationList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;
    }
.end annotation


# instance fields
.field itemsHelp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field itemsViolation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mListViewViolation:Landroid/widget/ListView;

.field mStringHelp:[Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lae/gov/mol/helper/Tags;

    invoke-direct {v0}, Lae/gov/mol/helper/Tags;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mTags:Lae/gov/mol/helper/Tags;

    .line 52
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmenViolationList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/MolFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 53
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmenViolationList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mBundle:Landroid/os/Bundle;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmenViolationList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mCompanyViolation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ViolationStatsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    .line 57
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_eng()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsHelp:Ljava/util/List;

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_arb()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsHelp:Ljava/util/List;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v2, 0x7f0300d0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f060758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, "mTextView":Landroid/widget/TextView;
    const v2, 0x7f090243

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmenViolationList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v2, 0x7f060757

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 83
    iget-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/FragmenViolationList$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmenViolationList$1;-><init>(Lae/gov/mol/fragment/FragmenViolationList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v2, 0x7f0606ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->mListViewViolation:Landroid/widget/ListView;

    .line 94
    iget-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->itemsViolation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    iget-object v2, p0, Lae/gov/mol/fragment/FragmenViolationList;->mListViewViolation:Landroid/widget/ListView;

    new-instance v3, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmenViolationList$ViolationAdapter;-><init>(Lae/gov/mol/fragment/FragmenViolationList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    :cond_0
    return-object v1
.end method
