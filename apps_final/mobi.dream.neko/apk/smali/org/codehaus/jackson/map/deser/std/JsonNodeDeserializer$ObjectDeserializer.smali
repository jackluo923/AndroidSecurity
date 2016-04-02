.class final Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObjectDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer",
        "<",
        "Lorg/codehaus/jackson/node/ObjectNode;",
        ">;"
    }
.end annotation


# static fields
.field protected static final _instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public static getInstance()Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->_instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 89
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-class v0, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
