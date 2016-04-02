.class public Lorg/apache/james/mime4j/field/DefaultFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.source "DefaultFieldParser.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>()V

    .line 25
    const-string v4, "Content-Transfer-Encoding"

    sget-object v5, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v4, v5}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 27
    const-string v4, "Content-Type"

    sget-object v5, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v4, v5}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 28
    const-string v4, "Content-Disposition"

    sget-object v5, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v4, v5}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 31
    sget-object v1, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    .line 32
    .local v1, "dateTimeParser":Lorg/apache/james/mime4j/field/FieldParser;
    const-string v4, "Date"

    invoke-virtual {p0, v4, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 33
    const-string v4, "Resent-Date"

    invoke-virtual {p0, v4, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 35
    sget-object v2, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    .line 36
    .local v2, "mailboxListParser":Lorg/apache/james/mime4j/field/FieldParser;
    const-string v4, "From"

    invoke-virtual {p0, v4, v2}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 37
    const-string v4, "Resent-From"

    invoke-virtual {p0, v4, v2}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 39
    sget-object v3, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    .line 40
    .local v3, "mailboxParser":Lorg/apache/james/mime4j/field/FieldParser;
    const-string v4, "Sender"

    invoke-virtual {p0, v4, v3}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 41
    const-string v4, "Resent-Sender"

    invoke-virtual {p0, v4, v3}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 43
    sget-object v0, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    .line 44
    .local v0, "addressListParser":Lorg/apache/james/mime4j/field/FieldParser;
    const-string v4, "To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 45
    const-string v4, "Resent-To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 46
    const-string v4, "Cc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 47
    const-string v4, "Resent-Cc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 48
    const-string v4, "Bcc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 49
    const-string v4, "Resent-Bcc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 50
    const-string v4, "Reply-To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 51
    return-void
.end method
