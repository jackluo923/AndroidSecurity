.class public Lcom/alibaba/sqlcrypto/CursorWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->abortUpdates()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->close()V

    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->commitUpdates()Z

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

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deactivate()V

    return-void
.end method

.method public deleteRow()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deleteRow()Z

    move-result v0

    return v0
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->hasUpdates()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateBlob(I[B)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateDouble(ID)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateFloat(IF)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateInt(II)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateLong(IJ)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateShort(IS)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateString(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWrapper;->mCursor:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->updateToNull(I)Z

    move-result v0

    return v0
.end method
