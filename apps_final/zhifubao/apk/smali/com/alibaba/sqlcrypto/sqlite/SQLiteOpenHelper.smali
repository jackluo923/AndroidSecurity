.class public abstract Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field protected mEnableWAL:Z

.field private final mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I

.field protected mPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWAL:Z

    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getReadableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    throw v0

    :cond_3
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Couldn\'t open "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for writing (will try read-only):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onBeforeConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v2, v3, :cond_5

    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eq v1, v2, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Opened "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in read-only mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    :try_start_7
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getWritableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->create(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    :goto_1
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onBeforeConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_7

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    :goto_2
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_4

    :try_start_8
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    :cond_4
    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_a
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_6
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v0

    goto :goto_1

    :cond_7
    :try_start_b
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-le v1, v2, :cond_8

    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t downgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_c
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    const/4 v2, 0x0

    :try_start_d
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method protected onBeforeConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-encrypt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PRAGMA key=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWAL:Z

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "PRAGMA journal_mode=WAL;"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PRAGMA rekey=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t touch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", can\'t rekey the database"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    :try_start_3
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WAL fail!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method protected abstract onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setWALEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->mEnableWAL:Z

    return-void
.end method
