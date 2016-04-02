.class public Lorg/apache/james/mime4j/field/MailboxField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/james/mime4j/field/MailboxField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

    .line 78
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    .line 43
    return-void
.end method

.method private parse()V
    .locals 6

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "body":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v2

    .line 65
    .local v2, "mailboxList":Lorg/apache/james/mime4j/field/address/MailboxList;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "mailboxList":Lorg/apache/james/mime4j/field/address/MailboxList;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    .line 76
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    sget-object v3, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    sget-object v3, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 72
    :cond_1
    iput-object v1, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    goto :goto_0
.end method


# virtual methods
.method public getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxField;->parse()V

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxField;->getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxField;->parse()V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
