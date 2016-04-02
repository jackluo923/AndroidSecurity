.class public Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;
.super Ljava/lang/Object;


# static fields
.field public static final TABLE_INFO_PRAGMA_COLUMNNAME_INDEX:I = 0x1

.field public static final TABLE_INFO_PRAGMA_DEFAULT_INDEX:I = 0x4


# instance fields
.field private mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mInsertSQL:Ljava/lang/String;

.field private mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

.field private mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

.field private mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iput-object p1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mDb:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    return-void
.end method

.method private buildSQL()V
    .locals 8

    const/4 v1, 0x0

    const/16 v5, 0x80

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "INSERT INTO "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "VALUES ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mDb:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "PRAGMA table_info("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    move v2, v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    const-string/jumbo v0, "?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v2, v0, :cond_2

    const-string/jumbo v0, ") "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v2, v0, :cond_3

    const-string/jumbo v0, ");"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "COALESCE(?, "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, ", "

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ", "
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    return-void
.end method

.method private getStatement(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->buildSQL()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "INSERT OR REPLACE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mDb:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->buildSQL()V

    :cond_3
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mDb:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    goto :goto_0
.end method

.method private declared-synchronized insertInternal(Landroid/content/ContentValues;Z)J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->bindObjectToProgram(Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error inserting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " into table  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, -0x1

    :goto_1
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bind(ID)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bind(IF)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bind(II)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bind(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bind(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bind(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public bind(I[B)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_0
.end method

.method public bindNull(I)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :cond_1
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    return-void
.end method

.method public execute()J
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must prepare this inserter before calling execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error executing InsertHelper with table "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareForInsert()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public prepareForReplace()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public replace(Landroid/content/ContentValues;)J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method
