.class public abstract Lcom/alibaba/sqlcrypto/AbstractCursor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sqlcrypto/CrossProcessCursor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->deactivateInternal()V

    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
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

    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->deactivateInternal()V

    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public deleteRow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    invoke-virtual {p2, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnCount()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->setNumColumns(I)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->allocRow()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v4, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :try_start_2
    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 2

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p1, :cond_2

    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onMove(II)Z

    move-result v0

    if-nez v0, :cond_4

    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method protected onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

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

.method public onMove(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public requery()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;-><init>(Lcom/alibaba/sqlcrypto/AbstractCursor;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public updateBlob(I[B)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
