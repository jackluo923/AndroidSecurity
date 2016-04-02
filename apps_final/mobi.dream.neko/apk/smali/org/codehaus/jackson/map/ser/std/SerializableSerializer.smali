.class public Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "SerializableSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializable;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;->instance:Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializable;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 10
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;->createObjectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    .line 64
    .local v2, "objectNode":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v6, "any"

    .line 65
    .local v6, "schemaType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 66
    .local v3, "objectProperties":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "itemDefinition":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 68
    invoke-static {p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 69
    .local v4, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    const-class v7, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/schema/JsonSerializableSchema;

    .line 71
    .local v5, "schemaInfo":Lorg/codehaus/jackson/schema/JsonSerializableSchema;
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v6

    .line 72
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v3

    .line 75
    :cond_0
    const-string v7, "##irrelevant"

    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 76
    invoke-interface {v5}, Lorg/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v1

    .line 80
    .end local v4    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "schemaInfo":Lorg/codehaus/jackson/schema/JsonSerializableSchema;
    :cond_1
    const-string v7, "type"

    invoke-virtual {v2, v7, v6}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-eqz v3, :cond_2

    .line 83
    :try_start_0
    const-string v8, "properties"

    new-instance v7, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v3, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    if-eqz v1, :cond_3

    .line 90
    :try_start_1
    const-string v8, "items"

    new-instance v7, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v7}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v9, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v7, v1, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v8, v7}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_3
    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;->serialize(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .param p1, "value"    # Lorg/codehaus/jackson/map/JsonSerializable;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializable;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 41
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p4, "x3"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;->serializeWithType(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .param p1, "value"    # Lorg/codehaus/jackson/map/JsonSerializable;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p4, "typeSer"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    .end local p1    # "value":Lorg/codehaus/jackson/map/JsonSerializable;
    invoke-interface {p1, p2, p3, p4}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 57
    :goto_0
    return-void

    .line 55
    .restart local p1    # "value":Lorg/codehaus/jackson/map/JsonSerializable;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/SerializableSerializer;->serialize(Lorg/codehaus/jackson/map/JsonSerializable;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
