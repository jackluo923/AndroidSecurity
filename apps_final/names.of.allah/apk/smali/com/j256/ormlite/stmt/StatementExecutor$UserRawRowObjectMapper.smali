.class Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<TUO;>;"
    }
.end annotation


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private final columnTypes:[Lcom/j256/ormlite/field/DataType;

.field private final mapper:Lcom/j256/ormlite/dao/RawRowObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowObjectMapper",
            "<TUO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RawRowObjectMapper;[Lcom/j256/ormlite/field/DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/RawRowObjectMapper",
            "<TUO;>;[",
            "Lcom/j256/ormlite/field/DataType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->mapper:Lcom/j256/ormlite/dao/RawRowObjectMapper;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    return-void
.end method

.method private getColumnNames(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnNames:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnNames:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TUO;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    aput-object v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v3

    invoke-interface {v3, v4, p1, v0}, Lcom/j256/ormlite/field/DataPersister;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->mapper:Lcom/j256/ormlite/dao/RawRowObjectMapper;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->getColumnNames(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    invoke-interface {v0, v1, v3, v2}, Lcom/j256/ormlite/dao/RawRowObjectMapper;->mapRow([Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
