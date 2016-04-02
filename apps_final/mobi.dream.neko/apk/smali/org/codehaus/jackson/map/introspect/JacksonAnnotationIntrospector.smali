.class public Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _constructNoTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 811
    invoke-static {}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 10
    .param p2, "ann"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v7, 0x0

    .line 744
    const-class v8, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    invoke-virtual {p2, v8}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    .line 745
    .local v5, "info":Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    const-class v8, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    invoke-virtual {p2, v8}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    .line 746
    .local v6, "resAnn":Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;
    if-eqz v6, :cond_4

    .line 750
    if-nez v5, :cond_1

    move-object v0, v7

    .line 790
    :cond_0
    :goto_0
    return-object v0

    .line 757
    :cond_1
    invoke-interface {v6}, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, p2, v8}, Lorg/codehaus/jackson/map/MapperConfig;->typeResolverBuilderInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 769
    .local v0, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    :goto_1
    const-class v8, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    invoke-virtual {p2, v8}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    .line 770
    .local v3, "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    if-nez v3, :cond_7

    move-object v2, v7

    .line 772
    .local v2, "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    :goto_2
    if-eqz v2, :cond_2

    .line 773
    invoke-interface {v2, p3}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->init(Lorg/codehaus/jackson/type/JavaType;)V

    .line 775
    :cond_2
    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 780
    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->include()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v4

    .line 781
    .local v4, "inclusion":Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;
    sget-object v7, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    if-ne v4, v7, :cond_3

    instance-of v7, p2, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    if-eqz v7, :cond_3

    .line 782
    sget-object v4, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 784
    :cond_3
    invoke-interface {v0, v4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 785
    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 786
    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object v1

    .line 787
    .local v1, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lorg/codehaus/jackson/annotate/JsonTypeInfo$None;

    if-eq v1, v7, :cond_0

    .line 788
    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0

    .line 759
    .end local v0    # "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    .end local v1    # "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "idRes":Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;
    .end local v3    # "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    .end local v4    # "inclusion":Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;
    :cond_4
    if-nez v5, :cond_5

    move-object v0, v7

    .line 760
    goto :goto_0

    .line 763
    :cond_5
    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v8

    sget-object v9, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v8, v9, :cond_6

    .line 764
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    .restart local v0    # "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    goto :goto_1

    .line 770
    .restart local v3    # "idResInfo":Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;
    :cond_7
    invoke-interface {v3}, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lorg/codehaus/jackson/map/MapperConfig;->typeIdResolverInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v2

    goto :goto_2
.end method

.method protected _isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 731
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnore;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnore;

    .line 732
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonIgnore;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnore;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const-class v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    .line 126
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    if-nez v0, :cond_0

    .end local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :goto_0
    return-object p2

    .restart local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :cond_0
    invoke-interface {p2, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->with(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0
.end method

.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 69
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    .line 70
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonCachable;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonCachable;->value()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 531
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 532
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 534
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 538
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findContentSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 329
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 330
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 332
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 336
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 685
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 686
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 687
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    .line 691
    :cond_0
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 698
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseContentType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 582
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 583
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    .line 585
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 592
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseKeyType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 564
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 565
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    .line 567
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 574
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 546
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 547
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v1

    .line 549
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 556
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 504
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 505
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v1

    .line 507
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 512
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 3
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 104
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonFilter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonFilter;

    .line 105
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonFilter;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonFilter;->value()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 442
    const-class v2, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 443
    .local v1, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v1, :cond_0

    .line 444
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    .line 460
    :goto_0
    return-object v2

    .line 449
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonGetter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonGetter;

    .line 450
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonGetter;
    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonGetter;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 457
    :cond_1
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 460
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 91
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 92
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 4
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 167
    const-class v3, Lorg/codehaus/jackson/map/annotate/JacksonInject;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/annotate/JacksonInject;

    .line 168
    .local v1, "ann":Lorg/codehaus/jackson/map/annotate/JacksonInject;
    if-nez v1, :cond_1

    .line 169
    const/4 v2, 0x0

    .line 186
    :cond_0
    :goto_0
    return-object v2

    .line 174
    :cond_1
    invoke-interface {v1}, Lorg/codehaus/jackson/map/annotate/JacksonInject;->value()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 177
    instance-of v3, p1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-nez v3, :cond_2

    .line 178
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 180
    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 181
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 519
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 521
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    const-class v2, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 525
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findKeySerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 316
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 317
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 319
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v2, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 323
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 85
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 86
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 3
    .param p2, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call method with a container type (got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 710
    if-eqz p1, :cond_0

    .line 711
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 712
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 713
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 720
    .end local v0    # "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 3
    .param p1, "member"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 139
    const-class v2, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    .line 140
    .local v0, "ref1":Lorg/codehaus/jackson/annotate/JsonManagedReference;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 143
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonBackReference;

    .line 144
    .local v1, "ref2":Lorg/codehaus/jackson/annotate/JsonBackReference;
    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 79
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonRootName;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonRootName;

    .line 80
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonRootName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonRootName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 480
    const-class v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 481
    .local v0, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    .line 489
    :goto_0
    return-object v1

    .line 486
    :cond_0
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 489
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 387
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 388
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v1

    .line 390
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 394
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 4
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 343
    const-class v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 344
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->include()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v3

    .line 355
    :goto_0
    return-object v3

    .line 350
    :cond_0
    const-class v3, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;

    .line 351
    .local v1, "oldAnn":Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;
    if-eqz v1, :cond_2

    .line 352
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonWriteNullProperties;->value()Z

    move-result v2

    .line 353
    .local v2, "writeNulls":Z
    if-eqz v2, :cond_1

    sget-object v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    .end local v2    # "writeNulls":Z
    :cond_2
    move-object v3, p2

    .line 355
    goto :goto_0
.end method

.method public findSerializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 374
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 375
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v1

    .line 377
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 381
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 419
    const-class v1, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    .line 420
    .local v0, "order":Lorg/codehaus/jackson/annotate/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 425
    const-class v1, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;

    .line 426
    .local v0, "order":Lorg/codehaus/jackson/annotate/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonPropertyOrder;->alphabetic()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 361
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 362
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v1

    .line 364
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v1, v2, :cond_0

    .line 368
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 400
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 401
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->typing()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 407
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    .line 408
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonView;->value()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 292
    const-class v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    .line 293
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v3

    .line 295
    .local v3, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    const-class v4, Lorg/codehaus/jackson/map/JsonSerializer$None;

    if-eq v3, v4, :cond_0

    .line 310
    .end local v3    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :goto_0
    return-object v3

    .line 304
    :cond_0
    const-class v4, Lorg/codehaus/jackson/annotate/JsonRawValue;

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonRawValue;

    .line 305
    .local v1, "annRaw":Lorg/codehaus/jackson/annotate/JsonRawValue;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonRawValue;->value()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 308
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lorg/codehaus/jackson/map/ser/std/RawSerializer;

    invoke-direct {v3, v2}, Lorg/codehaus/jackson/map/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 310
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 624
    const-class v2, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 625
    .local v1, "pann":Lorg/codehaus/jackson/annotate/JsonProperty;
    if-eqz v1, :cond_0

    .line 626
    invoke-interface {v1}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    .line 644
    :goto_0
    return-object v2

    .line 628
    :cond_0
    const-class v2, Lorg/codehaus/jackson/annotate/JsonSetter;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonSetter;

    .line 629
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonSetter;
    if-eqz v0, :cond_1

    .line 630
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonSetter;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 637
    :cond_1
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 642
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 644
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 10
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const-class v7, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    .line 237
    .local v4, "t":Lorg/codehaus/jackson/annotate/JsonSubTypes;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 243
    :cond_0
    return-object v3

    .line 238
    :cond_1
    invoke-interface {v4}, Lorg/codehaus/jackson/annotate/JsonSubTypes;->value()[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;

    move-result-object v6

    .line 239
    .local v6, "types":[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    move-object v0, v6

    .local v0, "arr$":[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 241
    .local v5, "type":Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;
    new-instance v7, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 249
    const-class v1, Lorg/codehaus/jackson/annotate/JsonTypeName;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonTypeName;

    .line 250
    .local v0, "tn":Lorg/codehaus/jackson/annotate/JsonTypeName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findValueInstantiator(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 604
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonValueInstantiator;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonValueInstantiator;

    .line 606
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonValueInstantiator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonValueInstantiator;->value()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAnyGetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 663
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnyGetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 654
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnySetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 466
    const-class v1, Lorg/codehaus/jackson/annotate/JsonValue;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonValue;

    .line 468
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonValue;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonValue;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 673
    const-class v0, Lorg/codehaus/jackson/annotate/JsonCreator;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 35
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v1, Lorg/codehaus/jackson/annotate/JacksonAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 97
    const-class v1, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    .line 98
    .local v0, "ignore":Lorg/codehaus/jackson/annotate/JsonIgnoreType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonIgnoreType;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "member"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 153
    const-class v1, Lorg/codehaus/jackson/annotate/JsonUnwrapped;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonUnwrapped;

    .line 156
    .local v0, "ann":Lorg/codehaus/jackson/annotate/JsonUnwrapped;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonUnwrapped;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
