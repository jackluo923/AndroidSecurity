.class public abstract Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdScalarDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;, "Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "valueType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 24
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;, "Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 25
    return-void
.end method


# virtual methods
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
    .line 32
    .local p0, "this":Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer;, "Lorg/codehaus/jackson/map/deser/std/StdScalarDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromScalar(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
