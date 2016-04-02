.class final Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumKD"
.end annotation


# instance fields
.field protected final _factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _resolver:Lorg/codehaus/jackson/map/util/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .param p2, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "er":Lorg/codehaus/jackson/map/util/EnumResolver;, "Lorg/codehaus/jackson/map/util/EnumResolver<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 233
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lorg/codehaus/jackson/map/util/EnumResolver;

    .line 234
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 235
    return-void
.end method


# virtual methods
.method public _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v2, :cond_1

    .line 242
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :cond_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lorg/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 248
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v1, :cond_0

    .line 249
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_keyClass:Ljava/lang/Class;

    const-string v3, "not one of values for Enum class"

    invoke-virtual {p2, v2, p1, v3}, Lorg/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method
