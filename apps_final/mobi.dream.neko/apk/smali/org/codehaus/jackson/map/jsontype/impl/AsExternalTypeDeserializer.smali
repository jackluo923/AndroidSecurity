.class public Lorg/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;
.super Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.source "AsExternalTypeDeserializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "bt"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "idRes"    # Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p5, "typePropName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p4, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 27
    iput-object p5, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
