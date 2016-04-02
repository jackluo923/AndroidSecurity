.class public Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "Fragment_Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 1

    .prologue
    .line 1071
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lae/gov/mol/fragment/Fragment_Home;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1073
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 1146
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 1147
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1163
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 1092
    const/4 v1, 0x0

    .line 1094
    .local v1, "imageLayout":Landroid/view/View;
    :try_start_0
    new-instance v2, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;-><init>(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)V

    iput-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    .line 1095
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300e4

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1096
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    const v2, 0x7f06077a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mTextViewDetail:Landroid/widget/TextView;

    .line 1097
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    const v2, 0x7f060778

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v3, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1098
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mTextViewDetail:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/NewsVo$newsData;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0200ff

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1100
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget v3, v3, Lae/gov/mol/fragment/Fragment_Home;->width60:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1102
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->mHolder:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$ViewHolder;->mTextViewDetail:Landroid/widget/TextView;

    new-instance v3, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;

    invoke-direct {v3, p0, p2}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;-><init>(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1129
    return-object v1

    .line 1124
    .restart local p1    # "collection":Landroid/view/View;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1151
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1167
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1176
    return-void
.end method
