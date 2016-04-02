.class Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_RulesandProcedureDetailsAndService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fragment_ListAdapter"
.end annotation


# instance fields
.field listArray:[Ljava/lang/String;

.field mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;[Ljava/lang/String;)V
    .locals 0
    .param p2, "listarray"    # [Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    iput-object p2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->listArray:[Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->listArray:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    move-object v1, p2

    .line 185
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 186
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 187
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300c6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 188
    new-instance v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V

    iput-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    .line 189
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    const v2, 0x7f06068d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;->mTextViewTitle:Landroid/widget/CheckedTextView;

    .line 190
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;->mTextViewTitle:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->listArray:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-object v1

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$Fragment_ListAdapter;->mViewHolder:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$ViewHolder;

    goto :goto_0
.end method
