.class interface abstract Lcom/j256/ormlite/stmt/query/Comparison;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# virtual methods
.method public abstract appendOperation(Ljava/lang/StringBuilder;)V
.end method

.method public abstract appendValue(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getColumnName()Ljava/lang/String;
.end method
