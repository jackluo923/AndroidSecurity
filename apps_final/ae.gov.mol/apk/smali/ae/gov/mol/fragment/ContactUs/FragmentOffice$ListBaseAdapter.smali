.class public Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentOffice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 166
    move-object v2, p2

    .line 168
    .local v2, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 169
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 170
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300b3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 171
    new-instance v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    invoke-direct {v3, v4}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    .line 172
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    const v3, 0x7f0605f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 173
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .line 180
    .local v1, "mContactUsData":Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-object v2

    .line 175
    .end local v1    # "mContactUsData":Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;

    goto :goto_0
.end method
