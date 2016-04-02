.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_eServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MolFragmentAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mServiceDataVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceDataVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "mServiceDataVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceDataVo;>;"
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 374
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->mServiceDataVos:Ljava/util/ArrayList;

    .line 375
    iget-object v0, p1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 377
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->mServiceDataVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->mServiceDataVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 391
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 398
    if-nez p2, :cond_0

    .line 399
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300e1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f06076e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 405
    .local v1, "mTextViewTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$MolFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataVo;

    .line 406
    .local v0, "mServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 416
    :goto_1
    return-object v2

    .line 402
    .end local v0    # "mServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    .end local v1    # "mTextViewTitle":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 408
    .restart local v0    # "mServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    .restart local v1    # "mTextViewTitle":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 411
    :pswitch_1
    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceDataVo;->getServiceNameAR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
