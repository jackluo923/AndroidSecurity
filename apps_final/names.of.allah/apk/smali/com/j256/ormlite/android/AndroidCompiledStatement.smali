.class public Lcom/j256/ormlite/android/AndroidCompiledStatement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/support/CompiledStatement;


# static fields
.field private static final NO_STRING_ARGS:[Ljava/lang/String;

.field private static final apiCompatibility:Lcom/j256/ormlite/android/compat/ApiCompatibility;

.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelQueriesEnabled:Z

.field private cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

.field private cursor:Landroid/database/Cursor;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private max:Ljava/lang/Integer;

.field private final sql:Ljava/lang/String;

.field private final type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->NO_STRING_ARGS:[Ljava/lang/String;

    invoke-static {}, Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;->getCompatibility()Lcom/j256/ormlite/android/compat/ApiCompatibility;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->apiCompatibility:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-boolean p4, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancelQueriesEnabled:Z

    return-void
.end method

.method static execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SELECT CHANGES()"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    long-to-int v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/j256/ormlite/android/AndroidCompiledStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "executing statement {} changed {} rows: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems executing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Android statement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private getArgArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->NO_STRING_ARGS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getStringArray()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->NO_STRING_ARGS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private isInPrep()V
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Query already run. Cannot add argument values."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    invoke-interface {v0}, Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;->cancel()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Problems closing Android cursor"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public closeQuietly()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 5

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->max:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancelQueriesEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->apiCompatibility:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    invoke-interface {v0}, Lcom/j256/ormlite/android/compat/ApiCompatibility;->createCancellationHook()Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->apiCompatibility:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getStringArray()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cancellationHook:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/j256/ormlite/android/compat/ApiCompatibility;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: started rawQuery cursor for: {}"

    invoke-virtual {v0, v2, p0, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->cursor:Landroid/database/Cursor;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->max:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problems executing Android query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public runExecute()I
    .locals 4

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForExecute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot call execute on a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "runExecute"

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getArgArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForQuery()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot call query on a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V

    return-object v0
.end method

.method public runUpdate()I
    .locals 4

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot call update on a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->max:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "runUpdate"

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getArgArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->max:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setMaxRows(I)V
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->isInPrep()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->max:Ljava/lang/Integer;

    return-void
.end method

.method public setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V
    .locals 3

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->isInPrep()V

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-virtual {p3}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown sql argument type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->args:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Android type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setQueryTimeout(J)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
