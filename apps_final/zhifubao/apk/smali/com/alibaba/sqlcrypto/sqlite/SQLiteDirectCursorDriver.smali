.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public cursorDeactivated()V
    .locals 0

    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    :goto_1
    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v0, p0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .locals 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteDirectCursorDriver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
