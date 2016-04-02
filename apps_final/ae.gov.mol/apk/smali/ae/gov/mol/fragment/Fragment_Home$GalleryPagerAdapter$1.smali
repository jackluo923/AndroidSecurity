.class Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    iput p2, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->val$position:I

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1108
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v4

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->val$position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lae/gov/mol/fragment/Fragment_Home;->mStringNewsid:Ljava/lang/String;

    .line 1109
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1110
    .local v2, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1111
    .local v1, "mBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsid:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v4}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v4

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mStringNewsid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsHeadLine:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->val$position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsDate:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->val$position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsShort:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->val$position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsshort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string v3, "news_detail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1116
    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v3}, Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;->access$0(Lae/gov/mol/fragment/Fragment_Home$GalleryPagerAdapter;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v3, v2}, Lae/gov/mol/MolFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
