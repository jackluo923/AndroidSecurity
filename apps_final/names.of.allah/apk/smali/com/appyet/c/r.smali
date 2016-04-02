.class public final Lcom/appyet/c/r;
.super Lcom/actionbarsherlock/app/SherlockFragment;

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;
.implements Lcom/appyet/receiver/b;
.implements Luk/co/senab/a/b/a/b;


# instance fields
.field protected a:Lcom/appyet/context/ApplicationContext;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Long;

.field protected d:Lcom/actionbarsherlock/view/MenuItem;

.field protected e:Z

.field protected f:Z

.field private g:Lcom/appyet/c/ae;

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Lcom/appyet/receiver/c;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/GridView;

.field private m:Lcom/appyet/c/an;

.field private n:Lcom/appyet/c/ak;

.field private o:I

.field private p:Lcom/actionbarsherlock/widget/SearchView;

.field private q:Lcom/a/a/b/f;

.field private r:Lcom/a/a/b/d;

.field private s:Lcom/a/a/b/d;

.field private t:Lcom/appyet/c/al;

.field private u:Luk/co/senab/a/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    iput v2, p0, Lcom/appyet/c/r;->h:I

    iput-object v1, p0, Lcom/appyet/c/r;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    iput-object v1, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    iput v2, p0, Lcom/appyet/c/r;->o:I

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->q:Lcom/a/a/b/f;

    iput-boolean v2, p0, Lcom/appyet/c/r;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/c/r;->f:Z

    iput-object v1, p0, Lcom/appyet/c/r;->t:Lcom/appyet/c/al;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/c/r;Lcom/appyet/c/al;)Lcom/appyet/c/al;
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/r;->t:Lcom/appyet/c/al;

    return-object p1
.end method

.method static synthetic a(Lcom/appyet/c/r;Ljava/util/List;)Lcom/appyet/c/ao;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/c/r;->a(Ljava/util/List;)Lcom/appyet/c/ao;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/appyet/c/ao;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;)",
            "Lcom/appyet/c/ao;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030040

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    :goto_0
    new-instance v0, Lcom/appyet/c/ao;

    invoke-direct {v0, p0}, Lcom/appyet/c/ao;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/appyet/c/ao;->c:I

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->E()Lcom/appyet/context/c;

    move-result-object v0

    sget-object v1, Lcom/appyet/context/c;->b:Lcom/appyet/context/c;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030043

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030042

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/appyet/c/ao;

    invoke-direct {v3, p0}, Lcom/appyet/c/ao;-><init>(Lcom/appyet/c/r;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/appyet/c/ao;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/appyet/c/ao;->b:Ljava/util/List;

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    sget-object v5, Lcom/appyet/data/FeedItem$FlagEnum;->None:Lcom/appyet/data/FeedItem$FlagEnum;

    invoke-virtual {v0, v5}, Lcom/appyet/data/FeedItem;->setFlag(Lcom/appyet/data/FeedItem$FlagEnum;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v1}, Lcom/appyet/c/ae;->getCount()I

    move-result v7

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_d

    iget-object v1, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v1, v5}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsDeleted()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/data/FeedItem;->setIsDeleted(Z)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/data/FeedItem;->setIsRead(Z)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/appyet/data/FeedItem;->setIsStar(Z)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appyet/data/FeedItem;->setCommentsCount(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getArticleStatus()Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/appyet/data/FeedItem;->setArticleStatus(Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureStatus()Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/data/FeedItem;->setEnclosureStatus(Lcom/appyet/data/FeedItem$EnclosureStatusEnum;)V

    sget-object v0, Lcom/appyet/data/FeedItem$FlagEnum;->Update:Lcom/appyet/data/FeedItem$FlagEnum;

    invoke-virtual {v1, v0}, Lcom/appyet/data/FeedItem;->setFlag(Lcom/appyet/data/FeedItem$FlagEnum;)V

    move v0, v2

    :goto_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030040

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    :goto_5
    new-instance v0, Lcom/appyet/c/ao;

    invoke-direct {v0, p0}, Lcom/appyet/c/ao;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/appyet/c/ao;->c:I

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->E()Lcom/appyet/context/c;

    move-result-object v0

    sget-object v1, Lcom/appyet/context/c;->b:Lcom/appyet/context/c;

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030043

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/appyet/c/ae;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const v2, 0x7f030042

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/appyet/c/ae;-><init>(Lcom/appyet/c/r;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    goto :goto_5

    :cond_9
    move v5, v4

    move v1, v4

    :goto_6
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-ge v5, v0, :cond_a

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v5}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFlag()Lcom/appyet/data/FeedItem$FlagEnum;

    move-result-object v6

    sget-object v7, Lcom/appyet/data/FeedItem$FlagEnum;->None:Lcom/appyet/data/FeedItem$FlagEnum;

    if-ne v6, v7, :cond_c

    iget-object v1, v3, Lcom/appyet/c/ao;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    :goto_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    :goto_8
    iput v2, v3, Lcom/appyet/c/ao;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto/16 :goto_1

    :cond_b
    move v2, v4

    goto :goto_8

    :cond_c
    move v0, v1

    goto :goto_7

    :cond_d
    move v0, v4

    goto/16 :goto_4
.end method

.method private a(I)Lcom/appyet/data/FeedItem;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v1}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v1}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GRID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/HeaderViewListAdapter;

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p1, -0x1

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, p1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/c/r;I)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/r;->n:Lcom/appyet/c/ak;

    iget-object v1, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-interface {v0, p1, v1}, Lcom/appyet/c/ak;->a(ILjava/lang/Long;)V

    return-void
