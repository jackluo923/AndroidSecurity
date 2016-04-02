.class public Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsDataAdapter"
.end annotation


# instance fields
.field holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;Lae/gov/mol/helper/CustomFragmentActivity;)V
    .locals 2
    .param p2, "mCFA"    # Lae/gov/mol/helper/CustomFragmentActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    iput-object p2, p1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 171
    iget-object v0, p1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 172
    invoke-virtual {p1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->GetDeviceWidth()V

    .line 173
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 186
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 195
    move-object v2, p2

    .line 197
    .local v2, "vi":Landroid/view/View;
    if-nez p2, :cond_2

    .line 198
    new-instance v3, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {v3, v4}, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V

    iput-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    .line 199
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300af

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 200
    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    const v3, 0x7f0605ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mImageViewNewsImage:Landroid/widget/ImageView;

    .line 201
    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    const v3, 0x7f0605ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mTextViewNewsHeading:Landroid/widget/TextView;

    .line 202
    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    const v3, 0x7f0605f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mTextViewNewsDesc:Landroid/widget/TextView;

    .line 203
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    :goto_0
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsphoto()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "url":Ljava/lang/String;
    const-string v3, "http:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :cond_0
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "index":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 215
    .end local v0    # "index":I
    :cond_1
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mImageViewNewsImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height....."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews;->myImageLoader:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mImageViewNewsImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v4}, Lcom/gov/mol/imageloader/MyImageLoader;->ExecuteLoading(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 219
    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v5, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->FormateDateForNews(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsDate:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iget-object v3, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mTextViewNewsHeading:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mStringNewsDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iget-object v4, v3, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;->mTextViewNewsDesc:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v3}, Lae/gov/mol/vo/NewsVo$newsData;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "url":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 205
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    iput-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->holder:Lae/gov/mol/fragment/AboutUs/FragmentNews$ViewHolder;

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v3

    goto :goto_1
.end method
