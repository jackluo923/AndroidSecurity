.class final Lcom/appyet/manager/v;
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
.field final synthetic a:Lcom/appyet/data/Widget;

.field final synthetic b:Lcom/appyet/manager/d;


# direct methods
.method constructor <init>(Lcom/appyet/manager/d;Lcom/appyet/data/Widget;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/v;->b:Lcom/appyet/manager/d;

    iput-object p2, p0, Lcom/appyet/manager/v;->a:Lcom/appyet/data/Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appyet/manager/v;->b:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getWidgetDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/v;->a:Lcom/appyet/data/Widget;

    invoke-virtual {v1}, Lcom/appyet/data/Widget;->getWidgetId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/appyet/manager/v;->a:Lcom/appyet/data/Widget;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method
