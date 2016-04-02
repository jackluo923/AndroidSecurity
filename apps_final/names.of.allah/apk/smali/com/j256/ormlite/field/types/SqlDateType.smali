.class public Lcom/j256/ormlite/field/types/SqlDateType;
.super Lcom/j256/ormlite/field/types/DateType;


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/SqlDateType;

.field private static final sqlDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/j256/ormlite/field/types/SqlDateType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/SqlDateType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/SqlDateType;->singleTon:Lcom/j256/ormlite/field/types/SqlDateType;

    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/field/types/SqlDateType;->sqlDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    sget-object v0, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/sql/Date;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/DateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

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

    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/DateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/SqlDateType;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/types/SqlDateType;->singleTon:Lcom/j256/ormlite/field/types/SqlDateType;

    return-object v0
.end method


# virtual methods
.method protected getDefaultDateFormatConfig()Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/types/SqlDateType;->sqlDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    return-object v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ljava/sql/Date;

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/sql/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/j256/ormlite/field/types/SqlDateType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ljava/sql/Timestamp;

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method
