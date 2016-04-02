.class public Lcom/j256/ormlite/stmt/query/OrderBy;
.super Ljava/lang/Object;


# instance fields
.field private final ascending:Z

.field private final columnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->columnName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->ascending:Z

    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public isAscending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->ascending:Z

    return v0
.end method
