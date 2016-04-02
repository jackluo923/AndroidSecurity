.class public final Lcom/millennialmedia/google/gson/Gson;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/millennialmedia/google/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/millennialmedia/google/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x0

    sget-object v1, Lcom/millennialmedia/google/gson/internal/Excluder;->DEFAULT:Lcom/millennialmedia/google/gson/internal/Excluder;

    sget-object v2, Lcom/millennialmedia/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/millennialmedia/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/google/gson/Gson;-><init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/internal/Excluder;",
            "Lcom/millennialmedia/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/millennialmedia/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    new-instance v0, Lcom/millennialmedia/google/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$1;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->deserializationContext:Lcom/millennialmedia/google/gson/JsonDeserializationContext;

    new-instance v0, Lcom/millennialmedia/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$2;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->serializationContext:Lcom/millennialmedia/google/gson/JsonSerializationContext;

    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    iput-boolean p4, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    iput-boolean p6, p0, Lcom/millennialmedia/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    iput-boolean p8, p0, Lcom/millennialmedia/google/gson/Gson;->prettyPrinting:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/millennialmedia/google/gson/Gson;->longAdapter(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/millennialmedia/google/gson/Gson;->doubleAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/millennialmedia/google/gson/Gson;->floatAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/millennialmedia/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Lcom/millennialmedia/google/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/google/gson/Gson;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/millennialmedia/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/millennialmedia/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/millennialmedia/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$3;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/millennialmedia/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$4;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/millennialmedia/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/Gson$5;-><init>(Lcom/millennialmedia/google/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method


# virtual methods
.method public final fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/millennialmedia/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    invoke-virtual {p1, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V

    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/millennialmedia/google/gson/stream/JsonReader;)V

    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v3}, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    invoke-interface {v0, p0, p1}, Lcom/millennialmedia/google/gson/TypeAdapterFactory;->create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/millennialmedia/google/gson/TypeAdapter;)V

    iget-object v3, p0, Lcom/millennialmedia/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegateAdapter(Lcom/millennialmedia/google/gson/TypeAdapterFactory;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    if-nez v1, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/millennialmedia/google/gson/TypeAdapterFactory;->create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toJson(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    .locals 5

    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/internal/Streams;->write(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p2, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p2, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/google/gson/Gson;->toJson(Lcom/millennialmedia/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    .locals 5

    invoke-static {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    iget-boolean v3, p0, Lcom/millennialmedia/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    iget-boolean v4, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v4, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v3}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2

    :try_start_0
    invoke-static {p3}, Lcom/millennialmedia/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/millennialmedia/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/Gson;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
