.class public final Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# instance fields
.field private final index:I

.field private final list:Ljava/util/List;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
