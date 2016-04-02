.class public interface abstract Lcom/j256/ormlite/support/CompiledStatement;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract closeQuietly()V
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getColumnName(I)Ljava/lang/String;
.end method

.method public abstract runExecute()I
.end method

.method public abstract runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;
.end method

.method public abstract runUpdate()I
.end method

.method public abstract setMaxRows(I)V
.end method

.method public abstract setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V
.end method

.method public abstract setQueryTimeout(J)V
.end method
