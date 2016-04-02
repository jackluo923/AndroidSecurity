.class public Lorg/apache/james/mime4j/field/MailboxListField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxListField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/james/mime4j/field/MailboxListField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListField;->log:Lorg/apache/commons/logging/Log;

    .line 74
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxListField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxListField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parsed:Z

    .line 42
    return-void
.end method

.method private parse()V
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxListField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/MailboxListField;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parsed:Z

    .line 72
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    sget-object v2, Lorg/apache/james/mime4j/field/MailboxListField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lorg/apache/james/mime4j/field/MailboxListField;->log:Lorg/apache/commons/logging/Log;

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

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 68
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    goto :goto_0
.end method


# virtual methods
.method public getMailboxList()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parsed:Z

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxListField;->parse()V

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxListField;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxListField;->getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parsed:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxListField;->parse()V

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