.end method

.method public static a(Lcom/appyet/context/ApplicationContext;ILcom/appyet/c/af;Lcom/appyet/data/FeedItem;ZLcom/appyet/data/Feed;Lcom/appyet/metadata/MetadataModuleFeed;)V
    .locals 9

    const v0, 0x7f030042

    if-eq p1, v0, :cond_0

    const v0, 0x7f030043

    if-ne p1, v0, :cond_10

    :cond_0
    iget-object v0, p2, Lcom/appyet/c/af;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v0, p6, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowPublisher:Z

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/appyet/c/af;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/appyet/c/af;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->g:Landroid/widget/ImageView;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_2
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    iget-object v0, p2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_2
    iget-object v0, p2, Lcom/appyet/c/af;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appyet/d/a;->a(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appyet/d/a;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/appyet/c/af;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p2, Lcom/appyet/c/af;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/appyet/d/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x3f99999a    # 1.2f

    :cond_3
    iget-object v1, p0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->E()Lcom/appyet/context/c;

    move-result-object v1

    sget-object v2, Lcom/appyet/context/c;->b:Lcom/appyet/context/c;

    if-ne v1, v2, :cond_e

    iget-object v1, p2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getArticleStatus()Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    if-eq v1, v2, :cond_f

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getArticleStatus()Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    if-ne v1, v2, :cond_f

    iget-object v1, p2, Lcom/appyet/c/af;->l:Landroid/widget/ImageView;

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p2, Lcom/appyet/c/af;->l:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    iget-object v1, p2, Lcom/appyet/c/af;->b:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/c/af;->d:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p2, Lcom/appyet/c/af;->e:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v1

    iget-object v2, p2, Lcom/appyet/c/af;->b:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/appyet/c/af;->d:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/appyet/c/af;->e:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_9
    return-void

    :cond_4
    iget-object v0, p2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->c:Landroid/widget/TextView;

    invoke-virtual {p5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p2, Lcom/appyet/c/af;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p2, Lcom/appyet/c/af;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p2, Lcom/appyet/c/af;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/appyet/c/af;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_c
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_d
    iget-object v0, p2, Lcom/appyet/c/af;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_e
    iget-object v1, p2, Lcom/appyet/c/af;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    iget-object v1, p2, Lcom/appyet/c/af;->l:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_10
    iget-object v0, p2, Lcom/appyet/c/af;->p:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {p3}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p2, Lcom/appyet/c/af;->p:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_9
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const-string v0, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v2}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->n:Lcom/appyet/c/ak;

    iget-object v3, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-interface {v0, v2, v3}, Lcom/appyet/c/ak;->a(ILjava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v2, v0}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/appyet/c/r;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/c/r;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/appyet/c/r;I)Lcom/appyet/data/FeedItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/c/r;->a(I)Lcom/appyet/data/FeedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/c/r;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/appyet/c/r;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appyet/c/r;->h:I

    iget v0, p0, Lcom/appyet/c/r;->h:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/appyet/c/am;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/am;-><init>(Lcom/appyet/c/r;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/c/r;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/appyet/c/r;I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/appyet/c/r;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/appyet/c/r;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/c/r;->h:I

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/appyet/c/r;I)I
    .locals 0

    iput p1, p0, Lcom/appyet/c/r;->o:I

    return p1
