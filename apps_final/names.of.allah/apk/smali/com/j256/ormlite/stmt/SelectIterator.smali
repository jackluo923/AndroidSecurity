.class public Lcom/j256/ormlite/stmt/SelectIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private alreadyMoved:Z

.field private final classDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

.field private final connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field private final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private first:Z

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final results:Lcom/j256/ormlite/support/DatabaseResults;

.field private rowC:I

.field private final rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final statement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    iput-object p3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    iput-object p4, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iput-object p5, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    iput-object p6, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    invoke-interface {p6, p8}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    iput-object p7, p0, Lcom/j256/ormlite/stmt/SelectIterator;->statement:Ljava/lang/String;

    if-eqz p7, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "starting iterator @{} for \'{}\'"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p7}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getCurrent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    iget v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->statement:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "closed iterator @{} after {} rows"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    return-void
.end method

.method public closeQuietly()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public current()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->first()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawResults()Lcom/j256/ormlite/support/DatabaseResults;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Errors getting more results of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNextThrow()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    :cond_2
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v0

    goto :goto_1
.end method

.method public moveRelative(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/support/DatabaseResults;->moveRelative(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public moveToNext()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get next result for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public nextThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->previous()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->removeThrow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeThrow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object to remove. Must be called after a call to next."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object because classDao not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    throw v0
.end method
