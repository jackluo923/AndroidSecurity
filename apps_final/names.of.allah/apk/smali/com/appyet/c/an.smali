.class final Lcom/appyet/c/an;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/c/r;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/appyet/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 6

    const-wide/16 v4, 0x64

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v2, v2, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    :cond_0
    sget-object v0, Lcom/appyet/c/z;->a:[I

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->g:Lcom/appyet/context/d;

    invoke-virtual {v1}, Lcom/appyet/context/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;I)I

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iput-object v0, v1, Lcom/appyet/context/f;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/appyet/context/f;->c:Ljava/util/Hashtable;

    :cond_1
    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->d:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/appyet/context/f;->d:Ljava/util/Hashtable;

    :cond_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModuleFeeds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModuleFeed;

    iget-object v4, v1, Lcom/appyet/metadata/MetadataModuleFeed;->Guid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v3, v3, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v3, v3, Lcom/appyet/context/f;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->c:Ljava/lang/Long;

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v2, v2, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v2, v2, Lcom/appyet/context/f;->i:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v1, v1, Lcom/appyet/context/f;->i:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    mul-long/2addr v1, v4

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appyet/manager/d;->a(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, v1, Lcom/appyet/context/f;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v2, v2, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v2, v2, Lcom/appyet/context/f;->i:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/d;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, v1, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget v1, v1, Lcom/appyet/context/f;->i:I

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    mul-long/2addr v1, v4

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appyet/context/f;->a(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v2, p0, Lcom/appyet/c/an;->b:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;Ljava/util/List;)Lcom/appyet/c/ao;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/appyet/c/ao;->c:I

    if-ne v0, v3, :cond_1

    iget-object v0, v2, Lcom/appyet/c/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v4, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v4}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/appyet/c/ae;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->j(Lcom/appyet/c/r;)Lcom/appyet/c/an;

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/appyet/c/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v3, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v3}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appyet/c/ae;->remove(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    const v3, 0x7f08005b

    invoke-virtual {v2, v3}, Lcom/appyet/c/r;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->e(Lcom/appyet/c/r;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->f(Lcom/appyet/c/r;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    :goto_4
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/ae;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/c/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    sget-object v2, Lcom/appyet/data/FeedItem$FlagEnum;->None:Lcom/appyet/data/FeedItem$FlagEnum;

    invoke-virtual {v0, v2}, Lcom/appyet/data/FeedItem;->setFlag(Lcom/appyet/data/FeedItem$FlagEnum;)V

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v2, v2, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v2, v2, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->d(Lcom/appyet/c/r;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GRID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->e(Lcom/appyet/c/r;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->f(Lcom/appyet/c/r;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->f(Lcom/appyet/c/r;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v2}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->e(Lcom/appyet/c/r;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->f(Lcom/appyet/c/r;)Landroid/widget/GridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->e(Lcom/appyet/c/r;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v2}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->a()V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v1, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-virtual {v1}, Lcom/appyet/c/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->g(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/context/f;->j:Z

    :goto_5
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->h(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->i(Lcom/appyet/c/r;)V

    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->d()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/appyet/c/an;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/context/f;->j:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/an;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
