.class public Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final _factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    .end local p1    # "config":Lorg/codehaus/jackson/map/SerializerFactory$Config;
    invoke-direct {p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 190
    .restart local p1    # "config":Lorg/codehaus/jackson/map/SerializerFactory$Config;
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .line 191
    return-void
.end method


# virtual methods
.method protected _constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 13
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "typeContext"    # Lorg/codehaus/jackson/map/type/TypeBindings;
    .param p3, "pb"    # Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    .param p4, "staticTyping"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 763
    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    invoke-virtual/range {p6 .. p6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 766
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 767
    .local v4, "type":Lorg/codehaus/jackson/type/JavaType;
    new-instance v12, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v4, v2, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 770
    .local v12, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v0, p6

    invoke-virtual {p0, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v5

    .line 772
    .local v5, "annotatedSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 773
    .local v7, "contentTypeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->isCollectionMapOrArray(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 778
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {p0, v4, p1, v0, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v6

    .local v6, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v8, p6

    move/from16 v9, p4

    .line 779
    invoke-virtual/range {v2 .. v9}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;->buildWriter(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v11

    .line 782
    .local v11, "pbw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v10

    .line 783
    .local v10, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->setViews([Ljava/lang/Class;)V

    .line 784
    return-object v11
.end method

.method protected constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 19
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Object;

    if-ne v4, v8, :cond_0

    .line 428
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can not create bean serializer for Object.class"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 431
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    .line 434
    .local v12, "builder":Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;

    move-result-object v16

    .line 436
    .local v16, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    if-nez v16, :cond_1

    .line 437
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .restart local v16    # "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 442
    .local v15, "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->changeProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    .line 447
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 454
    .restart local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->orderProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_1

    .line 458
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 459
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnyGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v11

    .line 462
    .local v11, "anyGetter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v11, :cond_5

    .line 463
    sget-object v4, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 464
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 466
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 468
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    sget-object v4, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v6

    .line 469
    .local v6, "staticTyping":Z
    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v18

    .line 470
    .local v18, "valueType":Lorg/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v7

    .line 472
    .local v7, "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lorg/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v14

    .line 474
    .local v14, "mapSer":Lorg/codehaus/jackson/map/ser/std/MapSerializer;
    new-instance v4, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-direct {v4, v11, v14}, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/ser/std/MapSerializer;)V

    invoke-virtual {v12, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setAnyGetter(Lorg/codehaus/jackson/map/ser/AnyGetterWriter;)V

    .line 477
    .end local v5    # "type":Lorg/codehaus/jackson/type/JavaType;
    .end local v6    # "staticTyping":Z
    .end local v7    # "typeSer":Lorg/codehaus/jackson/map/TypeSerializer;
    .end local v14    # "mapSer":Lorg/codehaus/jackson/map/ser/std/MapSerializer;
    .end local v18    # "valueType":Lorg/codehaus/jackson/type/JavaType;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 481
    .restart local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1, v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v12

    goto :goto_2

    .line 484
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    :cond_6
    invoke-virtual {v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->build()Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v17

    .line 489
    .local v17, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v17, :cond_7

    .line 494
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->hasKnownClassAnnotations()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 495
    invoke-virtual {v12}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->createDummy()Lorg/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v17

    .line 498
    .end local v17    # "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    :cond_7
    return-object v17
.end method

.method protected constructBeanSerializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 518
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1
    .param p1, "writer"    # Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "inViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;->constructViewBased(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 514
    new-instance v0, Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/ser/PropertyBuilder;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method public createKeySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasKeySerializers()Z

    move-result v4

    if-nez v4, :cond_1

    .line 310
    const/4 v2, 0x0

    .line 324
    :cond_0
    :goto_0
    return-object v2

    .line 314
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 315
    .local v0, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    const/4 v2, 0x0

    .line 318
    .local v2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->keySerializers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/Serializers;

    .line 319
    .local v3, "serializers":Lorg/codehaus/jackson/map/Serializers;
    invoke-interface {v3, p1, p2, v0, p3}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public createSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 18
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "origType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual/range {p1 .. p2}, Lorg/codehaus/jackson/map/SerializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 252
    .local v6, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 253
    .local v16, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    if-eqz v16, :cond_0

    move-object/from16 v3, v16

    .line 300
    :goto_0
    return-object v3

    .line 258
    :cond_0
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 260
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    move-object/from16 v0, p2

    if-eq v5, v0, :cond_2

    const/4 v8, 0x1

    .line 261
    .local v8, "staticTyping":Z
    :goto_1
    move-object/from16 v0, p2

    if-eq v5, v0, :cond_1

    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 263
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/SerializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v6

    .end local v6    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v6, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 267
    .restart local v6    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 268
    invoke-virtual/range {v3 .. v8}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->buildContainerSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v3

    goto :goto_0

    .line 260
    .end local v8    # "staticTyping":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 272
    .restart local v8    # "staticTyping":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/map/Serializers;

    .line 273
    .local v17, "serializers":Lorg/codehaus/jackson/map/Serializers;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v5, v6, v2}, Lorg/codehaus/jackson/map/Serializers;->findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 274
    if-eqz v16, :cond_4

    move-object/from16 v3, v16

    .line 275
    goto :goto_0

    .end local v17    # "serializers":Lorg/codehaus/jackson/map/Serializers;
    :cond_5
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 283
    invoke-virtual/range {v9 .. v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByLookup(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 284
    if-nez v16, :cond_6

    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, p3

    move v14, v8

    .line 285
    invoke-virtual/range {v9 .. v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 286
    if-nez v16, :cond_6

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v6, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    .line 295
    if-nez v16, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 296
    invoke-virtual/range {v3 .. v8}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->findSerializerByAddonType(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Z)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v16

    :cond_6
    move-object/from16 v3, v16

    .line 300
    goto/16 :goto_0
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 612
    .local v3, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 613
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "ignored":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 615
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 616
    .local v2, "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 617
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 618
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 619
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 623
    .end local v2    # "ignoredSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;
    .locals 17
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v14

    .line 559
    .local v14, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v12

    .line 562
    .local v12, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 565
    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->removeSetterlessGetters(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 570
    :cond_0
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    const/16 v16, 0x0

    .line 595
    :cond_1
    return-object v16

    .line 575
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->usesStaticTyping(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Z

    move-result v7

    .line 576
    .local v7, "staticTyping":Z
    invoke-virtual/range {p0 .. p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructPropertyBuilder(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/PropertyBuilder;

    move-result-object v6

    .line 578
    .local v6, "pb":Lorg/codehaus/jackson/map/ser/PropertyBuilder;
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v5

    .line 581
    .local v5, "typeBind":Lorg/codehaus/jackson/map/type/TypeBindings;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 582
    .local v15, "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v15}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v10

    .line 584
    .local v10, "accessor":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {v12, v10}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v13

    .line 585
    .local v13, "prop":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v3

    if-nez v3, :cond_3

    .line 588
    :cond_4
    invoke-virtual {v15}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    .line 589
    .local v8, "name":Ljava/lang/String;
    instance-of v3, v10, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v3, :cond_5

    move-object v9, v10

    .line 590
    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v9, v10

    .line 592
    check-cast v9, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/type/TypeBindings;Lorg/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    const/4 v2, 0x0

    .line 354
    :cond_0
    return-object v2

    .line 347
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 349
    .local v2, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 351
    .local v1, "mod":Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;
    invoke-virtual {v1, p1, p3, v2}, Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;->modifySerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    goto :goto_0
.end method

.method protected findFilterId(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;
    .locals 2
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 529
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 5
    .param p1, "containerType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getContentType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 400
    .local v2, "contentType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 401
    .local v0, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 403
    .local v1, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 404
    invoke-virtual {p0, p2, v2, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    .line 407
    :goto_0
    return-object v4

    .line 406
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p3, p2, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v3

    .line 407
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, v2, v3, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findPropertyTypeSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;
    .locals 4
    .param p1, "baseType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p3, "accessor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 374
    .local v0, "ai":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 376
    .local v1, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0, p2, p1, p4}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->createTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    .line 380
    :goto_0
    return-object v3

    .line 379
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/SerializationConfig;->getSubtypeResolver()Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v0}, Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v2

    .line 380
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v1, p2, p1, v2, p4}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    goto :goto_0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/SerializerFactory$Config;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    return-object v0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processViews(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 9
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "builder"    # Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;

    .prologue
    .line 667
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v5

    .line 668
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    sget-object v8, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v8}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v3

    .line 669
    .local v3, "includeByDefault":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 670
    .local v4, "propCount":I
    const/4 v7, 0x0

    .line 671
    .local v7, "viewsFound":I
    new-array v1, v4, [Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 673
    .local v1, "filtered":[Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 674
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 675
    .local v0, "bpw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    .line 676
    .local v6, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 677
    if-eqz v3, :cond_0

    .line 678
    aput-object v0, v1, v2

    .line 673
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 682
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v8

    aput-object v8, v1, v2

    goto :goto_1

    .line 686
    .end local v0    # "bpw":Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .end local v6    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_3

    if-nez v7, :cond_3

    .line 690
    :goto_2
    return-void

    .line 689
    :cond_3
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilteredProperties([Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    goto :goto_2
.end method

.method protected removeIgnorableTypes(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 701
    .local v4, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 702
    .local v3, "ignores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 703
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 704
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 705
    .local v6, "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v1

    .line 706
    .local v1, "accessor":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    if-nez v1, :cond_1

    .line 707
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v8

    .line 711
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 712
    .local v7, "result":Ljava/lang/Boolean;
    if-nez v7, :cond_3

    .line 713
    invoke-virtual {p1, v8}, Lorg/codehaus/jackson/map/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 714
    .local v2, "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 715
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v7

    .line 717
    if-nez v7, :cond_2

    .line 718
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 720
    :cond_2
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .end local v0    # "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .end local v2    # "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 724
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 727
    .end local v1    # "accessor":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .end local v6    # "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v7    # "result":Ljava/lang/Boolean;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method

.method protected removeSetterlessGetters(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 739
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 743
    .local v1, "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 747
    .end local v1    # "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    :cond_1
    return-void
.end method

.method protected sortBeanProperties(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 649
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;>;"
    return-object p3
.end method

.method public withConfig(Lorg/codehaus/jackson/map/SerializerFactory$Config;)Lorg/codehaus/jackson/map/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializerFactory$Config;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/SerializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 220
    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    :goto_0
    return-object p0

    .line 215
    .restart local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance p0, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;

    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lorg/codehaus/jackson/map/SerializerFactory$Config;)V

    goto :goto_0
.end method
