.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentExpiredLabourCardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;
    }
.end annotation


# instance fields
.field private mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field public mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mExpiredLabourCardListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentBundle:Landroid/os/Bundle;

.field private mListViewExpiredLabourCard:Landroid/widget/ListView;

.field private mStrCompanyNo:Ljava/lang/String;

.field private molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Lae/gov/mol/vo/ExpiredCard_infoVo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mStrCompanyNo:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Lae/gov/mol/helper/CustomFragmentActivity;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    .locals 1
    .param p0, "mCustomFragmentActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 98
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;-><init>()V

    .line 99
    .local v0, "f":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    iput-object p0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 100
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 49
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;

    .line 50
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mStrCompanyNo:Ljava/lang/String;

    .line 51
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 56
    const v1, 0x7f03006e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f06031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    .line 58
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 59
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-object v0
.end method

.method public updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V
    .locals 2
    .param p2, "mCard_infoVo"    # Lae/gov/mol/vo/ExpiredCard_infoVo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;",
            "Lae/gov/mol/vo/ExpiredCard_infoVo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    .line 184
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    .line 185
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 186
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;

    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mListViewExpiredLabourCard:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    :cond_0
    return-void
.end method
