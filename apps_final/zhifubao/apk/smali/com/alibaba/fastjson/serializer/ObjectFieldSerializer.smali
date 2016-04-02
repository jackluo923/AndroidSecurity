.class public Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;
.super Lcom/alibaba/fastjson/serializer/FieldSerializer;


# instance fields
.field private format:Ljava/lang/String;

.field private runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

.field writeEnumUsingToString:Z

.field writeNullBooleanAsFalse:Z

.field writeNullListAsEmpty:Z

.field writeNullStringAsEmpty:Z

.field writeNumberAsZero:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_6

    aget-object v1, v2, v0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_2

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_3

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_4

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_5

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v4, :cond_1

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    new-instance v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    if-nez p2, :cond_7

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    if-eqz v1, :cond_3

    const-class v1, Ljava/lang/Number;

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    if-eqz v1, :cond_4

    const-class v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string/jumbo v1, "\"\""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    if-eqz v1, :cond_5

    const-class v1, Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    if-eqz v1, :cond_6

    const-class v1, Ljava/util/Collection;

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v3, v1, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method
