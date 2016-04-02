.class public interface abstract Lcom/j256/ormlite/support/ConnectionSource;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public abstract close()V
.end method

.method public abstract closeQuietly()V
.end method

.method public abstract getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;
.end method

.method public abstract getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;
.end method

.method public abstract getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;
.end method

.method public abstract getSpecialConnection()Lcom/j256/ormlite/support/DatabaseConnection;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public abstract saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
.end method
