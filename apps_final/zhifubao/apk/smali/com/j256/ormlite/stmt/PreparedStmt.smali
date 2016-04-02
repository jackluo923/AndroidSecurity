.class public interface abstract Lcom/j256/ormlite/stmt/PreparedStmt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;
.end method

.method public abstract compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;
.end method

.method public abstract getStatement()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
.end method

.method public abstract setArgumentHolderValue(ILjava/lang/Object;)V
.end method
