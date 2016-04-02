.class public final Lcom/appyet/manager/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/appyet/manager/d;


# direct methods
.method public constructor <init>(Lcom/appyet/manager/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/h;->b:Lcom/appyet/manager/d;

    iput-object p2, p0, Lcom/appyet/manager/h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/manager/h;->b:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/manager/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE FeedItem SET IsDeleted = 1, Author = NULL, CommentsLink = NULL, Description = NULL, EnclosureCurrentPosition = NULL, EnclosureDuration = NULL, EnclosureLength = NULL, EnclosureLink = NULL, EnclosureType = NULL, Title = \'\', Thumbnail = NULL, Snippet = NULL, Link = NULL, Article = NULL WHERE IsDeleted <> 1 AND FeedItemId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/appyet/data/FeedItem;->setIsDeleted(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/h;->b:Lcom/appyet/manager/d;

    invoke-static {v0}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;)V

    const/4 v0, 0x0

    return-object v0
.end method
