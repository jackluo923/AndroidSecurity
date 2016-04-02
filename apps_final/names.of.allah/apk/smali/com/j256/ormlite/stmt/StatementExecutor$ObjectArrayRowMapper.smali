.class Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final columnTypes:[Lcom/j256/ormlite/field/DataType;


# direct methods
.method public constructor <init>([Lcom/j256/ormlite/field/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    return-void
.end method


# virtual methods
.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/DataType;->STRING:Lcom/j256/ormlite/field/DataType;

    :goto_1
    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4, p1, v1}, Lcom/j256/ormlite/field/DataPersister;->resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;->columnTypes:[Lcom/j256/ormlite/field/DataType;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    return-object v3
.end method
