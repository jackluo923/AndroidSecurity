.class public Lcom/j256/ormlite/table/TableInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private final baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private fieldNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private final foreignAutoCreate:Z

.field private final foreignCollections:[Lcom/j256/ormlite/field/FieldType;

.field private final idField:Lcom/j256/ormlite/field/FieldType;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/j256/ormlite/table/TableInfo;->baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v7, v6

    move v5, v4

    move v3, v4

    move v2, v4

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "More than 1 idField configured for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v3, 0x1

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    iput-boolean v2, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    if-nez v3, :cond_6

    sget-object v0, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    :cond_5
    return-void

    :cond_6
    new-array v0, v3, [Lcom/j256/ormlite/field/FieldType;

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v2

    move v1, v4

    move v0, v4

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_1
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method private static wireNewInstance(Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;TT;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    invoke-virtual {p1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getObjectFactory()Lcom/j256/ormlite/table/ObjectFactory;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-static {v1, v0}, Lcom/j256/ormlite/table/TableInfo;->wireNewInstance(Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->baseDaoImpl:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/table/ObjectFactory;->createObject(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create object for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You should use columnName \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of fieldName \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown column name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getForeignCollections()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getIdField()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hasColumnName(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    return v0
.end method

.method public isUpdatable()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v4, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not generate toString of field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
