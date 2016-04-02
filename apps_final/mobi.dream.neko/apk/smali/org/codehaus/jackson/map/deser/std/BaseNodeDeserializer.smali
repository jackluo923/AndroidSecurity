.class abstract Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/codehaus/jackson/JsonNode;",
        ">",
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TN;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected _handleDuplicateField(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "objectNode"    # Lorg/codehaus/jackson/node/ObjectNode;
    .param p3, "oldValue"    # Lorg/codehaus/jackson/JsonNode;
    .param p4, "newValue"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    return-void
.end method

.method protected _reportProblem(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method protected final deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "nodeFactory"    # Lorg/codehaus/jackson/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    sget-object v3, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 311
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 247
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v3

    .line 303
    :goto_0
    return-object v3

    .line 250
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v3

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v3

    goto :goto_0

    .line 258
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    .line 259
    .local v1, "ob":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v3

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 263
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, [B

    if-ne v2, v3, :cond_1

    .line 264
    check-cast v1, [B

    .end local v1    # "ob":Ljava/lang/Object;
    check-cast v1, [B

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v3

    goto :goto_0

    .line 267
    .restart local v1    # "ob":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v3

    goto :goto_0

    .line 271
    .end local v1    # "ob":Ljava/lang/Object;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v3

    goto :goto_0

    .line 275
    :pswitch_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 276
    .local v0, "nt":Lorg/codehaus/jackson/JsonParser$NumberType;
    sget-object v3, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v3, :cond_2

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v3

    goto :goto_0

    .line 280
    :cond_3
    sget-object v3, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, v3, :cond_4

    .line 281
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v3

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v3

    goto :goto_0

    .line 288
    .end local v0    # "nt":Lorg/codehaus/jackson/JsonParser$NumberType;
    :pswitch_7
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 289
    .restart local v0    # "nt":Lorg/codehaus/jackson/JsonParser$NumberType;
    sget-object v3, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v3, :cond_5

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    :cond_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v3

    goto :goto_0

    .line 293
    :cond_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v3

    goto/16 :goto_0

    .line 297
    .end local v0    # "nt":Lorg/codehaus/jackson/JsonParser$NumberType;
    :pswitch_8
    const/4 v3, 0x1

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v3

    goto/16 :goto_0

    .line 300
    :pswitch_9
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v3

    goto/16 :goto_0

    .line 303
    :pswitch_a
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v3

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected final deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "nodeFactory"    # Lorg/codehaus/jackson/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 222
    .local v0, "node":Lorg/codehaus/jackson/node/ArrayNode;
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 230
    :pswitch_3
    return-object v0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 7
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "nodeFactory"    # Lorg/codehaus/jackson/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 188
    .local v1, "node":Lorg/codehaus/jackson/node/ObjectNode;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 189
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_0

    .line 190
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 192
    :cond_0
    :goto_0
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_2

    .line 193
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "fieldName":Ljava/lang/String;
    sget-object v5, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 208
    .local v4, "value":Lorg/codehaus/jackson/JsonNode;
    :goto_1
    invoke-virtual {v1, v0, v4}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 209
    .local v2, "old":Lorg/codehaus/jackson/JsonNode;
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 197
    .end local v2    # "old":Lorg/codehaus/jackson/JsonNode;
    .end local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v4

    .line 198
    .restart local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    goto :goto_1

    .line 200
    .end local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v4

    .line 201
    .restart local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    goto :goto_1

    .line 203
    .end local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v4

    .line 204
    .restart local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    goto :goto_1

    .line 213
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    return-object v1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;, "Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer<TN;>;"
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
