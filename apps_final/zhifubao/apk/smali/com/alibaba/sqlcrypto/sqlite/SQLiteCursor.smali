.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;
.super Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    iput-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v2, v3, v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method static synthetic access$002(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)I
    .locals 0

    iput p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$512(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindow;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    :goto_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V

    const-string/jumbo v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method private queryThreadLock()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->close()V

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->close()V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorClosed()V

    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v5

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v5

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "null rowId or values found! rowId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", values = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UPDATE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " SET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/Object;

    move v4, v2

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "=?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHERE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->onChange(Z)V

    move v0, v3

    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->deactivate()V

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deactivateCommon()V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    return-void
.end method

.method public deleteRow()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->checkPosition()V

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    :goto_1
    :try_start_1
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->requery()Z

    invoke-virtual {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->onChange(Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->close()V

    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 7

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    array-length v3, v2

    new-instance v4, Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v0}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v5, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    const v1, 0x7fffffff

    invoke-super {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->notifyDataSetChange()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPos:I

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->requery()Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLoadStyle(II)V
    .locals 2

    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    iput p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    return-void
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->supportsUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
