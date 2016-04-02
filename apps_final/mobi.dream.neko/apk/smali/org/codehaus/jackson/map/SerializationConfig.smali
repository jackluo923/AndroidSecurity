.class public Lorg/codehaus/jackson/map/SerializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig$Impl;
.source "SerializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig$Impl",
        "<",
        "Lorg/codehaus/jackson/map/SerializationConfig$Feature;",
        "Lorg/codehaus/jackson/map/SerializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected _filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

.field protected _serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field protected _serializationView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 9
    .param p2, "annIntr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p4, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .param p5, "propertyNamingStrategy"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;
    .param p6, "typeFactory"    # Lorg/codehaus/jackson/map/type/TypeFactory;
    .param p7, "handlerInstantiator"    # Lorg/codehaus/jackson/map/HandlerInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "intr":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const-class v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-static {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;I)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 493
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;

    .prologue
    .line 499
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 500
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;I)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "features"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;I)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 571
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 572
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 573
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 574
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 543
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 544
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 545
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 546
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 511
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 512
    iput-object p3, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 513
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "base"    # Lorg/codehaus/jackson/map/MapperConfig$Base;

    .prologue
    .line 520
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 521
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 522
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 523
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 524
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .locals 2
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "incl"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 554
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 556
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p2, v0, :cond_0

    .line 557
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 561
    :goto_0
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 562
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 563
    return-void

    .line 559
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/FilterProvider;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "filters"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 532
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 533
    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 534
    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 535
    return-void
.end method


# virtual methods
.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 823
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 774
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 775
    .local v0, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_mixInAnnotationsShared:Z

    .line 776
    new-instance v1, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public bridge synthetic disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 38
    check-cast p1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    return-void
.end method

.method public disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 889
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 890
    return-void
.end method

.method public bridge synthetic enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 38
    check-cast p1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 878
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 879
    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 754
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 755
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-static {p1, v1, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 756
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    iget-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    .line 760
    invoke-virtual {v1, v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v2

    .line 761
    .local v2, "incl":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    iget-object v4, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eq v2, v4, :cond_0

    .line 762
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 765
    :cond_0
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v3

    .line 766
    .local v3, "typing":Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    if-eqz v3, :cond_1

    .line 767
    sget-object v5, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v4, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne v3, v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v5, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 769
    :cond_1
    return-void

    .line 767
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->nopInstance()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 834
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 835
    .local v0, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 839
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 842
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 845
    :cond_2
    return-object v0
.end method

.method public getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_filterProvider:Lorg/codehaus/jackson/map/ser/FilterProvider;

    return-object v0
.end method

.method public getSerializationInclusion()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 922
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0
.end method

.method public getSerializationView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    return-object v0
.end method

.method public introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectDirectClassAnnotations(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 818
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->isEnabled(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 867
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    .local p2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 986
    .local v0, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->serializerInstance(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    .line 988
    .local v1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v1, :cond_0

    .line 992
    .end local v1    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    .param p2, "x1"    # Z

    .prologue
    .line 38
    check-cast p1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    return-void
.end method

.method public set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    .line 901
    return-void
.end method

.method public final setDateFormat(Ljava/text/DateFormat;)V
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1011
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->setDateFormat(Ljava/text/DateFormat;)V

    .line 1012
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    .line 1013
    return-void

    .line 1012
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .locals 1
    .param p1, "props"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 940
    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 942
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p1, v0, :cond_0

    .line 943
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_0
.end method

.method public setSerializationView(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationView:Ljava/lang/Class;

    .line 1027
    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 38
    check-cast p1, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .end local p1    # "x0":[Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->with([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs with([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 6
    .param p1, "features"    # [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 692
    iget v2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 693
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 694
    .local v1, "f":Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    .end local v1    # "f":Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    :cond_0
    new-instance v5, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v5, p0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;I)V

    return-object v5
.end method

.method public bridge synthetic withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 589
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 599
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/ClassIntrospector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "ci":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 4
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 641
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 643
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    if-nez p1, :cond_0

    .line 644
    new-array v1, v2, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->with([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 646
    :cond_0
    new-array v1, v2, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p1, "filterProvider"    # Lorg/codehaus/jackson/map/ser/FilterProvider;

    .prologue
    .line 666
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/FilterProvider;)V

    return-object v0
.end method

.method public bridge synthetic withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 653
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 594
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "pns"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 626
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public withSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p1, "incl"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 680
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .param p1, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 619
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 620
    .local v0, "cfg":Lorg/codehaus/jackson/map/SerializationConfig;
    iput-object p1, v0, Lorg/codehaus/jackson/map/SerializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 621
    return-object v0
.end method

.method public bridge synthetic withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 631
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "trb":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/annotate/JsonMethod;
    .param p2, "x1"    # Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .param p1, "forMethod"    # Lorg/codehaus/jackson/annotate/JsonMethod;
    .param p2, "visibility"    # Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 609
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/SerializationConfig;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic without([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 38
    check-cast p1, [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .end local p1    # "x0":[Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs without([Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 6
    .param p1, "features"    # [Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    .prologue
    .line 708
    iget v2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    .line 709
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 710
    .local v1, "f":Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    .line 709
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "f":Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    :cond_0
    new-instance v5, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v5, p0, v2}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;I)V

    return-object v5
.end method
