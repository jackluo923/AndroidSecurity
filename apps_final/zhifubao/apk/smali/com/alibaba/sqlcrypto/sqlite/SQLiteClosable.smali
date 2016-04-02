.class public abstract Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.super Ljava/lang/Object;


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private getObjInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "database = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "mSql = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mStartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public acquireReference()V
    .locals 4

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "attempt to re-open an already-closed object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->getObjInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0

    return-void
.end method

.method public releaseReference()V
    .locals 2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseReferenceFromContainer()V
    .locals 2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
