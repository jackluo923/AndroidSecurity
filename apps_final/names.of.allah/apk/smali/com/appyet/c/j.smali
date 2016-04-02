.class final Lcom/appyet/c/j;
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
.field a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/c/a;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FeedItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsStar(Z)V

    iget-object v0, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/d;->a(JZ)V

    iget-object v0, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setIsRead(Z)V

    iget-object v0, p0, Lcom/appyet/c/j;->b:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/j;->a:Lcom/appyet/data/FeedItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FeedItem;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/j;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
