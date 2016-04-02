.class Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_eNetwasal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MolFragmentAdapter"
.end annotation


# instance fields
.field private listValues:[Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;[Ljava/lang/String;)V
    .locals 0
    .param p2, "listItem"    # [Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 339
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 354
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 361
    if-nez p2, :cond_0

    .line 362
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 363
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v3, 0x7f0300e1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;Landroid/view/View;)V

    .line 368
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f06076e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "mTextViewTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->listValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->view:Landroid/view/View;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 366
    .end local v1    # "mTextViewTitle":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    invoke-static {v2, p2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;Landroid/view/View;)V

    goto :goto_0
.end method
