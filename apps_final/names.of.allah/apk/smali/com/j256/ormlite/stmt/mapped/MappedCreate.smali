.class public Lcom/j256/ormlite/stmt/mapped/MappedCreate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private dataClassName:Ljava/lang/String;

.field private final queryNextSequenceStmt:Ljava/lang/String;

.field private versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->dataClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    return-void
.end method

.method private assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1, p2, p4}, Lcom/j256/ormlite/field/FieldType;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "assigned id \'{}\' from {} to \'{}\' in {} object"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->dataClassName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private assignSequenceId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "queried for sequence {} using stmt: {}"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should not have returned 0 for stmt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->queryNextSequenceStmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "sequence"

    invoke-direct {p0, p2, v0, v1, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "INSERT INTO "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v8, v0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v7, v3, v2

    invoke-static {p0, v7}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_3

    invoke-interface {p0, v8}, Lcom/j256/ormlite/db/DatabaseType;->appendInsertNoColumns(Ljava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->buildQueryNextSequence(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V

    return-object v0

    :cond_3
    const/16 v0, 0x28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v9

    array-length v10, v9

    move v7, v1

    move v0, v6

    move v4, v1

    :goto_2
    if-ge v7, v10, :cond_5

    aget-object v11, v9, v7

    invoke-static {p0, v11}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    const/4 v2, 0x0

    invoke-static {p0, v8, v11, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    add-int/lit8 v2, v4, 0x1

    aput-object v11, v3, v4

    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v2

    goto :goto_2

    :cond_4
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v0, ") VALUES ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v7, v4

    move v2, v1

    move v0, v6

    :goto_5
    if-ge v2, v7, :cond_8

    aget-object v6, v4, v2

    invoke-static {p0, v6}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    const-string v6, "?"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    move v2, v4

    goto :goto_4
.end method

.method private static buildQueryNextSequence(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getGeneratedIdSequence()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0, v0, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendSelectNextValFromSequence(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private foreignCollectionsAreAssigned([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isFieldCreatable(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isIdSequenceNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isSelfGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->generateId()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p3, v3, v1, p4}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    move-object v3, v2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->isForeignAutoCreate()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, p3}, Lcom/j256/ormlite/field/FieldType;->extractRawJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/j256/ormlite/field/FieldType;->isObjectsFieldValueDefault(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/field/FieldType;->createWithForeignDao(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/j256/ormlite/db/DatabaseType;->isSelectSequenceBeforeInsert()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_d

    invoke-direct {p0, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignSequenceId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)V

    move-object v3, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;

    invoke-direct {v0, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;-><init>(Lcom/j256/ormlite/stmt/mapped/MappedCreate$1;)V

    move-object v3, v0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v0, v1, v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v2, v0, v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    invoke-virtual {v2, v0}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p2, v2, v1, v4, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    :try_start_3
    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "insert data with statement \'{}\' and {} args, changed {} rows"

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v4, v1

    if-lez v4, :cond_5

    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "insert arguments: {}"

    invoke-virtual {v4, v5, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-lez v2, :cond_b

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->versionFieldTypeIndex:I

    aget-object v1, v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p3, v0, v4, v5}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;->getKey()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "generated-id key was not set by the update call"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to run insert stmt on object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "insert data with statement \'{}\' and {} args, threw exception: {}"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->statement:Ljava/lang/String;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v2, v1

    if-lez v2, :cond_7

    sget-object v2, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "insert arguments: {}"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    throw v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "generated-id key must not be 0 value"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v1, "keyholder"

    invoke-direct {p0, p3, v0, v1, p4}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->assignIdValue(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    :cond_a
    if-eqz p4, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getForeignCollections()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->foreignCollectionsAreAssigned([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p3}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->clazz:Ljava/lang/Class;

    invoke-interface {p4, v1, v0, p3}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    return v2

    :cond_c
    move-object v0, v2

    goto/16 :goto_3

    :cond_d
    move-object v3, v2

    goto/16 :goto_1
.end method
