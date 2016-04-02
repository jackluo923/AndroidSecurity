.class public Lorg/apache/james/mime4j/field/ContentDispositionField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionField.java"


# static fields
.field public static final DISPOSITION_TYPE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final DISPOSITION_TYPE_INLINE:Ljava/lang/String; = "inline"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private creationDate:Ljava/util/Date;

.field private creationDateParsed:Z

.field private dispositionType:Ljava/lang/String;

.field private modificationDate:Ljava/util/Date;

.field private modificationDateParsed:Z

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/ParseException;

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    .line 320
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    .line 81
    return-void
.end method

.method private parse()V
    .locals 13

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "body":Ljava/lang/String;
    new-instance v9, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/Reader;)V

    .line 286
    .local v9, "parser":Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    :goto_0
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getDispositionType()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "dispositionType":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 302
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    .line 304
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamNames()Ljava/util/List;

    move-result-object v6

    .line 305
    .local v6, "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamValues()Ljava/util/List;

    move-result-object v8

    .line 307
    .local v8, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    .line 308
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 309
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 310
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "paramName":Ljava/lang/String;
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 312
    .local v7, "paramValue":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-interface {v10, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "dispositionType":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "paramName":Ljava/lang/String;
    .end local v6    # "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "paramValue":Ljava/lang/String;
    .end local v8    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Lorg/apache/james/mime4j/field/ParseException;
    sget-object v10, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 289
    sget-object v10, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsing value \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_0
    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    goto :goto_0

    .line 292
    .end local v2    # "e":Lorg/apache/james/mime4j/field/ParseException;
    :catch_1
    move-exception v2

    .line 293
    .local v2, "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;
    sget-object v10, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 294
    sget-object v10, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsing value \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 296
    :cond_1
    new-instance v10, Lorg/apache/james/mime4j/field/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    goto/16 :goto_0

    .line 317
    .end local v2    # "e":Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;
    .restart local v1    # "dispositionType":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    .line 318
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 256
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 276
    :cond_0
    :goto_0
    return-object v2

    .line 263
    :cond_1
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/apache/james/mime4j/field/ParseException;
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    .end local v0    # "e":Lorg/apache/james/mime4j/field/ParseException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    sget-object v3, Lorg/apache/james/mime4j/field/ContentDispositionField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDateParsed:Z

    if-nez v0, :cond_0

    .line 195
    const-string v0, "creation-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDate:Ljava/util/Date;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDateParsed:Z

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "filename"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDateParsed:Z

    if-nez v0, :cond_0

    .line 211
    const-string v0, "modification-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDate:Ljava/util/Date;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDateParsed:Z

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseException:Lorg/apache/james/mime4j/field/ParseException;

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDateParsed:Z

    if-nez v0, :cond_0

    .line 227
    const-string v0, "read-date"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDate:Ljava/util/Date;

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDateParsed:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 241
    const-string v6, "size"

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 249
    :goto_0
    return-wide v4

    .line 246
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 247
    .local v1, "size":J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_1

    move-wide v1, v4

    .end local v1    # "size":J
    :cond_1
    move-wide v4, v1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public isAttachment()Z
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dispositionType"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->parsed:Z

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->parse()V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionField;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
