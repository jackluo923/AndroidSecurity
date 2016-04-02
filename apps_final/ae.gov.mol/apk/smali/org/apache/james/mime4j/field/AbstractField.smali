.class public abstract Lorg/apache/james/mime4j/field/AbstractField;
.super Ljava/lang/Object;
.source "AbstractField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/ParsedField;


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;


# instance fields
.field private final body:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final raw:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "^([\\x21-\\x39\\x3b-\\x7e]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    new-instance v0, Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/apache/james/mime4j/field/AbstractField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 48
    return-void
.end method

.method public static getParser()Lorg/apache/james/mime4j/field/DefaultFieldParser;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 2
    .param p0, "rawStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 90
    .local v0, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 2
    .param p0, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "rawStr":Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v1

    return-object v1
.end method

.method private static parse(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 7
    .param p0, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p1, "rawStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 155
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "unfolded":Ljava/lang/String;
    sget-object v4, Lorg/apache/james/mime4j/field/AbstractField;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 161
    .local v1, "fieldMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    new-instance v4, Lorg/apache/james/mime4j/MimeException;

    const-string v5, "Invalid field in string"

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/AbstractField;->parser:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    invoke-virtual {v4, v2, v0, p0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public isValidField()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AbstractField;->getParseException()Lorg/apache/james/mime4j/field/ParseException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
