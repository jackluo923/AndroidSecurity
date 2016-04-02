.class public final Lcom/millennialmedia/google/gson/GsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

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

.field private fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/millennialmedia/google/gson/internal/Excluder;->DEFAULT:Lcom/millennialmedia/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    sget-object v0, Lcom/millennialmedia/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    sget-object v0, Lcom/millennialmedia/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/millennialmedia/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    iput v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    iput v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/millennialmedia/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final addDeserializationExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final addSerializationExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final create()Lcom/millennialmedia/google/gson/Gson;
    .locals 12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/millennialmedia/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/google/gson/Gson;-><init>(Lcom/millennialmedia/google/gson/internal/Excluder;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/millennialmedia/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public final disableHtmlEscaping()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public final disableInnerClassSerialization()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final enableComplexMapKeySerialization()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public final varargs excludeFieldsWithModifiers([I)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/Excluder;->withModifiers([I)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final excludeFieldsWithoutExposeAnnotation()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final generateNonExecutableJson()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public final registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 2

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/InstanceCreator;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcom/millennialmedia/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/millennialmedia/google/gson/InstanceCreator;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    check-cast p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {v1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/millennialmedia/google/gson/reflect/TypeToken;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerTypeAdapterFactory(Lcom/millennialmedia/google/gson/TypeAdapterFactory;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/google/gson/GsonBuilder;"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/millennialmedia/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    instance-of v0, p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/millennialmedia/google/gson/TypeAdapter;)Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final serializeNulls()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public final serializeSpecialFloatingPointValues()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public final setDateFormat(I)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(II)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(Ljava/lang/String;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs setExclusionStrategies([Lcom/millennialmedia/google/gson/ExclusionStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 5

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v3, v2, v4, v4}, Lcom/millennialmedia/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/millennialmedia/google/gson/ExclusionStrategy;ZZ)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setFieldNamingPolicy(Lcom/millennialmedia/google/gson/FieldNamingPolicy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public final setFieldNamingStrategy(Lcom/millennialmedia/google/gson/FieldNamingStrategy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public final setLongSerializationPolicy(Lcom/millennialmedia/google/gson/LongSerializationPolicy;)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/millennialmedia/google/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public final setPrettyPrinting()Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public final setVersion(D)Lcom/millennialmedia/google/gson/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/internal/Excluder;->withVersion(D)Lcom/millennialmedia/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/google/gson/GsonBuilder;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    return-object p0
.end method
