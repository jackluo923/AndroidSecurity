.class public abstract Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;
.super Lcom/alibaba/sqlcrypto/AbstractCursor;


# instance fields
.field protected mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 2

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->checkPosition()V

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/StaleDataException;

    const-string/jumbo v1, "Access closed cursor"

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getBlob(II)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDouble(I)D
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide v0

    :cond_0
    monitor-exit v2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble(II)D

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getFloat(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getFloat(II)F

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInt(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getInt(II)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLong(I)J
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide v0

    :cond_0
    monitor-exit v2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getShort(I)S
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getShort(II)S

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isBlob(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isFloat(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isFloat(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isLong(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isLong(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNull(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isNull(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isString(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->isString(II)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-void
.end method
