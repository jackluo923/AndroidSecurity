.class final Lcom/appyet/manager/w;
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
.method constructor <init>(Lcom/appyet/manager/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/w;->b:Lcom/appyet/manager/d;

    iput-object p2, p0, Lcom/appyet/manager/w;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/appyet/manager/w;->b:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/manager/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "DELETE FROM Widget WHERE WidgetId = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-interface {v1, v0, v5}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
