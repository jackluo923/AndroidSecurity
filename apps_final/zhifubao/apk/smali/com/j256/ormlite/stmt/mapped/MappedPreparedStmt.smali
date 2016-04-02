.class public Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;

# interfaces
.implements Lcom/j256/ormlite/stmt/PreparedDelete;
.implements Lcom/j256/ormlite/stmt/PreparedQuery;
.implements Lcom/j256/ormlite/stmt/PreparedUpdate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/stmt/PreparedDelete",
        "<TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedQuery",
        "<TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedUpdate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private final limit:Ljava/lang/Long;

.field private final type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            "Ljava/lang/Long;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    iput-object p6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    iput-object p7, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v2, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v1, v1

    if-lt v2, v1, :cond_3

    sget-object v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "prepared statement \'{}\' with {} args"

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    sget-object v1, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "prepared statement arguments: {}"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlArgValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    aget-object v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v2, v3, v1}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    if-eqz v0, :cond_4

    aput-object v3, v0, v2

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v0
.end method


# virtual methods
.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 3

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not compile this "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement since the caller is expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement.  Check your QueryBuilder methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v0, p2, v1, p3}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method public setArgumentHolderValue(ILjava/lang/Object;)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "argument holder index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "argument holder index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid, only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in statement (index starts at 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lcom/j256/ormlite/stmt/ArgumentHolder;->setValue(Ljava/lang/Object;)V

    return-void
.end method
