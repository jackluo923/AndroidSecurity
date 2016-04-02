.class public Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$1;,
        Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;,
        Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer",
        "<",
        "Lorg/codehaus/jackson/JsonNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/codehaus/jackson/JsonNode;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static getDeserializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/codehaus/jackson/node/ObjectNode;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;->getInstance()Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ObjectDeserializer;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lorg/codehaus/jackson/node/ArrayNode;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;->getInstance()Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$ArrayDeserializer;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->instance:Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;

    goto :goto_0
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;
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
    .line 56
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/std/JsonNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "x2"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
