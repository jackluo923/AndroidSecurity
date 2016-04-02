.class public Lorg/codehaus/jackson/map/DeserializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig$Impl;
.source "DeserializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig$Impl",
        "<",
        "Lorg/codehaus/jackson/map/DeserializationConfig$Feature;",
        "Lorg/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

.field protected _problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected _sortPropertiesAlphabetically:Z


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
    .line 406
    .local p1, "intr":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    .local p3, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const-class v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

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

    .line 408
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 409
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;

    .prologue
    .line 415
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 416
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;I)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "featureFlags"    # I

    .prologue
    .line 459
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;I)V

    .line 460
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 461
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 462
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 463
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
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
    .line 427
    .local p2, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 430
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "base"    # Lorg/codehaus/jackson/map/MapperConfig$Base;

    .prologue
    .line 437
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 438
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 439
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 440
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 441
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;-><init>(Lorg/codehaus/jackson/map/MapperConfig$Impl;)V

    .line 449
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 450
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 451
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 452
    return-void
.end method


# virtual methods
.method public addHandler(Lorg/codehaus/jackson/map/DeserializationProblemHandler;)V
    .locals 2
    .param p1, "h"    # Lorg/codehaus/jackson/map/DeserializationProblemHandler;

    .prologue
    .line 815
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/LinkedNode;->contains(Lorg/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lorg/codehaus/jackson/map/util/LinkedNode;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LinkedNode;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/util/LinkedNode;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 818
    :cond_0
    return-void
.end method

.method public canOverrideAccessModifiers()Z
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public clearHandlers()V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 829
    return-void
.end method

.method public createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "subtypeResolver"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 655
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotations:Ljava/util/HashMap;

    .line 657
    .local v0, "mixins":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/codehaus/jackson/map/type/ClassKey;Ljava/lang/Class<*>;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_mixInAnnotationsShared:Z

    .line 658
    new-instance v1, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public bridge synthetic createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->createUnshared(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public deserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    .local p2, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/JsonDeserializer<*>;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v1

    .line 891
    .local v1, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v1, :cond_0

    .line 892
    invoke-virtual {v1, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->deserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 893
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 897
    .end local v0    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v0, v2

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 778
    return-void
.end method

.method public bridge synthetic disable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 767
    return-void
.end method

.method public bridge synthetic enable(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V

    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .locals 5
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
    .line 637
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 638
    .local v1, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 640
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v2

    .line 641
    .local v2, "prevVc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    .line 642
    return-void
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
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
    .line 720
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 721
    .local v0, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 730
    :cond_2
    return-object v0
.end method

.method public final getNodeFactory()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_nodeFactory:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lorg/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;

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
    .line 868
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

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
    .line 686
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

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
    .line 699
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDirectClassAnnotations(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
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
    .line 877
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getClassIntrospector()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationProcessingEnabled()Z
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 755
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

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

.method public bridge synthetic isEnabled(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->isEnabled(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z

    move-result v0

    return v0
.end method

.method public keyDeserializerInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "keyDeserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/KeyDeserializer;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 904
    .local v0, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->keyDeserializerInstance(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v1

    .line 906
    .local v1, "keyDeser":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-eqz v1, :cond_0

    .line 910
    .end local v1    # "keyDeser":Lorg/codehaus/jackson/map/KeyDeserializer;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/KeyDeserializer;

    move-object v1, v2

    goto :goto_0
.end method

.method protected passSerializationFeatures(I)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "serializationFeatureFlags"    # I

    .prologue
    .line 474
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->SORT_PROPERTIES_ALPHABETICALLY:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    .line 476
    return-object p0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Impl;->set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V

    .line 789
    return-void
.end method

.method public bridge synthetic set(Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .param p1, "x0"    # Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    .param p2, "x1"    # Z

    .prologue
    .line 41
    check-cast p1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V

    return-void
.end method

.method public shouldSortPropertiesAlphabetically()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_sortPropertiesAlphabetically:Z

    return v0
.end method

.method public valueInstantiatorInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 3
    .param p1, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;"
        }
    .end annotation

    .prologue
    .line 916
    .local p2, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/deser/ValueInstantiator;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 917
    .local v0, "hi":Lorg/codehaus/jackson/map/HandlerInstantiator;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->valueInstantiatorInstance(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    .line 919
    .local v1, "inst":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    if-eqz v1, :cond_0

    .line 923
    .end local v1    # "inst":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-static {p2, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-object v1, v2

    goto :goto_0
.end method

.method public varargs with([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 6
    .param p1, "features"    # [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 573
    iget v2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 574
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 575
    .local v1, "f":Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 574
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "f":Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    :cond_0
    new-instance v5, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v5, p0, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;I)V

    return-object v5
.end method

.method public bridge synthetic with([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":[Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->with([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 492
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 545
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withAppendedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "ci":Lorg/codehaus/jackson/map/ClassIntrospector;, "Lorg/codehaus/jackson/map/ClassIntrospector<+Lorg/codehaus/jackson/map/BeanDescription;>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/ClassIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withClassIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 530
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "hi"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 535
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getHandlerInstantiator()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/HandlerInstantiator;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withHandlerInstantiator(Lorg/codehaus/jackson/map/HandlerInstantiator;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "ai"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 540
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withInsertedAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withNodeFactory(Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/node/JsonNodeFactory;

    .prologue
    .line 561
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "pns"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 520
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withPropertyNamingStrategy(Lorg/codehaus/jackson/map/PropertyNamingStrategy;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1
    .param p1, "str"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 513
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V

    .line 514
    .local v0, "cfg":Lorg/codehaus/jackson/map/DeserializationConfig;
    iput-object p1, v0, Lorg/codehaus/jackson/map/DeserializationConfig;->_subtypeResolver:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 515
    return-object v0
.end method

.method public bridge synthetic withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withSubtypeResolver(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "tf"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 525
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig$Base;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/DeserializationConfig;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "trb":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withTypeResolverBuilder(Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .param p1, "forMethod"    # Lorg/codehaus/jackson/annotate/JsonMethod;
    .param p2, "visibility"    # Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 502
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/annotate/JsonMethod;
    .param p2, "x1"    # Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibility(Lorg/codehaus/jackson/annotate/JsonMethod;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/DeserializationConfig;"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "vc":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;

    iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_base:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/MapperConfig$Base;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig$Base;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    return-object v0
.end method

.method public bridge synthetic withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/MapperConfig;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->withVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 6
    .param p1, "features"    # [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .prologue
    .line 589
    iget v2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I

    .line 590
    .local v2, "flags":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 591
    .local v1, "f":Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "f":Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    :cond_0
    new-instance v5, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v5, p0, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;I)V

    return-object v5
.end method

.method public bridge synthetic without([Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lorg/codehaus/jackson/map/MapperConfig$Impl;
    .locals 1
    .param p1, "x0"    # [Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .prologue
    .line 41
    check-cast p1, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    .end local p1    # "x0":[Lorg/codehaus/jackson/map/MapperConfig$ConfigFeature;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method
