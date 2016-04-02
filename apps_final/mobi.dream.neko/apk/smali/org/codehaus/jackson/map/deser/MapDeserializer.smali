.class public Lorg/codehaus/jackson/map/deser/MapDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/MapDeserializer;
.source "MapDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/MapDeserializer;)V
    .locals 0
    .param p1, "src"    # Lorg/codehaus/jackson/map/deser/MapDeserializer;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/std/MapDeserializer;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .param p1, "mapType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "keyDeser"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    .local p2, "defCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p4, "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .param p1, "mapType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "valueInstantiator"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .param p3, "keyDeser"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lorg/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V

    .line 33
    return-void
.end method
