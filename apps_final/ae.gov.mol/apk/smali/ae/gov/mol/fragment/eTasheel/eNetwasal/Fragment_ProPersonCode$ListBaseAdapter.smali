.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_ProPersonCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 134
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    move-object v1, p2

    .line 142
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 143
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300bc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 145
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    .line 146
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    const v2, 0x7f060665

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewCode:Landroid/widget/TextView;

    .line 147
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    const v2, 0x7f060663

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 168
    :goto_1
    return-object v1

    .line 150
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyName_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ViewHolder;->mTextViewCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPersonCode;->mPro_DetailsVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