.end method

.method static synthetic d(Lcom/appyet/c/r;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/c/r;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/appyet/c/r;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    iget-object v1, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bq;->a(J)V

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GRID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    :goto_2
    iput-object v3, v0, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v3, v1, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    throw v0
.end method

.method static synthetic g(Lcom/appyet/c/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/c/r;->i()V

    return-void
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/appyet/c/r;->o:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v1}, Lcom/appyet/c/ae;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v2}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/appyet/c/r;->g()V

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/appyet/c/r;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->d()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic h(Lcom/appyet/c/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/appyet/c/r;->g()V

    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/appyet/c/ag;

    iget-object v2, p0, Lcom/appyet/c/r;->q:Lcom/a/a/b/f;

    iget-boolean v3, p0, Lcom/appyet/c/r;->e:Z

    iget-boolean v4, p0, Lcom/appyet/c/r;->f:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/appyet/c/ag;-><init>(Lcom/appyet/c/r;Lcom/a/a/b/f;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/c/ag;

    iget-object v2, p0, Lcom/appyet/c/r;->q:Lcom/a/a/b/f;

    iget-boolean v3, p0, Lcom/appyet/c/r;->e:Z

    iget-boolean v4, p0, Lcom/appyet/c/r;->f:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/appyet/c/ag;-><init>(Lcom/appyet/c/r;Lcom/a/a/b/f;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/appyet/c/r;)V
    .locals 9

    const v8, 0x7f0200dc

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "module/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v3, v3, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v3}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0200dc

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_4
    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method static synthetic j(Lcom/appyet/c/r;)Lcom/appyet/c/an;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/r;->m:Lcom/appyet/c/an;

    return-object v0
.end method

.method static synthetic k(Lcom/appyet/c/r;)Lcom/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->r:Lcom/a/a/b/d;

    return-object v0
.end method

.method static synthetic l(Lcom/appyet/c/r;)Lcom/a/a/b/f;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->q:Lcom/a/a/b/f;

    return-object v0
.end method

.method static synthetic m(Lcom/appyet/c/r;)Lcom/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->s:Lcom/a/a/b/d;

    return-object v0
.end method

.method static synthetic n(Lcom/appyet/c/r;)Lcom/appyet/c/al;
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->t:Lcom/appyet/c/al;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/r;->m:Lcom/appyet/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->m:Lcom/appyet/c/an;

    invoke-virtual {v0}, Lcom/appyet/c/an;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/c/an;

    invoke-direct {v0, p0}, Lcom/appyet/c/an;-><init>(Lcom/appyet/c/r;)V

    iput-object v0, p0, Lcom/appyet/c/r;->m:Lcom/appyet/c/an;

    iget-object v0, p0, Lcom/appyet/c/r;->m:Lcom/appyet/c/an;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/an;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    const v0, 0x7f0a0041

    :try_start_0
    const-string v1, ""

    iget-object v2, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-boolean v1, v1, Lcom/appyet/context/f;->j:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v2}, Lcom/appyet/c/ae;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v5, v5, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v5}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appyet/f/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_title"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v2}, Lcom/appyet/c/ae;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v4, v4, Lcom/appyet/context/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_title"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public final e()V
    .locals 4

    const v3, 0x7f080052

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appyet/c/r;->u:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0}, Luk/co/senab/a/a/a/e;->a()V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Feed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appyet/c/r;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->t:Lcom/appyet/manager/bq;

    invoke-virtual {v0, v2}, Lcom/appyet/manager/bq;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/c/r;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const v0, 0x7f0a0083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DisplayType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    sget-object v1, Lcom/appyet/context/d;->d:Lcom/appyet/context/d;

    iput-object v1, v0, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/c/r;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    if-eqz p1, :cond_2

    const-string v0, "STATE_PAUSE_ON_SCROLL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STATE_PAUSE_ON_SCROLL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/c/r;->e:Z

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "STATE_PAUSE_ON_FLING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "STATE_PAUSE_ON_FLING"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/c/r;->f:Z

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/appyet/c/t;

    invoke-direct {v1, p0}, Lcom/appyet/c/t;-><init>(Lcom/appyet/c/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/appyet/c/u;

    invoke-direct {v1, p0}, Lcom/appyet/c/u;-><init>(Lcom/appyet/c/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/appyet/c/r;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/appyet/c/r;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->a()Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setTouchMode(I)V

    :cond_4
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "FeedArticleList"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_5
    const-string v1, "DisplayType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Module"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "ModuleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    sget-object v1, Lcom/appyet/context/d;->a:Lcom/appyet/context/d;

    iput-object v1, v0, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    :try_start_1
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    sget-object v2, Lcom/appyet/context/d;->b:Lcom/appyet/context/d;

    iput-object v2, v1, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const-string v2, "SearchTerm"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/appyet/context/f;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v2, "FeedQuery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ModuleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    sget-object v1, Lcom/appyet/context/d;->c:Lcom/appyet/context/d;

    iput-object v1, v0, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/appyet/c/r;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/appyet/c/ak;

    move-object v1, v0

    iput-object v1, p0, Lcom/appyet/c/r;->n:Lcom/appyet/c/ak;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnHeadlineSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onClose()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a00f7

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lcom/appyet/c/aq;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/aq;-><init>(Lcom/appyet/c/r;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/c/aq;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a00f8

    if-ne v2, v3, :cond_1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v2, Lcom/appyet/c/ap;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/ap;-><init>(Lcom/appyet/c/r;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/c/ap;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a00f9

    if-ne v2, v3, :cond_2

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v2, Lcom/appyet/c/aj;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/aj;-><init>(Lcom/appyet/c/r;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/c/aj;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a00fa

    if-ne v2, v3, :cond_3

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    new-instance v2, Lcom/appyet/c/ai;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/ai;-><init>(Lcom/appyet/c/r;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/c/ai;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_4
    move v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a00fb

    if-ne v2, v3, :cond_5

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/appyet/c/r;->a(I)Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/appyet/data/FeedItem;->setIsDeleted(Z)V

    new-instance v2, Lcom/appyet/c/ad;

    invoke-direct {v2, p0, v0}, Lcom/appyet/c/ad;-><init>(Lcom/appyet/c/r;Lcom/appyet/data/FeedItem;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/c/ad;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :cond_5
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    goto/16 :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput v2, v0, Lcom/appyet/context/f;->i:I

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-boolean v2, v0, Lcom/appyet/context/f;->j:Z

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v1, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v1, v0, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0}, Lcom/a/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/e;->a()Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->b(I)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->c()Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->r:Lcom/a/a/b/d;

    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0}, Lcom/a/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/e;->a()Lcom/a/a/b/e;

    move-result-object v0

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->c()Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/a/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->s:Lcom/a/a/b/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appyet/c/r;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080077

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const v0, 0x7f0a0102

    :try_start_0
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v0, p0, Lcom/appyet/c/r;->p:Lcom/actionbarsherlock/widget/SearchView;

    iget-object v0, p0, Lcom/appyet/c/r;->p:Lcom/actionbarsherlock/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->p:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/r;->p:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/appyet/c/r;->p:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v0, v0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f0200bb

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {}, Lcom/appyet/context/ApplicationContext;->d()V

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onLowMemory()V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    const-string v1, "LIST"

    invoke-virtual {v0, v1}, Lcom/appyet/data/Module;->setLayout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "LIST"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JLjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    invoke-virtual {v0}, Lcom/appyet/c/ae;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/r;->g:Lcom/appyet/c/ae;

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Lcom/appyet/data/Module;->setLayout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "GRID"

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JLjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, v4}, Lcom/appyet/manager/bp;->a(Z)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bp;->a(Z)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    goto/16 :goto_0

    :pswitch_4
    :try_start_0
    new-instance v0, Lcom/appyet/c/y;

    invoke-direct {v0, p0}, Lcom/appyet/c/y;-><init>(Lcom/appyet/c/r;)V

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->I()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/appyet/c/ah;

    invoke-direct {v0, p0}, Lcom/appyet/c/ah;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ah;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_5
    :try_start_2
    new-instance v0, Lcom/appyet/c/w;

    invoke-direct {v0, p0}, Lcom/appyet/c/w;-><init>(Lcom/appyet/c/r;)V

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    new-instance v0, Lcom/appyet/c/ac;

    invoke-direct {v0, p0}, Lcom/appyet/c/ac;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ac;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_6
    :try_start_4
    new-instance v0, Lcom/appyet/c/x;

    invoke-direct {v0, p0}, Lcom/appyet/c/x;-><init>(Lcom/appyet/c/r;)V

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->I()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    :try_start_5
    new-instance v0, Lcom/appyet/c/ab;

    invoke-direct {v0, p0}, Lcom/appyet/c/ab;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ab;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    goto/16 :goto_0

    :pswitch_8
    :try_start_6
    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->e()I

    move-result v2

    new-instance v3, Lcom/appyet/c/v;

    invoke-direct {v3, p0}, Lcom/appyet/c/v;-><init>(Lcom/appyet/c/r;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/appyet/c/r;->f()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00f6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public final onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/r;->j:Lcom/appyet/receiver/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/appyet/c/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/f;->b()V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/context/ApplicationContext;->a:Z

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/r;->l:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v2, v0, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/appyet/c/r;->k:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v2, v0, Lcom/appyet/context/f;->f:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f0a0103

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0a0104

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v3, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    iget-object v4, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    :goto_0
    const v0, 0x7f0a0108

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    const v0, 0x7f0a0109

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v3, v3, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v3, v3, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v3}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Feed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    return-void

    :cond_0
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v3, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/appyet/c/r;

    invoke-direct {v1}, Lcom/appyet/c/r;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DisplayType"

    const-string v4, "Search"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SearchTerm"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appyet/c/r;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, v5}, Lcom/appyet/c/r;->setRetainInstance(Z)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    const v2, 0x7f0a00c2

    const-string v3, "ContentFrameFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/appyet/c/r;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    return v5
.end method

.method public final onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iput-boolean v4, v0, Lcom/appyet/context/ApplicationContext;->a:Z

    new-instance v0, Lcom/appyet/receiver/c;

    invoke-direct {v0, p0}, Lcom/appyet/receiver/c;-><init>(Lcom/appyet/receiver/b;)V

    iput-object v0, p0, Lcom/appyet/c/r;->j:Lcom/appyet/receiver/c;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/c/r;->j:Lcom/appyet/receiver/c;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->X()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, v3}, Lcom/appyet/manager/bp;->j(I)V

    invoke-virtual {p0}, Lcom/appyet/c/r;->c()V

    :goto_0
    invoke-virtual {p0}, Lcom/appyet/c/r;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appyet/c/r;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/appyet/c/r;->i()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/appyet/c/r;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "STATE_PAUSE_ON_SCROLL"

    iget-boolean v1, p0, Lcom/appyet/c/r;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "STATE_PAUSE_ON_FLING"

    iget-boolean v1, p0, Lcom/appyet/c/r;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Luk/co/senab/a/a/a/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/a/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/r;->u:Luk/co/senab/a/a/a/e;

    invoke-virtual {p0}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/a/b/a;->a(Landroid/app/Activity;)Luk/co/senab/a/b/b;

    move-result-object v0

    invoke-static {}, Luk/co/senab/a/b/h;->a()Luk/co/senab/a/b/i;

    move-result-object v1

    iget-object v1, v1, Luk/co/senab/a/b/i;->a:Luk/co/senab/a/b/h;

    iput-object v1, v0, Luk/co/senab/a/b/b;->a:Luk/co/senab/a/b/h;

    iput-object p1, v0, Luk/co/senab/a/b/b;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a([I)Luk/co/senab/a/b/b;

    move-result-object v0

    iput-object p0, v0, Luk/co/senab/a/b/b;->b:Luk/co/senab/a/b/a/b;

    const-class v1, Landroid/widget/TextView;

    new-instance v2, Lcom/appyet/c/s;

    invoke-direct {v2, p0}, Lcom/appyet/c/s;-><init>(Lcom/appyet/c/r;)V

    iget-object v3, v0, Luk/co/senab/a/b/b;->d:Ljava/util/HashMap;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Luk/co/senab/a/b/b;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v3, v0, Luk/co/senab/a/b/b;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/c/r;->u:Luk/co/senab/a/a/a/e;

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/b;->a(Luk/co/senab/a/b/n;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0082
        0x7f0a0083
        0x7f0a0081
    .end array-data
.end method
