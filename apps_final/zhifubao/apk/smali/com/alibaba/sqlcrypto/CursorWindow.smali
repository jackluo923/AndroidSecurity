.class public Lcom/alibaba/sqlcrypto/CursorWindow;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->native_init(Z)V

    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_init(Z)V
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->allocRow_native()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v0, :cond_1

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v1, v1

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close_native()V

    return-void
.end method

.method public freeLastRow()V
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getBlob_native(II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows_native()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isBlob_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isFloat(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isFloat_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isLong(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isInteger_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isNull(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isString(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->isString_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close_native()V

    return-void
.end method

.method public putBlob([BII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->putBlob_native([BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->putDouble_native(DII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->putLong_native(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->putNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setNumColumns_native(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    return-void
.end method
