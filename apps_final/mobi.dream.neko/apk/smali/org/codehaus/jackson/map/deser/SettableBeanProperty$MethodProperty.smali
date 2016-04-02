.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodProperty"
.end annotation


# instance fields
.field protected final _annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p3, "typeDeser"    # Lorg/codehaus/jackson/map/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lorg/codehaus/jackson/map/util/Annotations;
    .param p5, "method"    # Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 375
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 376
    invoke-virtual {p5}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 377
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 381
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 382
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 383
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .param p1, "x0"    # Lorg/codehaus/jackson/map/JsonDeserializer;

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    move-result-object v0

    return-object v0
.end method
