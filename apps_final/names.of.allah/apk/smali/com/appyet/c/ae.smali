.class public final Lcom/appyet/c/ae;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/data/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/r;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:Landroid/view/LayoutInflater;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    const v0, 0x7f03003d

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput v2, p0, Lcom/appyet/c/ae;->f:I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    iput p4, p0, Lcom/appyet/c/ae;->c:I

    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/appyet/c/ae;->d:Landroid/view/LayoutInflater;

    iput-boolean v2, p0, Lcom/appyet/c/ae;->e:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/appyet/c/ae;->f:I

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v8, 0x7f030043

    const v4, 0x7f030042

    if-nez p2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/ae;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/appyet/c/ae;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    :try_start_1
    new-instance v2, Lcom/appyet/c/af;

    iget-object v0, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    invoke-direct {v2, v0}, Lcom/appyet/c/af;-><init>(Lcom/appyet/c/r;)V

    iget v0, p0, Lcom/appyet/c/ae;->c:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/appyet/c/ae;->c:I

    if-ne v0, v8, :cond_3

    :cond_0
    const v0, 0x7f0a008e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    const v0, 0x7f0a008b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->b:Landroid/widget/TextView;

    const v0, 0x7f0a008d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0095

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0091

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0093

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0090

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->g:Landroid/widget/ImageView;

    const v0, 0x7f0a0094

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->l:Landroid/widget/ImageView;

    const v0, 0x7f0a0092

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f0a008a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    const v0, 0x7f0a008c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/c/af;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0a008f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/appyet/c/af;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0097

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    const v0, 0x7f0a0096

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->n:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appyet/data/Feed;

    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->d:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appyet/metadata/MetadataModuleFeed;

    iget v0, p0, Lcom/appyet/c/ae;->c:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/appyet/c/ae;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v8, :cond_7

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/appyet/c/af;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v4, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    iget v1, p0, Lcom/appyet/c/ae;->c:I

    iget-boolean v4, p0, Lcom/appyet/c/ae;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/appyet/c/r;->a(Lcom/appyet/context/ApplicationContext;ILcom/appyet/c/af;Lcom/appyet/data/FeedItem;ZLcom/appyet/data/Feed;Lcom/appyet/metadata/MetadataModuleFeed;)V

    move-object v0, v7

    :goto_3
    return-object v0

    :cond_3
    const v0, 0x7f0a008a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/appyet/c/af;->o:Landroid/widget/ImageView;

    const v0, 0x7f0a008b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/appyet/c/af;->p:Landroid/widget/TextView;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_4
    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/c/af;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v0

    move-object v7, p2

    goto :goto_1

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->D()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x1

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/appyet/c/ae;->b:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Lcom/appyet/manager/ar;->b(Lcom/appyet/context/ApplicationContext;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/appyet/c/af;->j:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/appyet/c/ae;->f:I

    add-int/2addr v4, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_5
    iget-object v0, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->l(Lcom/appyet/c/r;)Lcom/a/a/b/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    invoke-static {v8}, Lcom/appyet/c/r;->k(Lcom/appyet/c/r;)Lcom/a/a/b/d;

    move-result-object v8

    invoke-virtual {v0, v1, v4, v8}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v1, v2, Lcom/appyet/c/af;->i:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lcom/appyet/c/af;->j:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    :cond_6
    :try_start_7
    iget-object v0, v2, Lcom/appyet/c/af;->j:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/appyet/c/ae;->f:I

    add-int/2addr v9, v1

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->l(Lcom/appyet/c/r;)Lcom/a/a/b/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/appyet/c/af;->o:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/appyet/c/ae;->a:Lcom/appyet/c/r;

    invoke-static {v8}, Lcom/appyet/c/r;->m(Lcom/appyet/c/r;)Lcom/a/a/b/d;

    move-result-object v8

    invoke-virtual {v0, v1, v4, v8}, Lcom/a/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/d;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto/16 :goto_4
.end method
