.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentExpiredLabourCardList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    move-object v3, p2

    .line 130
    .local v3, "vi":Landroid/view/View;
    if-nez p2, :cond_1

    .line 131
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030071

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 133
    new-instance v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-direct {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)V

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    .line 134
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    const v4, 0x7f060327

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 135
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    const v4, 0x7f060326

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    .line 136
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    const v4, 0x7f060324

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mImageViewPhoto:Landroid/widget/ImageView;

    .line 137
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    const v4, 0x7f060328

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewExpireDate:Landroid/widget/TextView;

    .line 138
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    .line 144
    .local v2, "mExpiredLabourCardListVo":Lae/gov/mol/vo/ExpiredLabourCardListVo;
    if-eqz v2, :cond_0

    .line 145
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 157
    :goto_1
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewCardNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewExpireDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPhoto()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lae/gov/mol/helper/CommonMethods;->getImageFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 161
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mImageViewPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    .end local v1    # "mBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v3

    .line 140
    .end local v2    # "mExpiredLabourCardListVo":Lae/gov/mol/vo/ExpiredLabourCardListVo;
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iput-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    goto :goto_0

    .line 147
    .restart local v2    # "mExpiredLabourCardListVo":Lae/gov/mol/vo/ExpiredLabourCardListVo;
    :pswitch_0
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    :pswitch_1
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
