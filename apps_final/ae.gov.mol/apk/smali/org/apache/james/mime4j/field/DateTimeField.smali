.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    .line 83
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    .line 45
    return-void
.end method

.method private parse()V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    .line 81
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 72
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0

    .line 73
    .end local v1    # "e":Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    :cond_1
    new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
