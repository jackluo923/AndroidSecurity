.class public Lorg/codehaus/jackson/map/ObjectMapper;
.super Lorg/codehaus/jackson/ObjectCodec;
.source "ObjectMapper.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ObjectMapper$2;,
        Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;,
        Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ANNOTATION_INTROSPECTOR:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected static final DEFAULT_INTROSPECTOR:Lorg/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

.field protected static final STD_VISIBILITY_CHECKER:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected _deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

.field protected _deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

.field protected _injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

.field protected final _jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected _serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

.field protected _serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

.field protected _subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

.field protected _typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    .line 188
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lorg/codehaus/jackson/map/ClassIntrospector;

    .line 191
    new-instance v0, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 196
    invoke-static {}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;->defaultInstance()Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonFactory;)V
    .locals 1
    .param p1, "jf"    # Lorg/codehaus/jackson/JsonFactory;

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 6
    .param p1, "jf"    # Lorg/codehaus/jackson/JsonFactory;
    .param p2, "sp"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p3, "dp"    # Lorg/codehaus/jackson/map/DeserializerProvider;

    .prologue
    const/4 v4, 0x0

    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 8
    .param p1, "jf"    # Lorg/codehaus/jackson/JsonFactory;
    .param p2, "sp"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p3, "dp"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "sconfig"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p5, "dconfig"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-direct {p0}, Lorg/codehaus/jackson/ObjectCodec;-><init>()V

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    if-nez p1, :cond_3

    .line 382
    new-instance v0, Lorg/codehaus/jackson/map/MappingJsonFactory;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/MappingJsonFactory;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 390
    :cond_0
    :goto_0
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 391
    if-eqz p4, :cond_4

    .end local p4    # "sconfig":Lorg/codehaus/jackson/map/SerializationConfig;
    :goto_1
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 394
    if-eqz p5, :cond_5

    .end local p5    # "dconfig":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_2
    iput-object p5, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 397
    if-nez p2, :cond_1

    new-instance p2, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;

    .end local p2    # "sp":Lorg/codehaus/jackson/map/SerializerProvider;
    invoke-direct {p2}, Lorg/codehaus/jackson/map/ser/StdSerializerProvider;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 398
    if-nez p3, :cond_2

    new-instance p3, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;

    .end local p3    # "dp":Lorg/codehaus/jackson/map/DeserializerProvider;
    invoke-direct {p3}, Lorg/codehaus/jackson/map/deser/StdDeserializerProvider;-><init>()V

    :cond_2
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 401
    sget-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 402
    return-void

    .line 384
    .restart local p2    # "sp":Lorg/codehaus/jackson/map/SerializerProvider;
    .restart local p3    # "dp":Lorg/codehaus/jackson/map/DeserializerProvider;
    .restart local p4    # "sconfig":Lorg/codehaus/jackson/map/SerializationConfig;
    .restart local p5    # "dconfig":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_3
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 385
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonFactory;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonFactory;

    goto :goto_0

    .line 391
    :cond_4
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lorg/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lorg/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    move-object p4, v0

    goto :goto_1

    .line 394
    .end local p4    # "sconfig":Lorg/codehaus/jackson/map/SerializationConfig;
    :cond_5
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_INTROSPECTOR:Lorg/codehaus/jackson/map/ClassIntrospector;

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    sget-object v3, Lorg/codehaus/jackson/map/ObjectMapper;->STD_VISIBILITY_CHECKER:Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    move-object p5, v0

    goto :goto_2
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory;)V
    .locals 1
    .param p1, "sf"    # Lorg/codehaus/jackson/map/SerializerFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/DeserializerProvider;)V

    .line 352
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->setSerializerFactory(Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 353
    return-void
.end method

.method private final _configAndWriteCloseable(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 5
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2623
    move-object v2, p2

    check-cast v2, Ljava/io/Closeable;

    .line 2625
    .local v2, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v3, p3, p1, p2, v4}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 2626
    move-object v0, p1

    .line 2627
    .local v0, "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    const/4 p1, 0x0

    .line 2628
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 2629
    move-object v1, v2

    .line 2630
    .local v1, "tmpToClose":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 2631
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2636
    if-eqz p1, :cond_0

    .line 2638
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2641
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2643
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2647
    :cond_1
    :goto_1
    return-void

    .line 2636
    .end local v0    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_2

    .line 2638
    :try_start_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2641
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 2643
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2644
    :cond_3
    :goto_3
    throw v3

    .line 2639
    .restart local v0    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .restart local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2644
    :catch_1
    move-exception v3

    goto :goto_1

    .line 2639
    .end local v0    # "tmpJgen":Lorg/codehaus/jackson/JsonGenerator;
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 2644
    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method private final _writeCloseableValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 4
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2656
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    .line 2658
    .local v1, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, p3, p1, p2, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 2659
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2660
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 2662
    :cond_0
    move-object v0, v1

    .line 2663
    .local v0, "tmpToClose":Ljava/io/Closeable;
    const/4 v1, 0x0

    .line 2664
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2666
    if-eqz v1, :cond_1

    .line 2668
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2672
    :cond_1
    :goto_0
    return-void

    .line 2666
    .end local v0    # "tmpToClose":Ljava/io/Closeable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 2668
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2669
    :cond_2
    :goto_1
    throw v2

    .restart local v0    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "tmpToClose":Ljava/io/Closeable;
    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected final _configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 4
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 2565
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2566
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    .line 2569
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p2, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 2570
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteCloseable(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 2588
    :cond_1
    :goto_0
    return-void

    .line 2573
    :cond_2
    const/4 v1, 0x0

    .line 2575
    .local v1, "closed":Z
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, v0, p1, p2, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 2576
    const/4 v1, 0x1

    .line 2577
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    if-nez v1, :cond_1

    .line 2584
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2585
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2582
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 2584
    :try_start_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2585
    :cond_3
    :goto_1
    throw v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected final _configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2593
    .local p3, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 2594
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2595
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    .line 2598
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p2, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 2599
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteCloseable(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 2614
    :cond_1
    :goto_0
    return-void

    .line 2602
    :cond_2
    const/4 v1, 0x0

    .line 2604
    .local v1, "closed":Z
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v2, v0, p1, p2, v3}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 2605
    const/4 v1, 0x1

    .line 2606
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    if-nez v1, :cond_1

    .line 2610
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2611
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2608
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 2610
    :try_start_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2611
    :cond_3
    :goto_1
    throw v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected _convert(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 6
    .param p1, "fromValue"    # Ljava/lang/Object;
    .param p2, "toValueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2489
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 2500
    :goto_0
    return-object v3

    .line 2493
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 2495
    .local v0, "buf":Lorg/codehaus/jackson/util/TokenBuffer;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2497
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 2498
    .local v2, "jp":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {p0, v2, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v3

    .line 2499
    .local v3, "result":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2501
    .end local v2    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 2502
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected _createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 2839
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/codehaus/jackson/map/deser/StdDeserializationContext;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method protected _defaultPrettyPrinter()Lorg/codehaus/jackson/PrettyPrinter;
    .locals 1

    .prologue
    .line 2553
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    return-object v0
.end method

.method protected _findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 5
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2824
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 2825
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2834
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 2829
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lorg/codehaus/jackson/map/DeserializerProvider;->findTypedValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 2830
    if-nez v0, :cond_1

    .line 2831
    new-instance v2, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find a deserializer for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2833
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 2834
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method protected _initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2768
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v0, :cond_0

    .line 2770
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2771
    if-nez v0, :cond_0

    .line 2775
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "No content to map to Object due to end of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2778
    :cond_0
    return-object v0
.end method

.method protected _readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2718
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->_initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 2719
    .local v4, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 2722
    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {p0, v5, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    .line 2736
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->clearCurrentToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2741
    :goto_1
    return-object v3

    .line 2723
    :cond_0
    :try_start_2
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_1

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_2

    .line 2724
    :cond_1
    const/4 v3, 0x0

    .local v3, "result":Ljava/lang/Object;
    goto :goto_0

    .line 2726
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 2727
    .local v0, "cfg":Lorg/codehaus/jackson/map/DeserializationConfig;
    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v1

    .line 2728
    .local v1, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 2729
    .local v2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    sget-object v5, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2730
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_unwrapAndDeserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2732
    .end local v3    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2, p1, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2739
    .end local v0    # "cfg":Lorg/codehaus/jackson/map/DeserializationConfig;
    .end local v1    # "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    .end local v2    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "t":Lorg/codehaus/jackson/JsonToken;
    :catchall_0
    move-exception v5

    .line 2740
    :try_start_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2741
    :goto_2
    throw v5

    .restart local v4    # "t":Lorg/codehaus/jackson/JsonToken;
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v4    # "t":Lorg/codehaus/jackson/JsonToken;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method protected _readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 5
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p3, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2691
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_initForReading(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 2692
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    .line 2694
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 2708
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 2709
    return-object v2

    .line 2695
    :cond_0
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    .line 2696
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/Object;
    goto :goto_0

    .line 2698
    .end local v2    # "result":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v0

    .line 2699
    .local v0, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 2701
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2702
    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_unwrapAndDeserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2704
    .end local v2    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v1, p2, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected _unwrapAndDeserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "rootType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2785
    .local p4, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/codehaus/jackson/map/DeserializerProvider;->findExpectedRootName(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v2

    .line 2786
    .local v2, "rootName":Lorg/codehaus/jackson/io/SerializedString;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    .line 2787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 2790
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_1

    .line 2791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 2794
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 2795
    .local v0, "actualName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not match expected (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 2800
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 2802
    invoke-virtual {p4, p1, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 2804
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_3

    .line 2805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'), but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 2808
    :cond_3
    return-object v1
.end method

.method public canDeserialize(Lorg/codehaus/jackson/type/JavaType;)Z
    .locals 2
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 1801
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/map/DeserializerProvider;->hasValueDeserializerFor(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1785
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerFactory;)Z

    move-result v0

    return v0
.end method

.method public configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 1150
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 1134
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    .line 1118
    return-object p0
.end method

.method public configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1103
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 1104
    return-object p0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 989
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2468
    .local p2, "toValueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .param p2, "toValueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2482
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .param p2, "toValueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2475
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_convert(Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    iget v1, v1, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->passSerializationFeatures(I)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createArrayNode()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->createArrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createArrayNode()Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createObjectNode()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public defaultPrettyPrintingWriter()Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2295
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->writerWithDefaultPrettyPrinter()Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 1171
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 1172
    return-object p0
.end method

.method public varargs disable([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 1194
    return-object p0
.end method

.method public disableDefaultTyping()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->with([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 1161
    return-object p0
.end method

.method public varargs enable([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 1182
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->with([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 1183
    return-object p0
.end method

.method public enableDefaultTyping()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 849
    sget-object v0, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->enableDefaultTyping(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "dti"    # Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    .prologue
    .line 859
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_ARRAY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->enableDefaultTyping(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 3
    .param p1, "applicability"    # Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    .param p2, "includeAs"    # Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    .prologue
    .line 872
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V

    .line 874
    .local v0, "typer":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 875
    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 876
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    return-object v1
.end method

.method public enableDefaultTypingAsProperty(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 3
    .param p1, "applicability"    # Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 891
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;)V

    .line 893
    .local v0, "typer":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 894
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 895
    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 896
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setDefaultTyping(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    return-object v1
.end method

.method public filteredWriter(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2303
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writer(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lorg/codehaus/jackson/schema/JsonSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2522
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->generateJsonSchema(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/schema/JsonSchema;

    move-result-object v0

    return-object v0
.end method

.method public generateJsonSchema(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/schema/JsonSchema;
    .locals 2
    .param p2, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lorg/codehaus/jackson/schema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2536
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->generateJsonSchema(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/schema/JsonSchema;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public getJsonFactory()Lorg/codehaus/jackson/JsonFactory;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    return-object v0
.end method

.method public getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    return-object v0
.end method

.method public getSerializerProvider()Lorg/codehaus/jackson/map/SerializerProvider;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    return-object v0
.end method

.method public getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    if-nez v0, :cond_0

    .line 785
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 787
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public getVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 1242
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 1230
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 1218
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public prettyPrintingWriter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .param p1, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2287
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writer(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public readTree(Ljava/io/File;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1575
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1508
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1526
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1527
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1542
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1543
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/net/URL;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "source"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1590
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1591
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    .line 1337
    .local v0, "cfg":Lorg/codehaus/jackson/map/DeserializationConfig;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 1338
    .local v2, "t":Lorg/codehaus/jackson/JsonToken;
    if-nez v2, :cond_1

    .line 1339
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    .line 1340
    if-nez v2, :cond_1

    .line 1341
    const/4 v1, 0x0

    .line 1345
    :cond_0
    :goto_0
    return-object v1

    .line 1344
    :cond_1
    sget-object v3, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v0, p1, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/JsonNode;

    .line 1345
    .local v1, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v1

    goto :goto_0
.end method

.method public readTree(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1488
    sget-object v1, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, p2, p1, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1489
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree([B)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1558
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/ObjectMapper;->JSON_NODE_TYPE:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 1559
    .local v0, "n":Lorg/codehaus/jackson/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->instance:Lorg/codehaus/jackson/node/NullNode;

    .end local v0    # "n":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1817
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1831
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/File;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1824
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/File;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1909
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/Reader;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1886
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/Reader;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1900
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/Reader;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1863
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1877
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1870
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1840
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/net/URL;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/net/URL;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1847
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/net/URL;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "root"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1999
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 2
    .param p1, "root"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2031
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 3
    .param p1, "root"    # Lorg/codehaus/jackson/JsonNode;
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2015
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1286
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1422
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1467
    invoke-virtual {p0, p3, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1301
    .local p2, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;Lorg/codehaus/jackson/map/DeserializationConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1445
    .local p2, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_readValue(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1945
    .local p4, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1981
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1963
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([BII)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1935
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1973
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "valueTypeRef"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/codehaus/jackson/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1955
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser([B)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->_readMapAndClose(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValues(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Lorg/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/type/TypeReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1376
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 8
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "valueType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1359
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v7

    .line 1360
    .local v7, "config":Lorg/codehaus/jackson/map/DeserializationConfig;
    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/map/ObjectMapper;->_createDeserializationContext(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;

    move-result-object v3

    .line 1361
    .local v3, "ctxt":Lorg/codehaus/jackson/map/DeserializationContext;
    invoke-virtual {p0, v7, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_findRootDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    .line 1363
    .local v4, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/MappingIterator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/MappingIterator;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/MappingIterator;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1388
    .local p2, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValues(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public reader()Lorg/codehaus/jackson/map/ObjectReader;
    .locals 2

    .prologue
    .line 2329
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectReader;->withInjectableValues(Lorg/codehaus/jackson/map/InjectableValues;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->reader(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    const/4 v3, 0x0

    .line 2407
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;Lorg/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lorg/codehaus/jackson/map/InjectableValues;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "injectableValues"    # Lorg/codehaus/jackson/map/InjectableValues;

    .prologue
    const/4 v3, 0x0

    .line 2420
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;Lorg/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 2394
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;)V

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectReader;->withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v4, 0x0

    .line 2360
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;Lorg/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method public reader(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 2383
    .local p1, "type":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->reader(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerForUpdating(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 7
    .param p1, "valueToUpdate"    # Ljava/lang/Object;

    .prologue
    .line 2347
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 2348
    .local v3, "t":Lorg/codehaus/jackson/type/JavaType;
    new-instance v0, Lorg/codehaus/jackson/map/ObjectReader;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ObjectReader;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Lorg/codehaus/jackson/FormatSchema;Lorg/codehaus/jackson/map/InjectableValues;)V

    return-object v0
.end method

.method public registerModule(Lorg/codehaus/jackson/map/Module;)V
    .locals 5
    .param p1, "module"    # Lorg/codehaus/jackson/map/Module;

    .prologue
    .line 442
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/Module;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 444
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Module without defined name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/Module;->version()Lorg/codehaus/jackson/Version;

    move-result-object v2

    .line 447
    .local v2, "version":Lorg/codehaus/jackson/Version;
    if-nez v2, :cond_1

    .line 448
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Module without defined version"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_1
    move-object v0, p0

    .line 454
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    new-instance v3, Lorg/codehaus/jackson/map/ObjectMapper$1;

    invoke-direct {v3, p0, v0}, Lorg/codehaus/jackson/map/ObjectMapper$1;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/ObjectMapper;)V

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/Module;->setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V

    .line 562
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->registerSubtypes([Ljava/lang/Class;)V

    .line 935
    return-void
.end method

.method public varargs registerSubtypes([Lorg/codehaus/jackson/map/jsontype/NamedType;)V
    .locals 1
    .param p1, "types"    # [Lorg/codehaus/jackson/map/jsontype/NamedType;

    .prologue
    .line 948
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->registerSubtypes([Lorg/codehaus/jackson/map/jsontype/NamedType;)V

    .line 949
    return-void
.end method

.method public schemaBasedReader(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2443
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->reader(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public schemaBasedWriter(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2311
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writer(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 806
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 807
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 808
    return-object p0
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 1063
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 1064
    return-void
.end method

.method public setDefaultTyping(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "typer":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 920
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 921
    return-object p0
.end method

.method public setDeserializationConfig(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 663
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 664
    return-object p0
.end method

.method public setDeserializerProvider(Lorg/codehaus/jackson/map/DeserializerProvider;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "p"    # Lorg/codehaus/jackson/map/DeserializerProvider;

    .prologue
    .line 703
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 704
    return-object p0
.end method

.method public setFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)V
    .locals 1
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 1030
    return-void
.end method

.method public setHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 1
    .param p1, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 1075
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 1076
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 1077
    return-void
.end method

.method public setInjectableValues(Lorg/codehaus/jackson/map/InjectableValues;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "injectableValues"    # Lorg/codehaus/jackson/map/InjectableValues;

    .prologue
    .line 1083
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_injectableValues:Lorg/codehaus/jackson/map/InjectableValues;

    .line 1084
    return-object p0
.end method

.method public setNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 1007
    return-object p0
.end method

.method public setPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "s"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 817
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 818
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 819
    return-object p0
.end method

.method public setSerializationConfig(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 623
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 624
    return-object p0
.end method

.method public setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "incl"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 832
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 833
    return-object p0
.end method

.method public setSerializerFactory(Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializerFactory;

    .prologue
    .line 678
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 679
    return-object p0
.end method

.method public setSerializerProvider(Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "p"    # Lorg/codehaus/jackson/map/SerializerProvider;

    .prologue
    .line 687
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 688
    return-object p0
.end method

.method public setSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 0
    .param p1, "r"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 796
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 797
    return-void
.end method

.method public setTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 975
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 976
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 977
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 978
    return-object p0
.end method

.method public setVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1
    .param p1, "forMethod"    # Lorg/codehaus/jackson/annotate/JsonMethod;
    .param p2, "visibility"    # Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 773
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 774
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 775
    return-object p0
.end method

.method public setVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 742
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 743
    return-void
.end method

.method public treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;

    .prologue
    .line 1717
    new-instance v0, Lorg/codehaus/jackson/node/TreeTraversingParser;

    invoke-direct {v0, p1, p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method public treeToValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1733
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->treeAsTokens(Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public typedWriter(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2255
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writerWithType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public typedWriter(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .param p1, "rootType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2263
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writerWithType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public typedWriter(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2271
    .local p1, "rootType":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writerWithType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public updatingReader(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ObjectReader;
    .locals 1
    .param p1, "valueToUpdate"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2435
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public valueToTree(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonNode;
    .locals 6
    .param p1, "fromValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/JsonNode;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1753
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 1764
    :goto_0
    return-object v3

    .line 1754
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1757
    .local v0, "buf":Lorg/codehaus/jackson/util/TokenBuffer;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 1758
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 1759
    .local v2, "jp":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 1760
    .local v3, "result":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1761
    .end local v2    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v3    # "result":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v1

    .line 1762
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public viewWriter(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2279
    .local p1, "serializationView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writerWithView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withModule(Lorg/codehaus/jackson/map/Module;)Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 0
    .param p1, "module"    # Lorg/codehaus/jackson/map/Module;

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 581
    return-object p0
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V
    .locals 3
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1649
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 1650
    .local v0, "config":Lorg/codehaus/jackson/map/SerializationConfig;
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v0, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 1651
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1652
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 1654
    :cond_0
    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .param p3, "cfg"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1666
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 1667
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 1670
    :cond_0
    return-void
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2048
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2049
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2066
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2081
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2082
    return-void
.end method

.method public writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 3
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 1610
    .local v0, "config":Lorg/codehaus/jackson/map/SerializationConfig;
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1611
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->_writeCloseableValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, v0, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 1614
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1615
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 2
    .param p1, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1631
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 1632
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ObjectMapper;->_writeCloseableValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 1635
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2113
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 2114
    .local v0, "bb":Lorg/codehaus/jackson/util/ByteArrayBuilder;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v3, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v2, v0, v3}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2115
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    .line 2116
    .local v1, "result":[B
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->release()V

    .line 2117
    return-object v1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2096
    new-instance v0, Lorg/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 2097
    .local v0, "sw":Lorg/codehaus/jackson/io/SegmentedStringWriter;
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 2098
    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writer()Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .prologue
    .line 2134
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 2145
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writer(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 2241
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/FormatSchema;)V

    return-object v0
.end method

.method public writer(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 3
    .param p1, "pp"    # Lorg/codehaus/jackson/PrettyPrinter;

    .prologue
    .line 2203
    if-nez p1, :cond_0

    .line 2204
    sget-object p1, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    .line 2206
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writer(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 2227
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public writerWithDefaultPrettyPrinter()Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 4

    .prologue
    .line 2216
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->_defaultPrettyPrinter()Lorg/codehaus/jackson/PrettyPrinter;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writerWithType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2168
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2169
    .local v0, "t":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    new-instance v2, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V

    return-object v2

    .line 2168
    .end local v0    # "t":Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerWithType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 3
    .param p1, "rootType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 2180
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V

    return-object v0
.end method

.method public writerWithType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .local p1, "rootType":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    const/4 v1, 0x0

    .line 2191
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2192
    .local v0, "t":Lorg/codehaus/jackson/type/JavaType;
    :goto_0
    new-instance v2, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V

    return-object v2

    .line 2191
    .end local v0    # "t":Lorg/codehaus/jackson/type/JavaType;
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerWithView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 2156
    .local p1, "serializationView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method
