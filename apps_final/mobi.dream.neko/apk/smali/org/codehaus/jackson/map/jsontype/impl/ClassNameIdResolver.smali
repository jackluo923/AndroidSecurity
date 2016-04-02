.class public Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;
.super Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "typeFactory"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "str":Ljava/lang/String;
    const-string v6, "java.util"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 87
    instance-of v6, p1, Ljava/util/EnumSet;

    if-eqz v6, :cond_2

    .line 88
    check-cast p1, Ljava/util/EnumSet;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v1

    .line 90
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumSet;

    invoke-virtual {v6, v7, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/type/CollectionType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 131
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v4

    .line 91
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, Ljava/util/EnumMap;

    if-eqz v6, :cond_3

    .line 92
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .restart local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    .line 95
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljava/util/EnumMap;

    invoke-virtual {v6, v7, v1, v5}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/type/MapType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 96
    goto :goto_0

    .line 97
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "end":Ljava/lang/String;
    const-string v6, ".Arrays$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".Collections$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    const-string v6, "List"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 106
    const-string v4, "java.util.ArrayList"

    goto :goto_0

    .line 109
    .end local v0    # "end":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 117
    invoke-static {p2}, Lorg/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 118
    .local v2, "outer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 123
    iget-object v6, p0, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 124
    .local v3, "staticType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lorg/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    .line 126
    iget-object v6, p0, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getMechanism()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public typeFromId(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 49
    invoke-static {p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->fromCanonical(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 55
    :goto_0
    return-object v2

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    iget-object v4, p0, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 56
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (for id type \'Id.class\'): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
