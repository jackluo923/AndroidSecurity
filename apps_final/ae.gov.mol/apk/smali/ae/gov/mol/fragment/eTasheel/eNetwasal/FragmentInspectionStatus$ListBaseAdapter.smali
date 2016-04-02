.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentInspectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTextViewTitleOne:Landroid/widget/TextView;

.field mTextViewTitleTwo:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 145
    move-object v1, p2

    .line 148
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 149
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    const v2, 0x7f06028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    .line 154
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    .line 155
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 156
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    const v2, 0x7f06028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const v4, 0x7f0900d5

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getCom_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "CompanyCode"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getPassportNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 176
    :goto_1
    return-object v1

    .line 159
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    goto :goto_0

    .line 167
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 170
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
