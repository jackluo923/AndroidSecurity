.class Lae/gov/mol/fragment/AboutUs/FragmentNews$2;
.super Ljava/lang/Object;
.source "FragmentNews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "Position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsid:Ljava/lang/String;

    .line 136
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "mIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v1, "mBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mNewsid:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsHeadLine:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsDate:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "mTags.mNewsShort......"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsshort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v4, v3, Lae/gov/mol/helper/Tags;->mNewsShort:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsshort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "news_detail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$2;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v3, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
