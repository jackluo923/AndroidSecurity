.class public Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
.super Landroid/support/v4/app/Fragment;
.source "FragmentContactUs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;
    }
.end annotation


# static fields
.field static final ARG_POSITION:Ljava/lang/String; = "position"

.field public static final FRAGMENT_ALPHABETIC:I = 0x1

.field public static final FRAGMENT_NEAREST:I = 0x2

.field static position:I


# instance fields
.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mDialogFragment_CallCenter:Lae/gov/mol/fragment/DialogFragment_CallCenter;

.field mIntent:Landroid/content/Intent;

.field mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

.field private mListView:Landroid/widget/ListView;

.field mTags:Lae/gov/mol/helper/Tags;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static GetNewInstance()Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-direct {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;-><init>()V

    .line 113
    .local v0, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    return-object v0
.end method

.method public static GetNewInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    .locals 3
    .param p0, "position"    # I

    .prologue
    .line 117
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-direct {v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;-><init>()V

    .line 118
    .local v1, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "position"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v1
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)Lae/gov/mol/fragment/DialogFragment_CallCenter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mDialogFragment_CallCenter:Lae/gov/mol/fragment/DialogFragment_CallCenter;

    return-object v0
.end method

.method public static newInstance()Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-direct {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;-><init>()V

    .line 66
    .local v0, "f":Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    return-object v0
.end method


# virtual methods
.method public getInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
    .locals 0
    .param p1, "FragmentType"    # I

    .prologue
    .line 108
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 60
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mTags:Lae/gov/mol/helper/Tags;

    .line 61
    const-string v0, "contact us"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 70
    const v1, 0x7f030062

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0602d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    .line 72
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 74
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;[Ljava/lang/String;)V

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

    .line 75
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2, v4}, Lae/gov/mol/fragment/DialogFragment_CallCenter;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZ)Lae/gov/mol/fragment/DialogFragment_CallCenter;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mDialogFragment_CallCenter:Lae/gov/mol/fragment/DialogFragment_CallCenter;

    .line 79
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$1;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-object v0
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "itemLocationList":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ContactUsVo$ContactUsData;>;"
    if-eqz p1, :cond_0

    .line 182
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$2;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    :cond_0
    return-void
.end method
