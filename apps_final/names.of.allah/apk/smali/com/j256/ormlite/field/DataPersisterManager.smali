.class public Lcom/j256/ormlite/field/DataPersisterManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

.field private static final builtInMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredPersisters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClasses()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    sget-object v9, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClassNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClassNames()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    sget-object v9, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    return-void
.end method

.method public static lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    .locals 7

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/DataPersister;->isValidForField(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->getAssociatedClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->builtInMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->DEFAULT_ENUM_PERSISTER:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs registerDataPersisters([Lcom/j256/ormlite/field/DataPersister;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->registeredPersisters:Ljava/util/List;

    return-void
.end method
