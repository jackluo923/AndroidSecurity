.class public Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ENetwasal_CompanyListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation
.end field

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PersonCompanyListVo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    move-object v1, p2

    .line 65
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 66
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 67
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030058

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    new-instance v2, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    .line 69
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    const v2, 0x7f060286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 70
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    const v2, 0x7f060287

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PersonCompanyListVo;->getCom_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_1
    return-object v1

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/ENetwasal_CompanyListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
