.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
.super Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final instance:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;


# instance fields
.field protected final _factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 227
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 245
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;-><init>()V

    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance p1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    .end local p1    # "config":Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    invoke-direct {p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>()V

    .line 249
    .restart local p1    # "config":Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    .line 250
    return-void
.end method

.method private _createEnumKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 332
    .local v1, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 333
    .local v2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/util/EnumResolver;

    move-result-object v3

    .line 335
    .local v3, "enumRes":Lorg/codehaus/jackson/map/util/EnumResolver;, "Lorg/codehaus/jackson/map/util/EnumResolver<*>;"
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 336
    .local v4, "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 337
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    .line 338
    .local v0, "argCount":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 339
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 341
    .local v6, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_1

    .line 344
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter #0 type for factory method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") not suitable, must be java.lang.String"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 346
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 349
    :cond_2
    invoke-static {v3, v4}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v7

    .line 357
    .end local v0    # "argCount":I
    .end local v4    # "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v6    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v7

    .line 352
    .restart local v0    # "argCount":I
    .restart local v4    # "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsuitable method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 357
    .end local v0    # "argCount":I
    .end local v4    # "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_4
    invoke-static {v3}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/util/EnumResolver;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v7

    goto :goto_0
.end method

.method static synthetic access$000()[Lorg/codehaus/jackson/map/Deserializers;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->NO_DESERIALIZERS:[Lorg/codehaus/jackson/map/Deserializers;

    return-object v0
.end method


# virtual methods
.method protected _addDeserializerConstructors(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 25
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 853
    .local p3, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 854
    .local v8, "ctor":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v19

    .line 855
    .local v19, "argCount":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_0

    .line 858
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v9

    .line 859
    .local v9, "isCreator":Z
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v10

    .line 861
    .local v10, "isVisible":Z
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 862
    invoke-virtual/range {v2 .. v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentConstructor(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z

    goto :goto_0

    .line 866
    :cond_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_0

    .line 873
    :cond_2
    const/16 v18, 0x0

    .line 877
    .local v18, "annotationFound":Z
    const/16 v23, 0x0

    .line 878
    .local v23, "nonAnnotatedParam":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    const/16 v22, 0x0

    .line 879
    .local v22, "namedCount":I
    const/16 v21, 0x0

    .line 880
    .local v21, "injectCount":I
    move/from16 v0, v19

    new-array v0, v0, [Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-object/from16 v24, v0

    .line 881
    .local v24, "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    .line 882
    invoke-virtual {v8, v15}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v16

    .line 883
    .local v16, "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    if-nez v16, :cond_4

    const/4 v14, 0x0

    .line 884
    .local v14, "name":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v17

    .line 885
    .local v17, "injectId":Ljava/lang/Object;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 886
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 887
    invoke-virtual/range {v11 .. v17}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v24, v15

    .line 881
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 883
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "injectId":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 888
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "injectId":Ljava/lang/Object;
    :cond_5
    if-eqz v17, :cond_6

    .line 889
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 890
    invoke-virtual/range {v11 .. v17}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v24, v15

    goto :goto_3

    .line 891
    :cond_6
    if-nez v23, :cond_3

    .line 892
    move-object/from16 v23, v16

    goto :goto_3

    .line 897
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v17    # "injectId":Ljava/lang/Object;
    :cond_7
    if-nez v9, :cond_8

    if-gtz v22, :cond_8

    if-lez v21, :cond_9

    .line 899
    :cond_8
    add-int v2, v22, v21

    move/from16 v0, v19

    if-ne v2, v0, :cond_a

    .line 900
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 910
    :cond_9
    if-eqz v18, :cond_0

    .line 911
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    .line 901
    :cond_a
    if-nez v22, :cond_b

    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_b

    .line 904
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 907
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    .end local v8    # "ctor":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .end local v9    # "isCreator":Z
    .end local v10    # "isVisible":Z
    .end local v15    # "i":I
    .end local v18    # "annotationFound":Z
    .end local v19    # "argCount":I
    .end local v21    # "injectCount":I
    .end local v22    # "namedCount":I
    .end local v23    # "nonAnnotatedParam":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v24    # "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    :cond_c
    return-void
.end method

.method protected _addDeserializerFactoryMethods(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 21
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 976
    .local p3, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 977
    .local v8, "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v17

    .line 978
    .local v17, "argCount":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    .line 981
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v9

    .line 983
    .local v9, "isCreator":Z
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 984
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    .line 985
    .local v15, "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v13

    .line 986
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v19

    .line 988
    .local v19, "injectId":Ljava/lang/Object;
    if-nez v19, :cond_3

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 989
    invoke-virtual/range {v2 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentFactory(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z

    goto :goto_0

    .line 997
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v19    # "injectId":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    :cond_3
    move/from16 v0, v17

    new-array v0, v0, [Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-object/from16 v20, v0

    .line 1003
    .local v20, "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 1004
    invoke-virtual {v8, v14}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    .line 1005
    .restart local v15    # "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v13

    .line 1006
    .restart local v13    # "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v16

    .line 1008
    .local v16, "injectableId":Ljava/lang/Object;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-nez v16, :cond_5

    .line 1009
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of factory method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 1011
    invoke-virtual/range {v10 .. v16}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v20, v14

    .line 1003
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1013
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .end local v16    # "injectableId":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    .line 1015
    .end local v8    # "factory":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v9    # "isCreator":Z
    .end local v14    # "i":I
    .end local v17    # "argCount":I
    .end local v20    # "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    :cond_7
    return-void
.end method

.method protected _findCustomArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lorg/codehaus/jackson/map/type/ArrayType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p5, "elementTypeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 367
    .local p6, "elementDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 368
    invoke-interface/range {v0 .. v6}, Lorg/codehaus/jackson/map/Deserializers;->findArrayDeserializer(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 370
    .local v7, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v7, :cond_0

    .line 374
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v7    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected _findCustomBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
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
    .line 481
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 482
    invoke-interface/range {v0 .. v5}, Lorg/codehaus/jackson/map/Deserializers;->findBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 483
    .local v6, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 487
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v6    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "type"    # Lorg/codehaus/jackson/map/type/CollectionType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 384
    .local p7, "elementDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 385
    invoke-interface/range {v0 .. v7}, Lorg/codehaus/jackson/map/Deserializers;->findCollectionDeserializer(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 387
    .local v8, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 391
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v8    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .param p1, "type"    # Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p6, "elementTypeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 401
    .local p7, "elementDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 402
    invoke-interface/range {v0 .. v7}, Lorg/codehaus/jackson/map/Deserializers;->findCollectionLikeDeserializer(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 404
    .local v8, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v8, :cond_0

    .line 408
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v8    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 417
    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 418
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 422
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "type"    # Lorg/codehaus/jackson/map/type/MapType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 433
    .local p8, "elementDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 434
    invoke-interface/range {v0 .. v8}, Lorg/codehaus/jackson/map/Deserializers;->findMapDeserializer(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 436
    .local v9, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 440
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v9    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "type"    # Lorg/codehaus/jackson/map/type/MapLikeType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p4, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p5, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p6, "keyDeserializer"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .param p7, "elementTypeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 451
    .local p8, "elementDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 452
    invoke-interface/range {v0 .. v8}, Lorg/codehaus/jackson/map/Deserializers;->findMapLikeDeserializer(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 454
    .local v9, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v9, :cond_0

    .line 458
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v9    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/JsonNode;>;"
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 467
    .local v0, "d":Lorg/codehaus/jackson/map/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 468
    .local v1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 472
    .end local v0    # "d":Lorg/codehaus/jackson/map/Deserializers;
    .end local v1    # "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _handleSingleArgumentConstructor(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z
    .locals 12
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    .param p6, "ctor"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .param p7, "isCreator"    # Z
    .param p8, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 923
    .local p3, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameter(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 924
    .local v7, "param":Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v5

    .line 925
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v8

    .line 927
    .local v8, "injectId":Ljava/lang/Object;
    if-nez v8, :cond_0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 929
    :cond_0
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 930
    .local v9, "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v2

    aput-object v2, v9, v11

    .line 931
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v9}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 932
    const/4 v2, 0x1

    .line 967
    .end local v9    # "properties":[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    :goto_0
    return v2

    .line 936
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v10

    .line 937
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v10, v2, :cond_4

    .line 938
    if-nez p7, :cond_2

    if-eqz p8, :cond_3

    .line 939
    :cond_2
    invoke-virtual/range {p5 .. p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 941
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 943
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_5

    const-class v2, Ljava/lang/Integer;

    if-ne v10, v2, :cond_8

    .line 944
    :cond_5
    if-nez p7, :cond_6

    if-eqz p8, :cond_7

    .line 945
    :cond_6
    invoke-virtual/range {p5 .. p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 947
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 949
    :cond_8
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_9

    const-class v2, Ljava/lang/Long;

    if-ne v10, v2, :cond_c

    .line 950
    :cond_9
    if-nez p7, :cond_a

    if-eqz p8, :cond_b

    .line 951
    :cond_a
    invoke-virtual/range {p5 .. p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 953
    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    .line 955
    :cond_c
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v10, v2, :cond_d

    const-class v2, Ljava/lang/Double;

    if-ne v10, v2, :cond_10

    .line 956
    :cond_d
    if-nez p7, :cond_e

    if-eqz p8, :cond_f

    .line 957
    :cond_e
    invoke-virtual/range {p5 .. p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 959
    :cond_f
    const/4 v2, 0x1

    goto :goto_0

    .line 963
    :cond_10
    if-eqz p7, :cond_11

    .line 964
    invoke-virtual/range {p5 .. p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 965
    const/4 v2, 0x1

    goto :goto_0

    .line 967
    :cond_11
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected _handleSingleArgumentFactory(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "intr"    # Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .param p5, "creators"    # Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    .param p6, "factory"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .param p7, "isCreator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p3, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1023
    invoke-virtual {p6, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 1025
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_2

    .line 1026
    if-nez p7, :cond_0

    invoke-interface {p3, p6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    :cond_0
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 1059
    :cond_1
    :goto_0
    return v1

    .line 1031
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_3

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_5

    .line 1032
    :cond_3
    if-nez p7, :cond_4

    invoke-interface {p3, p6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    :cond_4
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1037
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_6

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_8

    .line 1038
    :cond_6
    if-nez p7, :cond_7

    invoke-interface {p3, p6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    :cond_7
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1043
    :cond_8
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_9

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_b

    .line 1044
    :cond_9
    if-nez p7, :cond_a

    invoke-interface {p3, p6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    :cond_a
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1049
    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_c

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_e

    .line 1050
    :cond_c
    if-nez p7, :cond_d

    invoke-interface {p3, p6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1051
    :cond_d
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addBooleanCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 1055
    :cond_e
    invoke-virtual {p4, p6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1056
    invoke-virtual {p5, p6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    goto :goto_0

    :cond_f
    move v1, v2

    .line 1059
    goto :goto_0
.end method

.method protected _mapAbstractType2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 647
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasAbstractTypeResolvers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 649
    .local v3, "resolver":Lorg/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->findTypeMapping(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 650
    .local v0, "concrete":Lorg/codehaus/jackson/type/JavaType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 655
    .end local v0    # "concrete":Lorg/codehaus/jackson/type/JavaType;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolver":Lorg/codehaus/jackson/map/AbstractTypeResolver;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 23
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v18

    .line 1111
    .local v18, "props":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v13

    .line 1112
    .local v13, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v9, 0x0

    .line 1114
    .local v9, "ignoreAny":Z
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v4

    .line 1115
    .local v4, "B":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 1116
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1117
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 1121
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v10

    .line 1122
    .local v10, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1123
    .local v16, "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    .end local v16    # "propName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnySetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    .line 1132
    .local v5, "anySetter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-nez v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v11

    .line 1134
    .local v11, "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    if-eqz v11, :cond_3

    .line 1135
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1138
    .restart local v16    # "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_2

    .line 1132
    .end local v11    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v16    # "propName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v11

    goto :goto_1

    .line 1142
    .restart local v11    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1145
    .local v12, "ignoredTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1146
    .local v17, "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1147
    .local v14, "name":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 1154
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1156
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addCreatorProperty(Lorg/codehaus/jackson/map/BeanPropertyDefinition;)V

    goto :goto_3

    .line 1160
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->hasSetter()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1161
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v20

    .line 1163
    .local v20, "setter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v21

    .line 1164
    .local v21, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v12}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1166
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 1169
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v14, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v15

    .line 1170
    .local v15, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v15, :cond_4

    .line 1171
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 1175
    .end local v15    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v20    # "setter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->hasField()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1176
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    .line 1178
    .local v6, "field":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v21

    .line 1179
    .restart local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v12}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1181
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1184
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v15

    .line 1185
    .restart local v15    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v15, :cond_4

    .line 1186
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_3

    .line 1191
    .end local v6    # "field":Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v17    # "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    if-eqz v5, :cond_a

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructAnySetter(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setAnySetter(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;)V

    .line 1201
    :cond_a
    sget-object v22, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1207
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1208
    .restart local v17    # "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->hasGetter()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1209
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1210
    .restart local v14    # "name":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1213
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v7

    .line 1215
    .local v7, "getter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v19

    .line 1216
    .local v19, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/util/Collection;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_c

    const-class v22, Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1217
    :cond_c
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1218
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_4

    .line 1224
    .end local v7    # "getter":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "property":Lorg/codehaus/jackson/map/BeanPropertyDefinition;
    .end local v19    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method

.method protected addInjectables(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findInjectables()Ljava/util/Map;

    move-result-object v9

    .line 1264
    .local v9, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    if-eqz v9, :cond_1

    .line 1265
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    .line 1266
    .local v7, "fixAccess":Z
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1267
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1268
    .local v4, "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    if-eqz v7, :cond_0

    .line 1269
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1271
    :cond_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addInjectable(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    goto :goto_0

    .line 1275
    .end local v4    # "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .end local v7    # "fixAccess":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected addReferenceProperties(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "builder"    # Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findBackReferenceProperties()Ljava/util/Map;

    move-result-object v4

    .line 1238
    .local v4, "refs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    if-eqz v4, :cond_1

    .line 1239
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1240
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1241
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1242
    .local v2, "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    instance-of v5, v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v5, :cond_0

    .line 1243
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .end local v2    # "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1246
    .restart local v2    # "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    :cond_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .end local v2    # "m":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    invoke-virtual {p0, p1, p2, v5, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1251
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
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
    .line 696
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v4

    .line 698
    .local v4, "valueInstantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 699
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canInstantiate()Z

    move-result v5

    if-nez v5, :cond_1

    .line 701
    new-instance v1, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    invoke-direct {v1, p2}, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 726
    :cond_0
    return-object v1

    .line 704
    :cond_1
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 705
    .local v0, "builder":Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 707
    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 709
    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addReferenceProperties(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 710
    invoke-virtual {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addInjectables(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 713
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 714
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 715
    .local v3, "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    goto :goto_0

    .line 718
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_2
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 721
    .local v1, "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 722
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 723
    .restart local v3    # "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v3, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    goto :goto_1
.end method

.method public buildThrowableDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
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
    .line 736
    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 737
    .local v1, "builder":Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 739
    invoke-virtual {p0, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 746
    const-string v7, "initCause"

    sget-object v8, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p3, v7, v8}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    .line 747
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    if-eqz v0, :cond_0

    .line 748
    const-string v7, "cause"

    invoke-virtual {p0, p1, p3, v7, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    .line 749
    .local v6, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    .line 754
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addOrReplaceProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Z)V

    .line 759
    .end local v6    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    const-string v7, "localizedMessage"

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 763
    const-string v7, "message"

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 765
    const-string v7, "suppressed"

    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 768
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 769
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 770
    .local v5, "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v1

    goto :goto_0

    .line 773
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_1
    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 778
    .local v2, "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    instance-of v7, v2, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v7, :cond_2

    .line 779
    new-instance v3, Lorg/codehaus/jackson/map/deser/std/ThrowableDeserializer;

    check-cast v2, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v2    # "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-direct {v3, v2}, Lorg/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .local v3, "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    move-object v2, v3

    .line 783
    .end local v3    # "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    .restart local v2    # "deserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_2
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 784
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 785
    .restart local v5    # "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    invoke-virtual {v5, p1, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    goto :goto_1

    .line 788
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;
    :cond_3
    return-object v2
.end method

.method protected constructAnySetter(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 7
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "setter"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1286
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1290
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1291
    .local v3, "type":Lorg/codehaus/jackson/type/JavaType;
    new-instance v5, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v5, v0, v3, v1, p3}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v5, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1292
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1299
    invoke-virtual {p0, p1, p3, v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1300
    .local v6, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 1301
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v0, v5, p3, v3, v6}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1307
    :goto_0
    return-object v0

    .line 1306
    :cond_1
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/BeanProperty$Std;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1307
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v5, p3, v3, v1}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_0
.end method

.method protected constructBeanDeserializerBuilder(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .prologue
    .line 806
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructCreatorProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 19
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "param"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;
    .param p6, "injectableValueId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getParameterType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1074
    .local v7, "t0":Lorg/codehaus/jackson/type/JavaType;
    new-instance v9, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v9, v0, v7, v4, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    .line 1075
    invoke-virtual/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1076
    .local v12, "type":Lorg/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_0

    .line 1077
    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/map/BeanProperty$Std;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1080
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v18

    .line 1082
    .local v18, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1085
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1087
    .local v13, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    if-nez v13, :cond_1

    .line 1088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findTypeDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v13

    .line 1090
    :cond_1
    new-instance v10, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p5

    move/from16 v16, p4

    move-object/from16 v17, p6

    invoke-direct/range {v10 .. v17}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V

    .line 1092
    .local v10, "prop":Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;
    if-eqz v18, :cond_2

    .line 1093
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v10

    .line 1095
    :cond_2
    return-object v10
.end method

.method protected constructDefaultValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 8
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 819
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v7

    .line 820
    .local v7, "fixAccess":Z
    new-instance v5, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;

    invoke-direct {v5, p2, v7}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 821
    .local v5, "creators":Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 825
    .local v4, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v6

    .line 827
    .local v6, "defaultCtor":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    if-eqz v6, :cond_1

    .line 828
    if-eqz v7, :cond_0

    .line 829
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 831
    :cond_0
    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->setDefaultConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    .line 836
    .end local v6    # "defaultCtor":Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    .line 837
    .local v3, "vchecker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 842
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerFactoryMethods(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 843
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerConstructors(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    .line 845
    invoke-virtual {v5, p1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    return-object v0
.end method

.method protected constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "field"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1363
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1364
    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->fixAccess()V

    .line 1366
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1367
    .local v7, "t0":Lorg/codehaus/jackson/type/JavaType;
    new-instance v9, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1368
    invoke-virtual/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1370
    .local v12, "type":Lorg/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1371
    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/map/BeanProperty$Std;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1376
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1377
    .local v16, "propDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1378
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1379
    .local v13, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)V

    .line 1381
    .local v10, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1382
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v10

    .line 1385
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1386
    .local v17, "ref":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1387
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1389
    :cond_3
    return-object v10
.end method

.method protected constructSettableProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 18
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "setter"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1326
    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1327
    invoke-virtual/range {p4 .. p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1331
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 1332
    .local v7, "t0":Lorg/codehaus/jackson/type/JavaType;
    new-instance v9, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v7, v4, v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .local v9, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1333
    invoke-virtual/range {v4 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->resolveType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1335
    .local v12, "type":Lorg/codehaus/jackson/type/JavaType;
    if-eq v12, v7, :cond_1

    .line 1336
    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/map/BeanProperty$Std;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v9

    .line 1342
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    .line 1343
    .local v16, "propDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v12

    .line 1344
    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1345
    .local v13, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v14

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1347
    .local v10, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v16, :cond_2

    .line 1348
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v10

    .line 1351
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v17

    .line 1352
    .local v17, "ref":Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1353
    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 1355
    :cond_3
    return-object v10
.end method

.method protected constructSetterlessProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "getter"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1404
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->fixAccess()V

    .line 1408
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1412
    .local v2, "type":Lorg/codehaus/jackson/type/JavaType;
    new-instance v7, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v1

    invoke-direct {v7, p3, v2, v1, p4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1414
    .local v7, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    invoke-virtual {p0, p1, p4, v7}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1415
    .local v6, "propDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p4, v2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1416
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1417
    .local v3, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1419
    .local v0, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_1

    .line 1420
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 1422
    :cond_1
    return-object v0
.end method

.method public createBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "p"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .param p3, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p4, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
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
    .line 582
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 587
    :cond_0
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 588
    .local v4, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 589
    .local v6, "ad":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v6, :cond_1

    .line 636
    .end local v6    # "ad":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v6

    .line 593
    .restart local v6    # "ad":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->modifyTypeByAnnotation(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    .line 594
    .local v10, "newType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 595
    move-object p3, v10

    .line 596
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .restart local v4    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_2
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 599
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v8

    .line 600
    .local v8, "custom":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v8, :cond_3

    move-object v6, v8

    .line 601
    goto :goto_0

    .line 607
    :cond_3
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isThrowable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    invoke-virtual {p0, p1, p3, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 613
    :cond_4
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->materializeAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 616
    .local v7, "concreteType":Lorg/codehaus/jackson/type/JavaType;
    if-eqz v7, :cond_5

    .line 620
    invoke-virtual {p1, v7}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v4

    .end local v4    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    check-cast v4, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 621
    .restart local v4    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p0, p1, v7, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0

    .line 626
    .end local v7    # "concreteType":Lorg/codehaus/jackson/type/JavaType;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->findStdBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 627
    .local v9, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v9, :cond_6

    move-object v6, v9

    .line 628
    goto :goto_0

    .line 632
    :cond_6
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 633
    const/4 v6, 0x0

    goto :goto_0

    .line 636
    :cond_7
    invoke-virtual {p0, p1, p3, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    goto :goto_0
.end method

.method public createKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 7
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasKeyDeserializers()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 300
    .local v0, "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 301
    .local v1, "d":Lorg/codehaus/jackson/map/KeyDeserializers;
    invoke-interface {v1, p2, p1, v0, p3}, Lorg/codehaus/jackson/map/KeyDeserializers;->findKeyDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    .line 302
    .local v2, "deser":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-eqz v2, :cond_0

    move-object v4, v2

    .line 324
    .end local v0    # "beanDesc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .end local v1    # "d":Lorg/codehaus/jackson/map/KeyDeserializers;
    .end local v2    # "deser":Lorg/codehaus/jackson/map/KeyDeserializer;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v4

    .line 309
    :cond_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 310
    .local v5, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    .line 311
    :cond_3
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructStringKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    goto :goto_0

    .line 314
    :cond_4
    sget-object v6, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/KeyDeserializer;

    .line 315
    .local v4, "kdes":Lorg/codehaus/jackson/map/KeyDeserializer;
    if-nez v4, :cond_1

    .line 319
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_createEnumKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v4

    .line 324
    goto :goto_0
.end method

.method public findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 535
    .local v0, "ac":Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v4

    .line 536
    .local v4, "instDef":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 537
    instance-of v7, v4, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    if-eqz v7, :cond_1

    move-object v5, v4

    .line 538
    check-cast v5, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 557
    .local v5, "instantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    :goto_0
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->hasValueInstantiators()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 558
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v7}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codehaus/jackson/map/deser/ValueInstantiators;

    .line 559
    .local v6, "insts":Lorg/codehaus/jackson/map/deser/ValueInstantiators;
    invoke-interface {v6, p1, p2, v5}, Lorg/codehaus/jackson/map/deser/ValueInstantiators;->findValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/deser/ValueInstantiator;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .line 561
    if-nez v5, :cond_0

    .line 562
    new-instance v7, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broken registered ValueInstantiators (of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): returned null ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 540
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "instantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .end local v6    # "insts":Lorg/codehaus/jackson/map/deser/ValueInstantiators;
    :cond_1
    instance-of v7, v4, Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 541
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid value instantiator returned for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": neither a Class nor ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    move-object v1, v4

    .line 543
    check-cast v1, Ljava/lang/Class;

    .line 544
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 545
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid instantiator Class<?> returned for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not a ValueInstantiator"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 549
    :cond_3
    move-object v3, v1

    .line 550
    .local v3, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/deser/ValueInstantiator;>;"
    invoke-virtual {p1, v0, v3}, Lorg/codehaus/jackson/map/DeserializationConfig;->valueInstantiatorInstance(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .line 551
    .restart local v5    # "instantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    goto/16 :goto_0

    .line 553
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "instClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codehaus/jackson/map/deser/ValueInstantiator;>;"
    .end local v5    # "instantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructDefaultValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    .restart local v5    # "instantiator":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    goto/16 :goto_0

    .line 568
    :cond_5
    return-object v5
.end method

.method public final getConfig()Lorg/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    return-object v0
.end method

.method protected isIgnorableType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 4
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1465
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "ignoredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1466
    .local v1, "status":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 1467
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 1468
    .local v0, "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1470
    if-nez v1, :cond_0

    .line 1471
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1474
    .end local v0    # "desc":Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 1441
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "typeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1445
    :cond_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1451
    :cond_1
    invoke-static {p1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_2

    .line 1453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1455
    :cond_2
    return v2
.end method

.method public mapAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 6
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 505
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_mapAbstractType2(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 506
    .local v0, "next":Lorg/codehaus/jackson/type/JavaType;
    if-nez v0, :cond_0

    .line 507
    return-object p2

    .line 513
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 514
    .local v2, "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 515
    .local v1, "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v2, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 516
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_2
    move-object p2, v0

    .line 519
    goto :goto_0
.end method

.method protected materializeAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "beanDesc"    # Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 667
    .local v0, "abstractType":Lorg/codehaus/jackson/type/JavaType;
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 668
    .local v3, "r":Lorg/codehaus/jackson/map/AbstractTypeResolver;
    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->resolveAbstractType(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 669
    .local v1, "concrete":Lorg/codehaus/jackson/type/JavaType;
    if-eqz v1, :cond_0

    .line 673
    .end local v1    # "concrete":Lorg/codehaus/jackson/type/JavaType;
    .end local v3    # "r":Lorg/codehaus/jackson/map/AbstractTypeResolver;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public withConfig(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)Lorg/codehaus/jackson/map/DeserializerFactory;
    .locals 3
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    .prologue
    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    if-ne v0, p1, :cond_0

    .line 282
    .end local p0    # "this":Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
    :goto_0
    return-object p0

    .line 277
    .restart local p0    # "this":Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    if-eq v0, v1, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    new-instance p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    .end local p0    # "this":Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    goto :goto_0
.end method
