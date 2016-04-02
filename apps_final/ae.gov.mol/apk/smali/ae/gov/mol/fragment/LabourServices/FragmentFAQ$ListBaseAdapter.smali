.class public Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentFAQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentFAQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mFaqVo:Lae/gov/mol/vo/FaqVo;

.field mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;Lae/gov/mol/vo/FaqVo;)V
    .locals 0
    .param p2, "mFaqVo"    # Lae/gov/mol/vo/FaqVo;

    .prologue
    .line 224
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    iput-object p2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    .line 226
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/FaqVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/FaqVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 240
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    move-object v1, p2

    .line 248
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 249
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 250
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03009b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 251
    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentFAQ;)V

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    .line 252
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    const v2, 0x7f060549

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 253
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    const v2, 0x7f060548

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    .line 254
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/FaqVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/FaqVo$FaqData;

    invoke-virtual {v2}, Lae/gov/mol/vo/FaqVo$FaqData;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/FaqVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/FaqVo$FaqData;

    invoke-virtual {v2}, Lae/gov/mol/vo/FaqVo$FaqData;->getAnswer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-object v1

    .line 256
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/LabourServices/FragmentFAQ$ViewHolder;

    goto :goto_0
.end method
