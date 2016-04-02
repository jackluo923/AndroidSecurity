.class Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentExpiredLabourCardSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MolFragmentAdapter"
.end annotation


# instance fields
.field private listValues:[Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;[Ljava/lang/String;)V
    .locals 0
    .param p2, "listItem"    # [Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 105
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    const v3, 0x7f03006a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    .line 134
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    const v3, 0x7f0602e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "mTextViewTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    return-object v2

    .line 132
    .end local v1    # "mTextViewTitle":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iput-object p2, v2, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->view:Landroid/view/View;

    goto :goto_0
.end method
