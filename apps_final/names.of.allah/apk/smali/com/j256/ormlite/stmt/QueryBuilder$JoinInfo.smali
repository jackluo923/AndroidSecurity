.class Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
.super Ljava/lang/Object;


# instance fields
.field localField:Lcom/j256/ormlite/field/FieldType;

.field operation:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

.field final queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;"
        }
    .end annotation
.end field

.field remoteField:Lcom/j256/ormlite/field/FieldType;

.field final synthetic this$0:Lcom/j256/ormlite/stmt/QueryBuilder;

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->this$0:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iput-object p4, p0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->operation:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    return-void
.end method
