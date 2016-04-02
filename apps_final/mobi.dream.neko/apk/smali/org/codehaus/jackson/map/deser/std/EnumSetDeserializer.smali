.class public Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "EnumSetDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<",
        "Ljava/util/EnumSet",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field protected final _enumDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    const-class v0, Ljava/util/EnumSet;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 44
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V
    .locals 2
    .param p1, "enumRes"    # Lorg/codehaus/jackson/map/util/EnumResolver;

    .prologue
    .line 36
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-direct {v1, p1}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 38
    return-void
.end method

.method private constructSet()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

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
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/EnumSet",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    const-class v3, Ljava/util/EnumSet;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 57
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->constructSet()Ljava/util/EnumSet;

    move-result-object v0

    .line 60
    .local v0, "result":Ljava/util/EnumSet;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .local v1, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v3, :cond_2

    .line 66
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v3, :cond_1

    .line 67
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3

    .line 69
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 70
    .local v2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v2    # "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_2
    return-object v0
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
    .line 80
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
