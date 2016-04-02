.class public Lcom/j256/ormlite/stmt/RawRowMapperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/RawRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/RawRowMapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/table/TableInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    return-void
.end method


# virtual methods
.method public mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->createObject()Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/field/FieldType;->convertStringToJavaField(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
