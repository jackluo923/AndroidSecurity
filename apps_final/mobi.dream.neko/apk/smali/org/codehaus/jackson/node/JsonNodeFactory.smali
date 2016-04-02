.class public Lorg/codehaus/jackson/node/JsonNodeFactory;
.super Ljava/lang/Object;
.source "JsonNodeFactory.java"


# static fields
.field public static final instance:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 220
    new-instance v0, Lorg/codehaus/jackson/node/POJONode;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/node/POJONode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public arrayNode()Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public binaryNode([B)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 187
    invoke-static {p1}, Lorg/codehaus/jackson/node/BinaryNode;->valueOf([B)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public binaryNode([BII)Lorg/codehaus/jackson/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 195
    invoke-static {p1, p2, p3}, Lorg/codehaus/jackson/node/BinaryNode;->valueOf([BII)Lorg/codehaus/jackson/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/BooleanNode;->getTrue()Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/node/BooleanNode;->getFalse()Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0
.end method

.method public nullNode()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/codehaus/jackson/node/NullNode;->getInstance()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(B)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # B

    .prologue
    .line 54
    invoke-static {p1}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(D)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 150
    invoke-static {p1, p2}, Lorg/codehaus/jackson/node/DoubleNode;->valueOf(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(F)Lorg/codehaus/jackson/node/NumericNode;
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 132
    float-to-double v0, p1

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/DoubleNode;->valueOf(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(I)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 90
    invoke-static {p1}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(J)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 108
    invoke-static {p1, p2}, Lorg/codehaus/jackson/node/LongNode;->valueOf(J)Lorg/codehaus/jackson/node/LongNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 168
    invoke-static {p1}, Lorg/codehaus/jackson/node/DecimalNode;->valueOf(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/DecimalNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigInteger;

    .prologue
    .line 126
    invoke-static {p1}, Lorg/codehaus/jackson/node/BigIntegerNode;->valueOf(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(S)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 72
    invoke-static {p1}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public numberNode(Ljava/lang/Byte;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Byte;

    .prologue
    .line 65
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Double;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 161
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/DoubleNode;->valueOf(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Float;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 2
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 143
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/DoubleNode;->valueOf(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Integer;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 101
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Long;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 119
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/LongNode;->valueOf(J)Lorg/codehaus/jackson/node/LongNode;

    move-result-object v0

    goto :goto_0
.end method

.method public numberNode(Ljava/lang/Short;)Lorg/codehaus/jackson/node/ValueNode;
    .locals 1
    .param p1, "value"    # Ljava/lang/Short;

    .prologue
    .line 83
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lorg/codehaus/jackson/node/IntNode;->valueOf(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    goto :goto_0
.end method

.method public objectNode()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Lorg/codehaus/jackson/node/TextNode;->valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    return-object v0
.end method
