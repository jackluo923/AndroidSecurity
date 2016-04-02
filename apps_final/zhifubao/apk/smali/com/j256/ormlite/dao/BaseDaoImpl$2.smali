.class Lcom/j256/ormlite/dao/BaseDaoImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/BaseDaoImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$2;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$2;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v1, -0x1

    # invokes: Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    invoke-static {v0, v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->access$1(Lcom/j256/ormlite/dao/BaseDaoImpl;I)Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not build iterator for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$2;->this$0:Lcom/j256/ormlite/dao/BaseDaoImpl;

    iget-object v3, v3, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$2;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
