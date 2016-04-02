.class public Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "JaxbAnnotationIntrospector.java"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;
    }
.end annotation


# static fields
.field protected static final MARKER_FOR_DEFAULT:Ljava/lang/String; = "##default"


# instance fields
.field protected final _dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _jaxbPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    .line 80
    const-class v3, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_jaxbPackageName:Ljava/lang/String;

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "dataHandlerSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "dataHandlerDeserializer":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :try_start_0
    const-string v3, "org.codehaus.jackson.xc.DataHandlerJsonSerializer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v2, v0

    .line 89
    const-string v3, "org.codehaus.jackson.xc.DataHandlerJsonDeserializer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iput-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 94
    iput-object v1, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 3
    .param p1, "adapterInfo"    # Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p2, "typeNeeded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->type()Ljava/lang/Class;

    move-result-object v0

    .line 1041
    .local v0, "adaptedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter$DEFAULT;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1044
    :cond_0
    invoke-interface {p1}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 1045
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 1047
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 17
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Z)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    if-eqz v1, :cond_1

    .line 992
    check-cast p1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .end local p1    # "am":Lorg/codehaus/jackson/map/introspect/Annotated;
    invoke-direct/range {p0 .. p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapterForClass(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1033
    :cond_0
    :goto_0
    return-object v7

    .line 995
    .restart local p1    # "am":Lorg/codehaus/jackson/map/introspect/Annotated;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v15

    .line 997
    .local v15, "memberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v15, v1, :cond_2

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    .line 998
    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v15

    .line 1002
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Member;

    .line 1004
    .local v14, "member":Ljava/lang/reflect/Member;
    if-eqz v14, :cond_3

    .line 1005
    invoke-interface {v14}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    .line 1006
    .local v16, "potentialAdaptee":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v16, :cond_3

    .line 1007
    const-class v1, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1008
    .local v8, "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v8, :cond_3

    .line 1009
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1010
    .local v7, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1017
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v16    # "potentialAdaptee":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1018
    .restart local v8    # "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v8, :cond_4

    .line 1019
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1020
    .restart local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1024
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    const-class v2, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;

    .line 1025
    .local v9, "adapters":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;
    if-eqz v9, :cond_5

    .line 1026
    invoke-interface {v9}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapters;->value()[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-result-object v10

    .local v10, "arr$":[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_5

    aget-object v12, v10, v11

    .line 1027
    .local v12, "info":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->checkAdapter(Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v7

    .line 1028
    .restart local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 1026
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1033
    .end local v7    # "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v10    # "arr$":[Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v11    # "i$":I
    .end local v12    # "info":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v13    # "len$":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private findAdapterForClass(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 4
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "forSerialization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Z)",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 1059
    .local v0, "adapterInfo":Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v0, :cond_0

    .line 1061
    invoke-interface {v0}, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->value()Ljava/lang/Class;

    move-result-object v1

    .line 1062
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    .line 1064
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/xml/bind/annotation/adapters/XmlAdapter;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findFieldAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 5
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 903
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 904
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 912
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-object v4

    .line 902
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 907
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/lang/Object;

    if-ne p2, v4, :cond_4

    .line 912
    :cond_3
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 910
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 911
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method private static findJaxbPropertyName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ae"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, "aeType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljavax/xml/bind/annotation/XmlElementWrapper;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/annotation/XmlElementWrapper;

    .line 924
    .local v3, "elementWrapper":Ljavax/xml/bind/annotation/XmlElementWrapper;
    if-eqz v3, :cond_2

    .line 925
    invoke-interface {v3}, Ljavax/xml/bind/annotation/XmlElementWrapper;->name()Ljava/lang/String;

    move-result-object v4

    .line 926
    .local v4, "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 971
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 929
    goto :goto_0

    .line 932
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    const-class v7, Ljavax/xml/bind/annotation/XmlAttribute;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlAttribute;

    .line 933
    .local v0, "attribute":Ljavax/xml/bind/annotation/XmlAttribute;
    if-eqz v0, :cond_3

    .line 934
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlAttribute;->name()Ljava/lang/String;

    move-result-object v4

    .line 935
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, p2

    .line 938
    goto :goto_0

    .line 940
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    const-class v7, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlElement;

    .line 941
    .local v1, "element":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v1, :cond_4

    .line 942
    invoke-interface {v1}, Ljavax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v4

    .line 943
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, p2

    .line 946
    goto :goto_0

    .line 948
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    const-class v7, Ljavax/xml/bind/annotation/XmlElementRef;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Ljavax/xml/bind/annotation/XmlElementRef;

    .line 949
    .local v2, "elementRef":Ljavax/xml/bind/annotation/XmlElementRef;
    if-eqz v2, :cond_5

    .line 950
    invoke-interface {v2}, Ljavax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v4

    .line 951
    .restart local v4    # "name":Ljava/lang/String;
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 954
    if-eqz p1, :cond_5

    .line 955
    const-class v7, Ljavax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ljavax/xml/bind/annotation/XmlRootElement;

    .line 956
    .local v5, "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v5, :cond_5

    .line 957
    invoke-interface {v5}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v4

    .line 958
    const-string v7, "##default"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 961
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 966
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    :cond_5
    const-class v7, Ljavax/xml/bind/annotation/XmlValue;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlValue;

    .line 967
    .local v6, "valueInfo":Ljavax/xml/bind/annotation/XmlValue;
    if-eqz v6, :cond_6

    .line 968
    const-string v4, "value"

    goto :goto_0

    .line 971
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findRootElementAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljavax/xml/bind/annotation/XmlRootElement;
    .locals 6
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x1

    .line 977
    const-class v1, Ljavax/xml/bind/annotation/XmlRootElement;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlRootElement;

    return-object v0
.end method

.method private isDataHandler(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    const-string v0, "javax.activation.DataHandler"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIndexedType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 12
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    const/4 v3, 0x1

    .line 791
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, v8, v10

    .line 792
    .local v7, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    :goto_1
    return v3

    .line 791
    .restart local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 796
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    sget-object v6, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 797
    .local v6, "accessType":Ljavax/xml/bind/annotation/XmlAccessType;
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/XmlAccessorType;

    .line 798
    .local v9, "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    if-eqz v9, :cond_3

    .line 799
    invoke-interface {v9}, Ljavax/xml/bind/annotation/XmlAccessorType;->value()Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v6

    .line 801
    :cond_3
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;

    if-eq v6, v0, :cond_0

    .line 804
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    if-ne v6, v0, :cond_4

    .line 805
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    goto :goto_1

    .line 807
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 12
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    const/4 v3, 0x1

    .line 813
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v7, v8, v10

    .line 814
    .local v7, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_1
    return v3

    .line 813
    .restart local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 818
    .end local v7    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    sget-object v6, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 819
    .local v6, "accessType":Ljavax/xml/bind/annotation/XmlAccessType;
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/XmlAccessorType;

    .line 820
    .local v9, "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    if-eqz v9, :cond_2

    .line 821
    invoke-interface {v9}, Ljavax/xml/bind/annotation/XmlAccessorType;->value()Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v6

    .line 823
    :cond_2
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PROPERTY:Ljavax/xml/bind/annotation/XmlAccessType;

    if-eq v6, v0, :cond_3

    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    if-ne v6, v0, :cond_4

    .line 824
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    goto :goto_1

    .line 826
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected _doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 695
    const-class v0, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v9

    .line 719
    :cond_0
    :goto_0
    return-object v8

    .line 702
    :cond_1
    const-class v1, Ljavax/xml/bind/annotation/XmlElement;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlElement;

    .line 703
    .local v7, "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v7, :cond_2

    .line 704
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v8

    .line 705
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-ne v8, v0, :cond_0

    .line 712
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    instance-of v0, p1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    move-object v6, p1

    .line 713
    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 714
    .local v6, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    const-class v0, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findFieldAnnotation(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .end local v7    # "annotation":Ljavax/xml/bind/annotation/XmlElement;
    check-cast v7, Ljavax/xml/bind/annotation/XmlElement;

    .line 715
    .restart local v7    # "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-eq v0, v1, :cond_3

    .line 716
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .end local v6    # "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    :cond_3
    move-object v8, v9

    .line 719
    goto :goto_0
.end method

.method protected _typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 10
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 314
    const-class v1, Ljavax/xml/bind/annotation/XmlElements;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljavax/xml/bind/annotation/XmlElements;

    .line 315
    .local v8, "elems":Ljavax/xml/bind/annotation/XmlElements;
    const-class v1, Ljavax/xml/bind/annotation/XmlElementRefs;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlElementRefs;

    .line 316
    .local v7, "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    if-nez v8, :cond_0

    if-nez v7, :cond_0

    move-object v6, v9

    .line 325
    :goto_0
    return-object v6

    .line 320
    :cond_0
    new-instance v6, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v6}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 322
    .local v6, "b":Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;, "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder<*>;"
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-interface {v6, v0, v9}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->init(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v6

    .line 324
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->WRAPPER_OBJECT:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-interface {v6, v0}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->inclusion(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v6

    .line 325
    goto :goto_0
.end method

.method protected findAccessType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljavax/xml/bind/annotation/XmlAccessType;
    .locals 7
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    const/4 v3, 0x1

    .line 265
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlAccessorType;

    .line 266
    .local v6, "at":Ljavax/xml/bind/annotation/XmlAccessorType;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlAccessorType;->value()Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v0

    goto :goto_0
.end method

.method protected findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p2, "annotated"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p3, "includePackage"    # Z
    .param p4, "includeClass"    # Z
    .param p5, "includeSuperclasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "ZZZ)TA;"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p2, p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 845
    .local v1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v1, :cond_0

    move-object v5, v1

    .line 889
    .end local p2    # "annotated":Lorg/codehaus/jackson/map/introspect/Annotated;
    :goto_0
    return-object v5

    .line 848
    .restart local p2    # "annotated":Lorg/codehaus/jackson/map/introspect/Annotated;
    :cond_0
    const/4 v2, 0x0

    .line 853
    .local v2, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v5, p2, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    if-eqz v5, :cond_2

    .line 854
    check-cast p2, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .end local p2    # "annotated":Lorg/codehaus/jackson/map/introspect/Annotated;
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 871
    :cond_1
    :goto_1
    if-eqz v2, :cond_7

    .line 872
    if-eqz p5, :cond_6

    .line 873
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 874
    .local v4, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v4, :cond_6

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_6

    .line 875
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 876
    if-eqz v1, :cond_5

    move-object v5, v1

    .line 877
    goto :goto_0

    .line 856
    .end local v4    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "annotated":Lorg/codehaus/jackson/map/introspect/Annotated;
    :cond_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    .line 857
    .local v0, "annType":Ljava/lang/reflect/AnnotatedElement;
    instance-of v5, v0, Ljava/lang/reflect/Member;

    if-eqz v5, :cond_3

    .line 858
    check-cast v0, Ljava/lang/reflect/Member;

    .end local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 859
    if-eqz p4, :cond_1

    .line 860
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 861
    if-eqz v1, :cond_1

    move-object v5, v1

    .line 862
    goto :goto_0

    .line 865
    .restart local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    :cond_3
    instance-of v5, v0, Ljava/lang/Class;

    if-eqz v5, :cond_4

    move-object v2, v0

    .line 866
    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    .line 868
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported annotated member: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 879
    .end local v0    # "annType":Ljava/lang/reflect/AnnotatedElement;
    .end local p2    # "annotated":Lorg/codehaus/jackson/map/introspect/Annotated;
    .restart local v4    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    .line 882
    .end local v4    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-eqz p3, :cond_7

    .line 883
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 884
    .local v3, "pkg":Ljava/lang/Package;
    if-eqz v3, :cond_7

    .line 885
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    goto :goto_0

    .line 889
    .end local v3    # "pkg":Ljava/lang/Package;
    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public findAutoDetectVisibility(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 3
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
    .line 216
    .local p2, "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAccessType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljavax/xml/bind/annotation/XmlAccessType;

    move-result-object v0

    .line 217
    .local v0, "at":Ljavax/xml/bind/annotation/XmlAccessType;
    if-nez v0, :cond_0

    .line 254
    .end local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :goto_0
    return-object p2

    .line 228
    .restart local p2    # "checker":Lorg/codehaus/jackson/map/introspect/VisibilityChecker;, "Lorg/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$1;->$SwitchMap$javax$xml$bind$annotation$XmlAccessType:[I

    invoke-virtual {v0}, Ljavax/xml/bind/annotation/XmlAccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 236
    :pswitch_1
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 242
    :pswitch_2
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 248
    :pswitch_3
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {p2, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withIsGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 153
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    .line 154
    .local v0, "ann":Lorg/codehaus/jackson/map/annotate/JsonCachable;
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lorg/codehaus/jackson/map/annotate/JsonCachable;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    :goto_0
    return-object v1

    .line 155
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 157
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findContentDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-object v0

    .line 755
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    .line 686
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
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
    .line 674
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    .line 664
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_doFindDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 622
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 623
    .local v0, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 624
    new-instance v2, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/xc/XmlAdapterJsonDeserializer;-><init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 637
    :goto_0
    return-object v2

    .line 630
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 631
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 632
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_0

    .line 637
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 584
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "enumValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Ljavax/xml/bind/annotation/XmlEnumValue;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/annotation/XmlEnumValue;

    .line 587
    .local v3, "xmlEnumValue":Ljavax/xml/bind/annotation/XmlEnumValue;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljavax/xml/bind/annotation/XmlEnumValue;->value()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "enumValue":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 588
    .end local v3    # "xmlEnumValue":Ljavax/xml/bind/annotation/XmlEnumValue;
    .restart local v2    # "enumValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e1":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not locate Enum entry \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (Enum class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 564
    :cond_0
    :goto_0
    return-object v0

    .line 560
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForGetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeyDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
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
    .line 301
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
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

    .line 304
    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyNameForParam(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .prologue
    .line 773
    const/4 v0, 0x0

    return-object v0
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
    .line 290
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_typeResolverFromXmlElements(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public findRootName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 3
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findRootElementAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljavax/xml/bind/annotation/XmlRootElement;

    move-result-object v0

    .line 164
    .local v0, "elem":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "name":Ljava/lang/String;
    const-string v2, "##default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .line 169
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2
    .param p1, "af"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    const/4 v0, 0x0

    .line 602
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-object v0

    .line 605
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 3
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .param p2, "defValue"    # Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .prologue
    .line 493
    const-class v2, Ljavax/xml/bind/annotation/XmlElementWrapper;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlElementWrapper;

    .line 494
    .local v1, "w":Ljavax/xml/bind/annotation/XmlElementWrapper;
    if-eqz v1, :cond_1

    .line 495
    invoke-interface {v1}, Ljavax/xml/bind/annotation/XmlElementWrapper;->nillable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 504
    :goto_0
    return-object v2

    .line 495
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    .line 497
    :cond_1
    const-class v2, Ljavax/xml/bind/annotation/XmlElement;

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/annotation/XmlElement;

    .line 498
    .local v0, "e":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v0, :cond_3

    .line 499
    invoke-interface {v0}, Ljavax/xml/bind/annotation/XmlElement;->nillable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_0

    :cond_3
    move-object v2, p2

    .line 504
    goto :goto_0
.end method

.method public findSerializationPropertyOrder(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 9
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 530
    const-class v1, Ljavax/xml/bind/annotation/XmlType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlType;

    .line 531
    .local v7, "type":Ljavax/xml/bind/annotation/XmlType;
    if-nez v7, :cond_1

    move-object v6, v8

    .line 538
    :cond_0
    :goto_0
    return-object v6

    .line 534
    :cond_1
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlType;->propOrder()[Ljava/lang/String;

    move-result-object v6

    .line 535
    .local v6, "order":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v0, v6

    if-nez v0, :cond_0

    :cond_2
    move-object v6, v8

    .line 536
    goto :goto_0
.end method

.method public findSerializationSortAlphabetically(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x1

    .line 544
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessorOrder;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ljavax/xml/bind/annotation/XmlAccessorOrder;

    .line 545
    .local v6, "order":Ljavax/xml/bind/annotation/XmlAccessorOrder;
    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Ljavax/xml/bind/annotation/XmlAccessorOrder;->value()Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-result-object v0

    sget-object v1, Ljavax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Ljavax/xml/bind/annotation/XmlAccessOrder;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 10
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;
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
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 458
    const-class v1, Ljavax/xml/bind/annotation/XmlElement;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlElement;

    .line 459
    .local v7, "annotation":Ljavax/xml/bind/annotation/XmlElement;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/xml/bind/annotation/XmlElement$DEFAULT;

    if-ne v0, v1, :cond_2

    :cond_0
    move-object v6, v9

    .line 482
    :cond_1
    :goto_0
    return-object v6

    .line 467
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v8

    .line 468
    .local v8, "rawPropType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v8}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isIndexedType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v6, v9

    .line 469
    goto :goto_0

    .line 478
    :cond_3
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v6

    .line 479
    .local v6, "allegedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v6, v9

    .line 480
    goto :goto_0
.end method

.method public findSerializationTyping(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .param p1, "a"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationViews(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
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
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 423
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAdapter(Lorg/codehaus/jackson/map/introspect/Annotated;Z)Ljavax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 424
    .local v0, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "Ljavax/xml/bind/annotation/adapters/XmlAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 425
    new-instance v2, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/xc/XmlAdapterJsonSerializer;-><init>(Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 434
    :goto_0
    return-object v2

    .line 428
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 429
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 430
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isDataHandler(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_dataHandlerSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_0

    .line 434
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->isVisible(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 730
    :goto_0
    return-object v0

    .line 728
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v1

    .line 729
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public findSubtypes(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 17
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
    .line 332
    const-class v1, Ljavax/xml/bind/annotation/XmlElements;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Ljavax/xml/bind/annotation/XmlElements;

    .line 333
    .local v10, "elems":Ljavax/xml/bind/annotation/XmlElements;
    if-eqz v10, :cond_1

    .line 334
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v10}, Ljavax/xml/bind/annotation/XmlElements;->value()[Ljavax/xml/bind/annotation/XmlElement;

    move-result-object v6

    .local v6, "arr$":[Ljavax/xml/bind/annotation/XmlElement;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_8

    aget-object v7, v6, v11

    .line 336
    .local v7, "elem":Ljavax/xml/bind/annotation/XmlElement;
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->name()Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "name":Ljava/lang/String;
    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x0

    .line 338
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlElement;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 343
    .end local v6    # "arr$":[Ljavax/xml/bind/annotation/XmlElement;
    .end local v7    # "elem":Ljavax/xml/bind/annotation/XmlElement;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    :cond_1
    const-class v1, Ljavax/xml/bind/annotation/XmlElementRefs;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Ljavax/xml/bind/annotation/XmlElementRefs;

    .line 344
    .local v9, "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    if-eqz v9, :cond_7

    .line 345
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    invoke-interface {v9}, Ljavax/xml/bind/annotation/XmlElementRefs;->value()[Ljavax/xml/bind/annotation/XmlElementRef;

    move-result-object v6

    .local v6, "arr$":[Ljavax/xml/bind/annotation/XmlElementRef;
    array-length v12, v6

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v12, :cond_8

    aget-object v8, v6, v11

    .line 347
    .local v8, "elemRef":Ljavax/xml/bind/annotation/XmlElementRef;
    invoke-interface {v8}, Ljavax/xml/bind/annotation/XmlElementRef;->type()Ljava/lang/Class;

    move-result-object v14

    .line 349
    .local v14, "refType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/bind/JAXBElement;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 351
    invoke-interface {v8}, Ljavax/xml/bind/annotation/XmlElementRef;->name()Ljava/lang/String;

    move-result-object v13

    .line 352
    .restart local v13    # "name":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    :cond_2
    const-class v0, Ljavax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Ljavax/xml/bind/annotation/XmlRootElement;

    .line 354
    .local v16, "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    if-eqz v16, :cond_3

    .line 355
    invoke-interface/range {v16 .. v16}, Ljavax/xml/bind/annotation/XmlRootElement;->name()Ljava/lang/String;

    move-result-object v13

    .line 358
    .end local v16    # "rootElement":Ljavax/xml/bind/annotation/XmlRootElement;
    :cond_3
    if-eqz v13, :cond_4

    const-string v0, "##default"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 361
    :cond_5
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-direct {v0, v14, v13}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v13    # "name":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 367
    .end local v6    # "arr$":[Ljavax/xml/bind/annotation/XmlElementRef;
    .end local v8    # "elemRef":Ljavax/xml/bind/annotation/XmlElementRef;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "refType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/jsontype/NamedType;>;"
    :cond_7
    const/4 v15, 0x0

    .end local v9    # "elemRefs":Ljavax/xml/bind/annotation/XmlElementRefs;
    :cond_8
    return-object v15
.end method

.method public findTypeName(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 8
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    const/4 v3, 0x0

    .line 372
    const-class v1, Ljavax/xml/bind/annotation/XmlType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findAnnotation(Ljava/lang/Class;Lorg/codehaus/jackson/map/introspect/Annotated;ZZZ)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavax/xml/bind/annotation/XmlType;

    .line 373
    .local v7, "type":Ljavax/xml/bind/annotation/XmlType;
    if-eqz v7, :cond_0

    .line 374
    invoke-interface {v7}, Ljavax/xml/bind/annotation/XmlType;->name()Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "name":Ljava/lang/String;
    const-string v0, "##default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    .end local v6    # "name":Ljava/lang/String;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

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
    .line 280
    .local p1, "config":Lorg/codehaus/jackson/map/MapperConfig;, "Lorg/codehaus/jackson/map/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1
    .param p1, "am"    # Lorg/codehaus/jackson/map/introspect/Annotated;

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public hasIgnoreMarker(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 203
    const-class v0, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 5
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 128
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 129
    .local v1, "pkg":Ljava/lang/Package;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->_jaxbPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_0
    :goto_1
    return v3

    .line 129
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 134
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    const-class v4, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    if-eq v0, v4, :cond_0

    .line 137
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isIgnorableConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .param p1, "c"    # Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 411
    const-class v0, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 389
    const-class v0, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableType(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
