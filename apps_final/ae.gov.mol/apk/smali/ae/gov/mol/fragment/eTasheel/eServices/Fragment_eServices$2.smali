.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;
.super Ljava/lang/Object;
.source "Fragment_eServices.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v8, 0x0

    .line 125
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v4}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v6, 0x7f090099

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 193
    :goto_0
    return v8

    .line 131
    :cond_0
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->molFragmentAdapter:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;

    invoke-virtual {v4, p3, p4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceDataVo;

    .line 133
    .local v2, "mServiceDataVo":Lae/gov/mol/vo/ServiceDataVo;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v6, 0x7f0900c9

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v2}, Lae/gov/mol/vo/ServiceDataGroupVo;->GetServiceCode(Lae/gov/mol/vo/ServiceDataVo;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "serviceCode":Ljava/lang/String;
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v5, 0x7f09005a

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "screen_type"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const-class v5, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v4

    iget-object v4, v4, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    invoke-virtual {v4, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "mBundle":Landroid/os/Bundle;
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v3    # "serviceCode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->mCustomFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v6, 0x7f09008b

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    const v7, 0x7f090137

    invoke-virtual {v6, v7}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
