.class public abstract Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "StaticListSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;, "Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract contentSchema()Lorg/codehaus/jackson/JsonNode;
.end method

.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 34
    .local p0, "this":Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;, "Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase<TT;>;"
    const-string v1, "array"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 35
    .local v0, "o":Lorg/codehaus/jackson/node/ObjectNode;
    const-string v1, "items"

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;->contentSchema()Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 36
    return-object v0
.end method
