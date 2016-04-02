.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_RulesandProcedureDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    move-object v1, p2

    .line 150
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 151
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 152
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300c7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V

    iput-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    .line 154
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    const v2, 0x7f060690

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_name_arb()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_name_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    return-object v1

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    goto :goto_0

    .line 163
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_name_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
