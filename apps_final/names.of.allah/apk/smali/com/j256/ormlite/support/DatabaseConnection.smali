.class public interface abstract Lcom/j256/ormlite/support/DatabaseConnection;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_RESULT_FLAGS:I = -0x1

.field public static final MORE_THAN_ONE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/support/DatabaseConnection;->MORE_THAN_ONE:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeQuietly()V
.end method

.method public abstract commit(Ljava/sql/Savepoint;)V
.end method

.method public abstract compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;I)Lcom/j256/ormlite/support/CompiledStatement;
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
.end method

.method public abstract executeStatement(Ljava/lang/String;I)I
.end method

.method public abstract insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
.end method

.method public abstract isAutoCommit()Z
.end method

.method public abstract isAutoCommitSupported()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isTableExists(Ljava/lang/String;)Z
.end method

.method public abstract queryForLong(Ljava/lang/String;)J
.end method

.method public abstract queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J
.end method

.method public abstract queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract rollback(Ljava/sql/Savepoint;)V
.end method

.method public abstract setAutoCommit(Z)V
.end method

.method public abstract setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
.end method

.method public abstract update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
.end method
