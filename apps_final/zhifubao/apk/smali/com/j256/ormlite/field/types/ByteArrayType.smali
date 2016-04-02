.class public Lcom/j256/ormlite/field/types/ByteArrayType;
.super Lcom/j256/ormlite/field/types/BaseDataType;


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/j256/ormlite/field/types/ByteArrayType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/ByteArrayType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/ByteArrayType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/types/ByteArrayType;->singleTon:Lcom/j256/ormlite/field/types/ByteArrayType;

    return-object v0
.end method


# virtual methods
.method public dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, [B

    return-object v0
.end method

.method public isAppropriateId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p2

    check-cast v0, [B

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->encrypt([B)[B

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/j256/ormlite/field/types/BaseDataType;->javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;->javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "byte[] type cannot have default values"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "byte[] type cannot be converted from string to Java"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1

    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    check-cast p2, [B

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->decrypt([B)[B

    move-result-object p2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/BaseDataType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
