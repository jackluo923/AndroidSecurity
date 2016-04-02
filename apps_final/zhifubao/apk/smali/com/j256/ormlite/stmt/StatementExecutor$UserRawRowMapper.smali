.class Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;
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

.field private final mapper:Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;"
        }
    .end annotation
.end field

.field private final stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/RawRowMapper;Lcom/j256/ormlite/stmt/GenericRowMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    return-void
.end method

.method private getColumnNames(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->columnNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->columnNames:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->columnNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->columnNames:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TUO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->stringRowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->mapper:Lcom/j256/ormlite/dao/RawRowMapper;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;->getColumnNames(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/dao/RawRowMapper;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
