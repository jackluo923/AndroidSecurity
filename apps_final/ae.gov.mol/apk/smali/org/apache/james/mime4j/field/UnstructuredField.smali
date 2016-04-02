.class public Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "UnstructuredField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private parsed:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    .line 35
    return-void
.end method

.method private parse()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/UnstructuredField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "body":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/UnstructuredField;->parse()V

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    return-object v0
.end method
