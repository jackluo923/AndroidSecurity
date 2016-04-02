.class final Lcom/appyet/manager/o;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/appyet/data/FeedItem;

.field final synthetic c:Lcom/appyet/manager/d;


# direct methods
.method constructor <init>(Lcom/appyet/manager/d;ZLcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/o;->c:Lcom/appyet/manager/d;

    iput-boolean p2, p0, Lcom/appyet/manager/o;->a:Z

    iput-object p3, p0, Lcom/appyet/manager/o;->b:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/manager/o;->c:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v0, "1"

    iget-boolean v2, p0, Lcom/appyet/manager/o;->a:Z

    if-nez v2, :cond_0

    const-string v0, "0"

    :cond_0
    const-string v2, "UPDATE FeedItem SET IsRead = ? WHERE FeedItemId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/appyet/manager/o;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v4}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->updateRaw(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appyet/manager/o;->c:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/manager/o;->b:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;J)V

    const/4 v0, 0x0

    return-object v0
.end method
