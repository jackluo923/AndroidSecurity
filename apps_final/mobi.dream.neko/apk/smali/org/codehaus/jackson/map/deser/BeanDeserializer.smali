.class public Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "BeanDeserializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonCachable;
.end annotation


# instance fields
.field protected _anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected final _backRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

.field protected final _beanType:Lorg/codehaus/jackson/type/JavaType;

.field protected _delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

.field protected final _forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _ignoreAllUnknown:Z

.field protected final _injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

.field protected _nonStandardCreation:Z

.field protected final _property:Lorg/codehaus/jackson/map/BeanProperty;

.field protected final _propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

.field protected _subDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

.field protected final _valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/BeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 11
    .param p1, "beanDesc"    # Lorg/codehaus/jackson/map/BeanDescription;
    .param p2, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p3, "valueInstantiator"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .param p4, "properties"    # Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
    .param p7, "ignoreAllUnknown"    # Z
    .param p8, "anySetter"    # Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p5, "backRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    .local p6, "ignorableProps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p9, "injectables":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/deser/impl/ValueInjector;>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/BeanDescription;->getClassInfo()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/BeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    .line 210
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .prologue
    .line 255
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    .line 256
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    .param p2, "ignoreAllUnknown"    # Z

    .prologue
    .line 263
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 265
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 266
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 267
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 269
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 270
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 271
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 273
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 274
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 275
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 276
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 277
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 278
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 280
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 281
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    .line 282
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 2
    .param p1, "forClass"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p4, "valueInstantiator"    # Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .param p5, "properties"    # Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
    .param p8, "ignoreAllUnknown"    # Z
    .param p9, "anySetter"    # Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "backRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    .local p7, "ignorableProps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p10, "injectables":Ljava/util/List;, "Ljava/util/List<Lorg/codehaus/jackson/map/deser/impl/ValueInjector;>;"
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 222
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 223
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 224
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    .line 226
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 227
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    new-instance v1, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-direct {v1, p4}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;-><init>(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 233
    :goto_0
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 234
    iput-object p6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 235
    iput-object p7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 236
    iput-boolean p8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 237
    iput-object p9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 238
    if-eqz p10, :cond_0

    invoke-interface {p10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 241
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 245
    return-void

    .line 230
    :cond_2
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    invoke-interface {p10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    goto :goto_1

    .line 241
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 11
    .param p1, "forClass"    # Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .param p4, "creators"    # Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
    .param p5, "properties"    # Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
    .param p8, "ignoreAllUnknown"    # Z
    .param p9, "anySetter"    # Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    .local p6, "backRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    .local p7, "ignorableProps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v4

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/ValueInstantiator;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    .line 194
    return-void
.end method

.method private final _handleUnknown(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 727
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_1

    .line 719
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, p4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_0

    .line 725
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final _deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 891
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 892
    .local v2, "creator":Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 895
    .local v1, "buffer":Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    const/4 v8, 0x0

    .line 897
    .local v8, "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    .line 898
    .local v7, "t":Lorg/codehaus/jackson/JsonToken;
    :goto_0
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v11, :cond_9

    .line 899
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 902
    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 903
    .local v3, "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v3, :cond_4

    .line 905
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .line 906
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v11

    invoke-virtual {v1, v11, v9}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 907
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 910
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 916
    .local v0, "bean":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 917
    invoke-virtual {p0, p1, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 969
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v0

    .line 911
    .restart local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 912
    .local v4, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v4, v11, v6, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 898
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    goto :goto_0

    .line 919
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v8, :cond_3

    .line 920
    invoke-virtual {p0, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 928
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v11, v6}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 929
    .local v5, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v5, :cond_5

    .line 930
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 936
    :cond_5
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 937
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 941
    :cond_6
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v11, :cond_7

    .line 942
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v12, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v6, v12}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 946
    :cond_7
    if-nez v8, :cond_8

    .line 947
    new-instance v8, Lorg/codehaus/jackson/util/TokenBuffer;

    .end local v8    # "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 949
    .restart local v8    # "unknown":Lorg/codehaus/jackson/util/TokenBuffer;
    :cond_8
    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 956
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_9
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 961
    .restart local v0    # "bean":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 963
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    if-eq v11, v12, :cond_a

    .line 964
    invoke-virtual {p0, v10, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 957
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 958
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    move-object v0, v10

    .line 959
    goto :goto_1

    .line 967
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "bean":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected _findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 7
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/util/TokenBuffer;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 1402
    .local v1, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0

    .line 1403
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 1424
    .end local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .local v2, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_1
    return-object v2

    .line 1401
    .end local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v5, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v1, v4

    goto :goto_0

    .line 1402
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1407
    .restart local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v0

    .line 1408
    .local v0, "deserProv":Lorg/codehaus/jackson/map/DeserializerProvider;
    if-eqz v0, :cond_3

    .line 1409
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/DeserializationContext;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 1413
    .local v3, "type":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v0, v4, v3, v5}, Lorg/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 1415
    if-eqz v1, :cond_3

    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 1418
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    .line 1420
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v5, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    monitor-exit p0

    .end local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    :cond_3
    move-object v2, v1

    .line 1424
    .end local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_1

    .line 1421
    .end local v2    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v3    # "type":Lorg/codehaus/jackson/type/JavaType;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method protected _resolveInnerClassValuedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 12
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "prop"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 538
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    .line 540
    .local v3, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    instance-of v10, v3, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v10, :cond_1

    move-object v1, v3

    .line 541
    check-cast v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .line 542
    .local v1, "bd":Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getValueInstantiator()Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v9

    .line 543
    .local v9, "vi":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v10

    if-nez v10, :cond_1

    .line 544
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 545
    .local v8, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v8}, Lorg/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 547
    .local v4, "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1

    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v4, v10, :cond_1

    .line 548
    invoke-virtual {v8}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 549
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 550
    .local v7, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    aget-object v10, v7, v10

    if-ne v10, v4, :cond_2

    .line 551
    sget-object v10, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v10}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 552
    invoke-static {v2}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 554
    :cond_0
    new-instance v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    invoke-direct {v10, p2, v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V

    move-object p2, v10

    .line 560
    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "bd":Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "vi":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .end local p2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_1
    return-object p2

    .line 548
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "bd":Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    .restart local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "enclosing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "vi":Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .restart local p2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected _resolveManagedReferenceProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 10
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "prop"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 464
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "refName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 501
    .end local p2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :goto_0
    return-object p2

    .line 468
    .restart local p2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v9

    .line 469
    .local v9, "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v3, 0x0

    .line 470
    .local v3, "backProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    const/4 v5, 0x0

    .line 471
    .local v5, "isContainer":Z
    instance-of v0, v9, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v0, :cond_1

    .line 472
    check-cast v9, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v9    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual {v9, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 489
    :goto_1
    if-nez v3, :cond_5

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': no back reference property found from type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    .restart local v9    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_1
    instance-of v0, v9, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    if-eqz v0, :cond_3

    .line 474
    check-cast v9, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    .end local v9    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual {v9}, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;->getContentDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v7

    .line 475
    .local v7, "contentDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    instance-of v0, v7, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-nez v0, :cond_2

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (instead it\'s of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    check-cast v7, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .end local v7    # "contentDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 481
    const/4 v5, 0x1

    .line 482
    goto :goto_1

    .restart local v9    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_3
    instance-of v0, v9, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    if-eqz v0, :cond_4

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference for abstract types (property "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    .end local v9    # "valueDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<*>;"
    :cond_5
    iget-object v8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    .line 495
    .local v8, "referredType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 496
    .local v6, "backRefType":Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle managed/back reference \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\': back reference type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") not compatible with managed type ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_6
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V

    move-object p2, v0

    goto/16 :goto_0
.end method

.method protected _resolveUnwrappedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 5
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "prop"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 514
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    .line 515
    .local v0, "am":Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    .line 516
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 517
    .local v1, "orig":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->unwrappingDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 518
    .local v2, "unwrapping":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eq v2, v1, :cond_0

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 523
    .end local v1    # "orig":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v2    # "unwrapping":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 578
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 580
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 600
    :goto_0
    return-object v1

    .line 583
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 602
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 585
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 587
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromDouble(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 591
    :pswitch_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 594
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromBoolean(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 597
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 600
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v4, :cond_2

    .line 618
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 655
    .end local p3    # "bean":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p3

    .line 620
    .restart local p3    # "bean":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v4, :cond_3

    .line 621
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 623
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 625
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_4

    .line 626
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 628
    :cond_4
    :goto_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 629
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 632
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 634
    .local v1, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v1, :cond_5

    .line 636
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 646
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 647
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_7

    .line 648
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 652
    :cond_7
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deserializeFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 866
    :try_start_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    .local v0, "bean":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v2, :cond_0

    .line 868
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_0
    return-object v0

    .line 871
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 872
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 875
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method public deserializeFromBoolean(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v2

    if-nez v2, :cond_1

    .line 847
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 848
    .local v0, "bean":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 855
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 854
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 855
    .local v1, "value":Z
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 854
    .end local v1    # "value":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public deserializeFromDouble(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 815
    sget-object v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 830
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 818
    :pswitch_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 821
    .local v0, "bean":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 827
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromDouble(D)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no suitable creator method found to deserialize from JSON floating-point number"

    invoke-virtual {p2, v1, v2}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 815
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deserializeFromNumber(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 771
    sget-object v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 796
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_3

    .line 797
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    .local v0, "bean":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 801
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 773
    :pswitch_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 775
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    .restart local v0    # "bean":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromInt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 784
    :pswitch_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_2

    .line 785
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 786
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    .restart local v0    # "bean":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 788
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 793
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromLong(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no suitable creator method found to deserialize from JSON integer number"

    invoke-virtual {p2, v1, v2}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deserializeFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 676
    iget-boolean v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    if-eqz v4, :cond_3

    .line 677
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v4, :cond_1

    .line 678
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 705
    :cond_0
    :goto_0
    return-object v0

    .line 680
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v4, :cond_2

    .line 681
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObjectUsingNonDefault(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 686
    :cond_3
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    .line 687
    .local v0, "bean":Ljava/lang/Object;
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v4, :cond_4

    .line 688
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 690
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_0

    .line 691
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 694
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 695
    .local v2, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v2, :cond_5

    .line 697
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 703
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_handleUnknown(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected deserializeFromObjectUsingNonDefault(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    .line 738
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_deserializeUsingPropertyBased(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 746
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No suitable constructor found for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeFromString(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v1, :cond_1

    .line 757
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 759
    .local v0, "bean":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 765
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v5

    .line 1257
    .local v5, "ext":Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1258
    .local v2, "creator":Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 1260
    .local v1, "buffer":Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    new-instance v9, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1261
    .local v9, "tokens":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v9}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1263
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 1264
    .local v8, "t":Lorg/codehaus/jackson/JsonToken;
    :goto_0
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v11, :cond_6

    .line 1265
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 1266
    .local v7, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1268
    invoke-virtual {v2, v7}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 1269
    .local v3, "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v3, :cond_3

    .line 1271
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    .line 1272
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v11

    invoke-virtual {v1, v11, v10}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1273
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    .line 1276
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1282
    .local v0, "bean":Ljava/lang/Object;
    :goto_1
    sget-object v11, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v11, :cond_1

    .line 1283
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1284
    invoke-virtual {v9, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1285
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_1

    .line 1277
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1278
    .local v4, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v4, v11, v7, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1264
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_0

    .line 1287
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v12}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    if-eq v11, v12, :cond_2

    .line 1290
    const-string v11, "Can not create polymorphic instances with unwrapped values"

    invoke-virtual {p2, v11}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v11

    throw v11

    .line 1292
    :cond_2
    invoke-virtual {v5, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1327
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v7    # "propName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :goto_3
    return-object v11

    .line 1297
    .restart local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v7    # "propName":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v11, v7}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    .line 1298
    .local v6, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v6, :cond_4

    .line 1299
    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1303
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v5, p1, p2, v7, v11}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1309
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1310
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1314
    :cond_5
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v11, :cond_0

    .line 1315
    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v12, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v12, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v7, v12}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1322
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v7    # "propName":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1327
    .restart local v0    # "bean":Ljava/lang/Object;
    invoke-virtual {v5, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    .line 1323
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 1324
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1325
    const/4 v11, 0x0

    goto :goto_3
.end method

.method protected deserializeUsingPropertyBasedWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1119
    .local v2, "creator":Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 1121
    .local v1, "buffer":Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    new-instance v8, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1122
    .local v8, "tokens":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1124
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    .line 1125
    .local v7, "t":Lorg/codehaus/jackson/JsonToken;
    :goto_0
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v10, :cond_6

    .line 1126
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 1127
    .local v6, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1129
    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 1130
    .local v3, "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v3, :cond_3

    .line 1132
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .line 1133
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v10

    invoke-virtual {v1, v10, v9}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1134
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    .line 1137
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1143
    .local v0, "bean":Ljava/lang/Object;
    :goto_1
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v10, :cond_1

    .line 1144
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1145
    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1146
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    goto :goto_1

    .line 1138
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1139
    .local v4, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v10}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p0, v4, v10, v6, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1125
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    goto :goto_0

    .line 1148
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v11}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 1152
    const-string v10, "Can not create polymorphic instances with unwrapped values"

    invoke-virtual {p2, v10}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v10

    throw v10

    .line 1154
    :cond_2
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v10, p1, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v10

    .line 1187
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :goto_3
    return-object v10

    .line 1159
    .restart local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .restart local v6    # "propName":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v10, v6}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 1160
    .local v5, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v5, :cond_4

    .line 1161
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1167
    :cond_4
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1168
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1171
    :cond_5
    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1174
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v10, :cond_0

    .line 1175
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v11, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v11, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v6, v11}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1182
    .end local v3    # "creatorProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v5    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1187
    .restart local v0    # "bean":Ljava/lang/Object;
    iget-object v10, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v10, p1, p2, v0, v8}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 1183
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 1184
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1185
    const/4 v10, 0x0

    goto :goto_3
.end method

.method protected deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected deserializeWithExternalTypeId(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v1

    .line 1211
    .local v1, "ext":Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_5

    .line 1212
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1214
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 1215
    .local v2, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v2, :cond_2

    .line 1217
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonToken;->isScalarValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1218
    invoke-virtual {v1, p1, p2, v3, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleTypePropertyValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1229
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1233
    :cond_3
    invoke-virtual {v1, p1, p2, v3, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1237
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_4

    .line 1239
    :try_start_1
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4, p1, p2, p3, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1240
    :catch_1
    move-exception v0

    .line 1241
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1250
    .end local v2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v3    # "propName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "typeDeserializer"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    if-eqz v5, :cond_0

    .line 1028
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v5, :cond_1

    .line 1031
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v4, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1035
    .local v4, "tokens":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1036
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .local v0, "bean":Ljava/lang/Object;
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v5, :cond_2

    .line 1039
    invoke-virtual {p0, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 1042
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_6

    .line 1043
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1044
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1045
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 1046
    .local v2, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v2, :cond_4

    .line 1048
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1055
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1056
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1060
    :cond_5
    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1063
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_3

    .line 1065
    :try_start_1
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v5, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1066
    :catch_1
    move-exception v1

    .line 1067
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1072
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v3    # "propName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1073
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v5, p1, p2, v0, v4}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected deserializeWithUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 1081
    .local v3, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_0

    .line 1082
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 1084
    :cond_0
    new-instance v4, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 1085
    .local v4, "tokens":Lorg/codehaus/jackson/util/TokenBuffer;
    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1086
    :goto_0
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v5, :cond_4

    .line 1087
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, "propName":Ljava/lang/String;
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 1089
    .local v1, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1090
    if-eqz v1, :cond_2

    .line 1092
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1098
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1099
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1103
    :cond_3
    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 1106
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_1

    .line 1107
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v5, p1, p2, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    .end local v1    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v2    # "propName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1111
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v5, p1, p2, p3, v4}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    .line 1112
    return-object p3
.end method

.method public findBackReference(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "logicalName"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0
.end method

.method public final getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v0

    return v0
.end method

.method public getValueInstantiator()Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    return-object v0
.end method

.method public getValueType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected handlePolymorphic(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 988
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_findSubclassDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    .line 989
    .local v2, "subDeser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 990
    if-eqz p4, :cond_0

    .line 992
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 993
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 994
    .local v1, "p2":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 995
    invoke-virtual {v2, v1, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 998
    .end local v1    # "p2":Lorg/codehaus/jackson/JsonParser;
    :cond_0
    if-eqz p1, :cond_1

    .line 999
    invoke-virtual {v2, p1, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    move-object v0, p3

    .line 1011
    .end local p3    # "bean":Ljava/lang/Object;
    .local v0, "bean":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1004
    .end local v0    # "bean":Ljava/lang/Object;
    .restart local p3    # "bean":Ljava/lang/Object;
    :cond_2
    if-eqz p4, :cond_3

    .line 1005
    invoke-virtual {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p3

    .line 1008
    :cond_3
    if-eqz p1, :cond_4

    .line 1009
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    move-object v0, p3

    .line 1011
    .end local p3    # "bean":Ljava/lang/Object;
    .restart local v0    # "bean":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleUnknownProperties(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "unknownTokens"    # Lorg/codehaus/jackson/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1377
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1380
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 1381
    .local v0, "bufferParser":Lorg/codehaus/jackson/JsonParser;
    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    .line 1382
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1384
    .local v1, "propName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 1385
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1387
    .end local v1    # "propName":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method protected handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "beanOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1357
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 1366
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;->handleUnknownProperty(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected injectValues(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p2, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;

    .local v0, "arr$":[Lorg/codehaus/jackson/map/deser/impl/ValueInjector;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1340
    .local v2, "injector":Lorg/codehaus/jackson/map/deser/impl/ValueInjector;
    invoke-virtual {v2, p1, p2}, Lorg/codehaus/jackson/map/deser/impl/ValueInjector;->inject(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 1339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    .end local v2    # "injector":Lorg/codehaus/jackson/map/deser/impl/ValueInjector;
    :cond_0
    return-void
.end method

.method public properties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only call before BeanDeserializer has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 19
    .param p1, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p2, "provider"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v9

    .line 371
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    const/4 v15, 0x0

    .line 372
    .local v15, "unwrapped":Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
    const/4 v7, 0x0

    .line 374
    .local v7, "extTypes":Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 375
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 376
    .local v10, "origProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    move-object v11, v10

    .line 378
    .local v11, "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v16

    if-nez v16, :cond_1

    .line 379
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v11

    .line 382
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveManagedReferenceProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v11

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveUnwrappedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v14

    .line 385
    .local v14, "u":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    if-eqz v14, :cond_3

    .line 386
    move-object v11, v14

    .line 387
    if-nez v15, :cond_2

    .line 388
    new-instance v15, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    .end local v15    # "unwrapped":Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
    invoke-direct {v15}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;-><init>()V

    .line 390
    .restart local v15    # "unwrapped":Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
    :cond_2
    invoke-virtual {v15, v11}, Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->addProperty(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 393
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_resolveInnerClassValuedProperty(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v11

    .line 394
    if-eq v11, v10, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->replace(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 401
    :cond_4
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 402
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getValueTypeDeserializer()Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v13

    .line 403
    .local v13, "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    invoke-virtual {v13}, Lorg/codehaus/jackson/map/TypeDeserializer;->getTypeInclusion()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v16

    sget-object v17, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 404
    if-nez v7, :cond_5

    .line 405
    new-instance v7, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;

    .end local v7    # "extTypes":Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
    invoke-direct {v7}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;-><init>()V

    .line 407
    .restart local v7    # "extTypes":Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;
    :cond_5
    invoke-virtual {v13}, Lorg/codehaus/jackson/map/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v11, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->remove(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 415
    .end local v10    # "origProp":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v11    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .end local v13    # "typeDeser":Lorg/codehaus/jackson/map/TypeDeserializer;
    .end local v14    # "u":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->hasValueDeserializer()Z

    move-result v16

    if-nez v16, :cond_7

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->getProperty()Lorg/codehaus/jackson/map/BeanProperty;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 420
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    .line 422
    .local v6, "delegateType":Lorg/codehaus/jackson/type/JavaType;
    if-nez v6, :cond_8

    .line 423
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid delegate-creator definition for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": value instantiator ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 427
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 429
    .local v5, "delegateCreator":Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    new-instance v12, Lorg/codehaus/jackson/map/BeanProperty$Std;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v6, v1, v5}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 431
    .local v12, "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6, v12}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 435
    .end local v5    # "delegateCreator":Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .end local v6    # "delegateType":Lorg/codehaus/jackson/type/JavaType;
    .end local v12    # "property":Lorg/codehaus/jackson/map/BeanProperty$Std;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->getCreatorProperties()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 437
    .restart local v11    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v16

    if-nez v16, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->findDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->assignDeserializer(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_1

    .line 443
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "prop":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_b
    if-eqz v7, :cond_c

    .line 444
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->build()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    .line 446
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 449
    :cond_c
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lorg/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    .line 450
    if-eqz v15, :cond_d

    .line 451
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 453
    :cond_d
    return-void
.end method

.method public unwrappingDeserializer()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eq v0, v1, :cond_0

    .line 298
    .end local p0    # "this":Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/codehaus/jackson/map/deser/BeanDeserializer;
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1540
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1479
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1482
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1483
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1485
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1487
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 1488
    if-eqz v0, :cond_3

    instance-of v1, p1, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 1489
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1485
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1491
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 1492
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 1493
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1497
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 1530
    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1453
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1457
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1458
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1460
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1462
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 1463
    if-eqz v0, :cond_3

    instance-of v1, p1, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 1464
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1460
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1466
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 1467
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 1468
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1472
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1504
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1507
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 1508
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1510
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1511
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 1513
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1510
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1514
    .restart local v0    # "wrap":Z
    :cond_4
    if-nez v0, :cond_5

    .line 1515
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 1516
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 1519
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lorg/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method
