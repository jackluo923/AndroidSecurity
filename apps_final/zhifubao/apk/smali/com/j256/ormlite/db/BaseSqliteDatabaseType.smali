.class public abstract Lcom/j256/ormlite/db/BaseSqliteDatabaseType;
.super Lcom/j256/ormlite/db/BaseDatabaseType;


# static fields
.field private static synthetic $SWITCH_TABLE$com$j256$ormlite$field$SqlType:[I

.field private static final booleanConverter:Lcom/j256/ormlite/field/FieldConverter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$j256$ormlite$field$SqlType()[I
    .locals 3

    sget-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->$SWITCH_TABLE$com$j256$ormlite$field$SqlType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/j256/ormlite/field/SqlType;->values()[Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BIG_DECIMAL:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_1
    :try_start_1
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BLOB:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_2
    :try_start_2
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BOOLEAN:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_3
    :try_start_3
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BYTE:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_4
    :try_start_4
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_5
    :try_start_5
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->CHAR:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_6
    :try_start_6
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->DATE:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_7
    :try_start_7
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->DOUBLE:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_8
    :try_start_8
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->FLOAT:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    :try_start_9
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_a
    :try_start_a
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_b
    :try_start_b
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG_STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_c
    :try_start_c
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->OTHER:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_d
    :try_start_d
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->SERIALIZABLE:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_e
    :try_start_e
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->SHORT:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_f
    :try_start_f
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_10
    :try_start_10
    sget-object v1, Lcom/j256/ormlite/field/SqlType;->UNKNOWN:Lcom/j256/ormlite/field/SqlType;

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_11
    sput-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->$SWITCH_TABLE$com$j256$ormlite$field$SqlType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_11

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;

    invoke-direct {v0}, Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;-><init>()V

    sput-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->booleanConverter:Lcom/j256/ormlite/field/FieldConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;-><init>()V

    return-void
.end method


# virtual methods
.method public appendInsertNoColumns(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string/jumbo v0, "DEFAULT VALUES"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected appendLongType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "INTEGER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BIGINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected configureGeneratedId(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/field/SqlType;->LONG:Lcom/j256/ormlite/field/SqlType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Sqlite requires that auto-increment generated-id be integer or long type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "PRIMARY KEY AUTOINCREMENT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected generatedIdSqlAtEnd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;
    .locals 2

    invoke-static {}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->$SWITCH_TABLE$com$j256$ormlite$field$SqlType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/j256/ormlite/db/BaseDatabaseType;->getFieldConverter(Lcom/j256/ormlite/field/DataPersister;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->booleanConverter:Lcom/j256/ormlite/field/FieldConverter;

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/j256/ormlite/field/types/BigDecimalStringType;->getSingleton()Lcom/j256/ormlite/field/types/BigDecimalStringType;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public isCreateIfNotExistsSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCreateTableReturnsZero()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVarcharFieldWidthSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
