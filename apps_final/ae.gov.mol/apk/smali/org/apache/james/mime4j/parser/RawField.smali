.class Lorg/apache/james/mime4j/parser/RawField;
.super Ljava/lang/Object;
.source "RawField.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/Field;


# instance fields
.field private body:Ljava/lang/String;

.field private colonIdx:I

.field private name:Ljava/lang/String;

.field private final raw:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V
    .locals 0
    .param p1, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "colonIdx"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 38
    iput p2, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    .line 39
    return-void
.end method

.method private parseBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    iget v2, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    add-int/lit8 v1, v2, 0x1

    .line 72
    .local v1, "offset":I
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-interface {v2}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 73
    .local v0, "length":I
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v2, v1, v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    invoke-static {v0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->parseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->parseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
