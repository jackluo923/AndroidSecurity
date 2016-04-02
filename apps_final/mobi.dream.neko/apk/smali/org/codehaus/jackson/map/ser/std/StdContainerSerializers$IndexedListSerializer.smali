.class public Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;
.super Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;
.source "StdContainerSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedListSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase",
        "<",
        "Ljava/util/List",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 7
    .param p1, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p5, "valueSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const-class v1, Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/map/ser/std/AsArraySerializerBase;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 79
    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 6
    .param p1, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-boolean v2, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_staticTyping:Z

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
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
    .line 71
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 8
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v7, :cond_1

    .line 91
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {p0, p1, p2, p3, v7}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeContentsUsing(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    if-eqz v7, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->serializeTypedContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 99
    .local v4, "len":I
    if-eqz v4, :cond_0

    .line 102
    const/4 v3, 0x0

    .line 104
    .local v3, "i":I
    :try_start_0
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 105
    .local v6, "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_1
    if-ge v3, v4, :cond_0

    .line 106
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, "elem":Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 108
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 105
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 112
    .local v5, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v5, :cond_4

    .line 114
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v7}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 115
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v7, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 120
    :goto_3
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 122
    :cond_4
    invoke-virtual {v5, v2, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v5    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v1, p1, v3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v5    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v6    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_5
    :try_start_1
    invoke-virtual {p0, v6, v0, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_3
.end method

.method public serializeContentsUsing(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 5
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p4, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 136
    .local v3, "len":I
    if-nez v3, :cond_1

    .line 155
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 140
    .local v4, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "elem":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 144
    :try_start_0
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_2
    if-nez v4, :cond_3

    .line 146
    invoke-virtual {p4, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v0, p1, v2}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_1

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public serializeTypedContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 9
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 161
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v3, 0x0

    .line 166
    .local v3, "i":I
    :try_start_0
    iget-object v7, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_valueTypeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 167
    .local v7, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 168
    .local v6, "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :goto_1
    if-ge v3, v4, :cond_0

    .line 169
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "elem":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 171
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 168
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 175
    .local v5, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v5, :cond_3

    .line 177
    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 178
    iget-object v8, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p3, v8, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v8

    invoke-virtual {p0, v6, v8, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 183
    :goto_3
    iget-object v6, p0, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 185
    :cond_3
    invoke-virtual {v5, v2, p2, p3, v7}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v5    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .end local v6    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .end local v7    # "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v1, p1, v3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "elem":Ljava/lang/Object;
    .restart local v5    # "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v6    # "serializers":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .restart local v7    # "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    :cond_4
    :try_start_1
    invoke-virtual {p0, v6, v0, p3}, Lorg/codehaus/jackson/map/ser/std/StdContainerSerializers$IndexedListSerializer;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_3
.end method
