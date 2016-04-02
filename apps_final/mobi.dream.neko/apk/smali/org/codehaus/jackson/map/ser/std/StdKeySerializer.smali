.class public Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "StdKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final instace:Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;->instace:Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializer;->createSchemaNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 30
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 35
    :goto_0
    return-void

    .line 33
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0
.end method
