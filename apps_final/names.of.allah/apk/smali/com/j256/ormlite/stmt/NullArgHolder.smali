.class public Lcom/j256/ormlite/stmt/NullArgHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/stmt/ArgumentHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "null-holder"

    return-object v0
.end method

.method public getFieldType()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSqlArgValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public setMetaInfo(Lcom/j256/ormlite/field/FieldType;)V
    .locals 0

    return-void
.end method

.method public setMetaInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMetaInfo(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V
    .locals 0

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set null on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
