.class final Lcom/appyet/c/aq;
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

.field private b:I

.field private c:Lcom/appyet/data/FeedItem;


# direct methods
.method public constructor <init>(Lcom/appyet/c/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput p2, p0, Lcom/appyet/c/aq;->b:I

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FeedItem;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 13

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget v1, p0, Lcom/appyet/c/aq;->b:I

    invoke-static {v0, v1}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;I)Lcom/appyet/data/FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget v1, p0, Lcom/appyet/c/aq;->b:I

    invoke-static {v0, v1}, Lcom/appyet/c/r;->c(Lcom/appyet/c/r;I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/c/aq;->c:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/appyet/manager/bw;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->d()V

    iget-object v0, p0, Lcom/appyet/c/aq;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->b(Lcom/appyet/c/r;)V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/aq;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
